; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_should_preempt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_should_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i64, i32, %struct.cfq_queue* }
%struct.cfq_queue = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }

@SYNC_NOIDLE_WORKLOAD = common dso_local global i64 0, align 8
@REQ_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfq_data*, %struct.cfq_queue*, %struct.request*)* @cfq_should_preempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_should_preempt(%struct.cfq_data* %0, %struct.cfq_queue* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfq_data*, align 8
  %6 = alloca %struct.cfq_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %5, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %9 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %10 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %9, i32 0, i32 2
  %11 = load %struct.cfq_queue*, %struct.cfq_queue** %10, align 8
  store %struct.cfq_queue* %11, %struct.cfq_queue** %8, align 8
  %12 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %13 = icmp ne %struct.cfq_queue* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %112

15:                                               ; preds = %3
  %16 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %17 = call i64 @cfq_class_idle(%struct.cfq_queue* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %112

20:                                               ; preds = %15
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %22 = call i64 @cfq_class_idle(%struct.cfq_queue* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %112

25:                                               ; preds = %20
  %26 = load %struct.request*, %struct.request** %7, align 8
  %27 = call i64 @rq_is_sync(%struct.request* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %31 = call i32 @cfq_cfqq_sync(%struct.cfq_queue* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %112

34:                                               ; preds = %29, %25
  %35 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %36 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %39 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %112

43:                                               ; preds = %34
  %44 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %45 = call i64 @cfq_slice_used(%struct.cfq_queue* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %112

48:                                               ; preds = %43
  %49 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %50 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SYNC_NOIDLE_WORKLOAD, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %56 = call i64 @cfqq_type(%struct.cfq_queue* %55)
  %57 = load i64, i64* @SYNC_NOIDLE_WORKLOAD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %61 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %68 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %67, i32 0, i32 2
  %69 = call i64 @RB_EMPTY_ROOT(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %112

72:                                               ; preds = %66, %59, %54, %48
  %73 = load %struct.request*, %struct.request** %7, align 8
  %74 = getelementptr inbounds %struct.request, %struct.request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @REQ_META, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %81 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 1, i32* %4, align 4
  br label %112

85:                                               ; preds = %79, %72
  %86 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %87 = call i64 @cfq_class_rt(%struct.cfq_queue* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %91 = call i64 @cfq_class_rt(%struct.cfq_queue* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 1, i32* %4, align 4
  br label %112

94:                                               ; preds = %89, %85
  %95 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %96 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %101 = call i32 @cfq_cfqq_wait_request(%struct.cfq_queue* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99, %94
  store i32 0, i32* %4, align 4
  br label %112

104:                                              ; preds = %99
  %105 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %106 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %107 = load %struct.request*, %struct.request** %7, align 8
  %108 = call i64 @cfq_rq_close(%struct.cfq_data* %105, %struct.cfq_queue* %106, %struct.request* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 1, i32* %4, align 4
  br label %112

111:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %110, %103, %93, %84, %71, %47, %42, %33, %24, %19, %14
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @cfq_class_idle(%struct.cfq_queue*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @cfq_cfqq_sync(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_slice_used(%struct.cfq_queue*) #1

declare dso_local i64 @cfqq_type(%struct.cfq_queue*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i64 @cfq_class_rt(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_cfqq_wait_request(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_rq_close(%struct.cfq_data*, %struct.cfq_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
