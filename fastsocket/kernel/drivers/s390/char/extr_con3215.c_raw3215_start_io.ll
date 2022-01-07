; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_start_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_start_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, %struct.raw3215_req*, i32, %struct.raw3215_req* }
%struct.raw3215_req = type { i32 }

@RAW3215_WORKING = common dso_local global i32 0, align 4
@RAW3215_THROTTLED = common dso_local global i32 0, align 4
@RAW3215_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_start_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_start_io(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  %3 = alloca %struct.raw3215_req*, align 8
  %4 = alloca i32, align 4
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %5 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %6 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %5, i32 0, i32 3
  %7 = load %struct.raw3215_req*, %struct.raw3215_req** %6, align 8
  store %struct.raw3215_req* %7, %struct.raw3215_req** %3, align 8
  %8 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %9 = icmp ne %struct.raw3215_req* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %12 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RAW3215_WORKING, align 4
  %15 = load i32, i32* @RAW3215_THROTTLED, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %10
  %20 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %21 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %20, i32 0, i32 3
  store %struct.raw3215_req* null, %struct.raw3215_req** %21, align 8
  %22 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %23 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %26 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %29 = ptrtoint %struct.raw3215_req* %28 to i64
  %30 = call i32 @ccw_device_start(i32 %24, i32 %27, i64 %29, i32 0, i32 0)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %35 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %36 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %35, i32 0, i32 3
  store %struct.raw3215_req* %34, %struct.raw3215_req** %36, align 8
  br label %43

37:                                               ; preds = %19
  %38 = load i32, i32* @RAW3215_WORKING, align 4
  %39 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %40 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %33
  br label %44

44:                                               ; preds = %43, %10, %1
  %45 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %46 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %45, i32 0, i32 1
  %47 = load %struct.raw3215_req*, %struct.raw3215_req** %46, align 8
  store %struct.raw3215_req* %47, %struct.raw3215_req** %3, align 8
  %48 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %49 = icmp ne %struct.raw3215_req* %48, null
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  %51 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %52 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RAW3215_WORKING, align 4
  %55 = load i32, i32* @RAW3215_STOPPED, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %50
  %60 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %61 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %60, i32 0, i32 1
  store %struct.raw3215_req* null, %struct.raw3215_req** %61, align 8
  %62 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %63 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %66 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %69 = ptrtoint %struct.raw3215_req* %68 to i64
  %70 = call i32 @ccw_device_start(i32 %64, i32 %67, i64 %69, i32 0, i32 0)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %75 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %76 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %75, i32 0, i32 1
  store %struct.raw3215_req* %74, %struct.raw3215_req** %76, align 8
  br label %83

77:                                               ; preds = %59
  %78 = load i32, i32* @RAW3215_WORKING, align 4
  %79 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %80 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %73
  br label %84

84:                                               ; preds = %83, %50, %44
  ret void
}

declare dso_local i32 @ccw_device_start(i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
