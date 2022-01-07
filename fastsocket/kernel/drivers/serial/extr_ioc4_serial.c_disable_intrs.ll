; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_disable_intrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_disable_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc4_port = type { i32, i32, %struct.hooks* }
%struct.hooks = type { i32 }

@IOC4_W_IEC = common dso_local global i32 0, align 4
@IOC4_SIO_INTR_TYPE = common dso_local global i32 0, align 4
@IOC4_OTHER_INTR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc4_port*, i32)* @disable_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_intrs(%struct.ioc4_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ioc4_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hooks*, align 8
  store %struct.ioc4_port* %0, %struct.ioc4_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %7 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %6, i32 0, i32 2
  %8 = load %struct.hooks*, %struct.hooks** %7, align 8
  store %struct.hooks* %8, %struct.hooks** %5, align 8
  %9 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %10 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %17 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IOC4_W_IEC, align 4
  %21 = load i32, i32* @IOC4_SIO_INTR_TYPE, align 4
  %22 = call i32 @write_ireg(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %26 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %15, %2
  %30 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %31 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %36 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hooks*, %struct.hooks** %5, align 8
  %39 = getelementptr inbounds %struct.hooks, %struct.hooks* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IOC4_W_IEC, align 4
  %42 = load i32, i32* @IOC4_OTHER_INTR_TYPE, align 4
  %43 = call i32 @write_ireg(i32 %37, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @write_ireg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
