; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_response_none.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_response_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { i64, i64, i32, i32, i32, i32 (%struct.maple_device*)* }

@.str = private unnamed_addr constant [30 x i8] c"detaching device at (%d, %d)\0A\00", align 1
@started = common dso_local global i32 0, align 4
@fullscan = common dso_local global i32 0, align 4
@checked = common dso_local global i32* null, align 8
@empty = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"no devices to port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.maple_device*)* @maple_response_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maple_response_none(%struct.maple_device* %0) #0 {
  %2 = alloca %struct.maple_device*, align 8
  store %struct.maple_device* %0, %struct.maple_device** %2, align 8
  %3 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %4 = call i32 @maple_clean_submap(%struct.maple_device* %3)
  %5 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %6 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %14 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %13, i32 0, i32 5
  %15 = load i32 (%struct.maple_device*)*, i32 (%struct.maple_device*)** %14, align 8
  %16 = icmp ne i32 (%struct.maple_device*)* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %19 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %18, i32 0, i32 5
  %20 = load i32 (%struct.maple_device*)*, i32 (%struct.maple_device*)** %19, align 8
  %21 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %22 = call i32 %20(%struct.maple_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %26 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %25, i32 0, i32 2
  %27 = call i32 @atomic_set(i32* %26, i32 2)
  %28 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %29 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %28, i32 0, i32 4
  %30 = call i32 @wake_up(i32* %29)
  br label %81

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %12
  %33 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %34 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %33, i32 0, i32 3
  %35 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %36 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %39 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40)
  %42 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %43 = call i32 @maple_detach_driver(%struct.maple_device* %42)
  br label %81

44:                                               ; preds = %1
  %45 = load i32, i32* @started, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @fullscan, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** @checked, align 8
  %52 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %53 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %50
  %59 = load i32*, i32** @checked, align 8
  %60 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %61 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 1, i32* %63, align 4
  %64 = load i32*, i32** @empty, align 8
  %65 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %66 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 1, i32* %68, align 4
  %69 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %70 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %69, i32 0, i32 3
  %71 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %72 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %58, %50
  br label %81

76:                                               ; preds = %47
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %79 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %78, i32 0, i32 2
  %80 = call i32 @atomic_set(i32* %79, i32 0)
  br label %81

81:                                               ; preds = %77, %75, %32, %24
  ret void
}

declare dso_local i32 @maple_clean_submap(%struct.maple_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #1

declare dso_local i32 @maple_detach_driver(%struct.maple_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
