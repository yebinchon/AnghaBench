; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_set_fifo_starve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_set_fifo_starve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gfar_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFAR_MAX_FIFO_STARVE = common dso_local global i32 0, align 4
@FIFO_TX_STARVE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gfar_set_fifo_starve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfar_set_fifo_starve(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfar_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_net_dev(%struct.device* %14)
  %16 = call %struct.gfar_private* @netdev_priv(i32 %15)
  store %struct.gfar_private* %16, %struct.gfar_private** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @simple_strtoul(i8* %17, i32* null, i32 0)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @GFAR_MAX_FIFO_STARVE, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %55

24:                                               ; preds = %4
  %25 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %26 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %25, i32 0, i32 1
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %31 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %33 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @gfar_read(i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @FIFO_TX_STARVE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %45 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @gfar_write(i32* %47, i32 %48)
  %50 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %51 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %50, i32 0, i32 1
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %24, %22
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.gfar_private* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gfar_read(i32*) #1

declare dso_local i32 @gfar_write(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
