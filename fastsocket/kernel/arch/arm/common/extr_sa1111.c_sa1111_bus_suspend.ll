; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_bus_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_bus_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sa1111_dev = type { i32 }
%struct.sa1111_driver = type { i32 (%struct.sa1111_dev.0*, i32)* }
%struct.sa1111_dev.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sa1111_bus_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1111_bus_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sa1111_dev*, align 8
  %6 = alloca %struct.sa1111_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sa1111_dev* @SA1111_DEV(%struct.device* %8)
  store %struct.sa1111_dev* %9, %struct.sa1111_dev** %5, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sa1111_driver* @SA1111_DRV(i32 %12)
  store %struct.sa1111_driver* %13, %struct.sa1111_driver** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.sa1111_driver*, %struct.sa1111_driver** %6, align 8
  %15 = icmp ne %struct.sa1111_driver* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.sa1111_driver*, %struct.sa1111_driver** %6, align 8
  %18 = getelementptr inbounds %struct.sa1111_driver, %struct.sa1111_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.sa1111_dev.0*, i32)*, i32 (%struct.sa1111_dev.0*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.sa1111_dev.0*, i32)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.sa1111_driver*, %struct.sa1111_driver** %6, align 8
  %23 = getelementptr inbounds %struct.sa1111_driver, %struct.sa1111_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.sa1111_dev.0*, i32)*, i32 (%struct.sa1111_dev.0*, i32)** %23, align 8
  %25 = load %struct.sa1111_dev*, %struct.sa1111_dev** %5, align 8
  %26 = bitcast %struct.sa1111_dev* %25 to %struct.sa1111_dev.0*
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %24(%struct.sa1111_dev.0* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %21, %16, %2
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local %struct.sa1111_dev* @SA1111_DEV(%struct.device*) #1

declare dso_local %struct.sa1111_driver* @SA1111_DRV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
