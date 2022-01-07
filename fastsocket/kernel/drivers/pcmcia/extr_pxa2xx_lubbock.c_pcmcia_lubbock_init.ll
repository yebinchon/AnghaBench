; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_lubbock.c_pcmcia_lubbock_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_lubbock.c_pcmcia_lubbock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@GPIO_A0 = common dso_local global i32 0, align 4
@GPIO_A1 = common dso_local global i32 0, align 4
@GPIO_A2 = common dso_local global i32 0, align 4
@GPIO_A3 = common dso_local global i32 0, align 4
@lubbock_pcmcia_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_lubbock_init(%struct.sa1111_dev* %0) #0 {
  %2 = alloca %struct.sa1111_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %2, align 8
  %4 = load i32, i32* @ENODEV, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = call i64 (...) @machine_is_lubbock()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %10 = load i32, i32* @GPIO_A0, align 4
  %11 = load i32, i32* @GPIO_A1, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GPIO_A2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GPIO_A3, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @sa1111_set_io_dir(%struct.sa1111_dev* %9, i32 %16, i32 0, i32 0)
  %18 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %19 = load i32, i32* @GPIO_A0, align 4
  %20 = load i32, i32* @GPIO_A1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GPIO_A2, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GPIO_A3, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @sa1111_set_io(%struct.sa1111_dev* %18, i32 %25, i32 0)
  %27 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %28 = load i32, i32* @GPIO_A0, align 4
  %29 = load i32, i32* @GPIO_A1, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GPIO_A2, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GPIO_A3, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @sa1111_set_sleep_io(%struct.sa1111_dev* %27, i32 %34, i32 0)
  %36 = call i32 @lubbock_set_misc_wr(i32 49152, i32 0)
  %37 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %38 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* @lubbock_pcmcia_ops, i32** %39, align 8
  %40 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %41 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %40, i32 0, i32 0
  %42 = call i32 @__pxa2xx_drv_pcmcia_probe(%struct.TYPE_2__* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %8, %1
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @machine_is_lubbock(...) #1

declare dso_local i32 @sa1111_set_io_dir(%struct.sa1111_dev*, i32, i32, i32) #1

declare dso_local i32 @sa1111_set_io(%struct.sa1111_dev*, i32, i32) #1

declare dso_local i32 @sa1111_set_sleep_io(%struct.sa1111_dev*, i32, i32) #1

declare dso_local i32 @lubbock_set_misc_wr(i32, i32) #1

declare dso_local i32 @__pxa2xx_drv_pcmcia_probe(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
