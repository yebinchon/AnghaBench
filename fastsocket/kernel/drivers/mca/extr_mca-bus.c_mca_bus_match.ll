; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-bus.c_mca_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-bus.c_mca_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.mca_device = type { i16, i32 }
%struct.mca_driver = type { i16*, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @mca_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.mca_device*, align 8
  %7 = alloca %struct.mca_driver*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.mca_device* @to_mca_device(%struct.device* %10)
  store %struct.mca_device* %11, %struct.mca_device** %6, align 8
  %12 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %13 = call %struct.mca_driver* @to_mca_driver(%struct.device_driver* %12)
  store %struct.mca_driver* %13, %struct.mca_driver** %7, align 8
  %14 = load %struct.mca_driver*, %struct.mca_driver** %7, align 8
  %15 = getelementptr inbounds %struct.mca_driver, %struct.mca_driver* %14, i32 0, i32 0
  %16 = load i16*, i16** %15, align 8
  store i16* %16, i16** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i16*, i16** %8, align 8
  %18 = icmp ne i16* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i16*, i16** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = load i16*, i16** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = load %struct.mca_device*, %struct.mca_device** %6, align 8
  %35 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.mca_device*, %struct.mca_device** %6, align 8
  %42 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i32 1, i32* %3, align 4
  br label %69

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %20

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.mca_driver*, %struct.mca_driver** %7, align 8
  %50 = getelementptr inbounds %struct.mca_driver, %struct.mca_driver* %49, i32 0, i32 1
  %51 = load i16, i16* %50, align 8
  %52 = zext i16 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.mca_device*, %struct.mca_device** %6, align 8
  %56 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 4
  %58 = zext i16 %57 to i32
  %59 = load %struct.mca_driver*, %struct.mca_driver** %7, align 8
  %60 = getelementptr inbounds %struct.mca_driver, %struct.mca_driver* %59, i32 0, i32 1
  %61 = load i16, i16* %60, align 8
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.mca_device*, %struct.mca_device** %6, align 8
  %67 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  store i32 1, i32* %3, align 4
  br label %69

68:                                               ; preds = %54, %48
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %64, %39
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.mca_device* @to_mca_device(%struct.device*) #1

declare dso_local %struct.mca_driver* @to_mca_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
