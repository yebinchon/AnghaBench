; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request*, %struct.elevator_queue* }
%struct.request = type { i32 }
%struct.elevator_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.bio = type { i32 }

@ELEVATOR_NO_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_BACK_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elv_merge(%struct.request_queue* %0, %struct.request** %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request**, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.elevator_queue*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request** %1, %struct.request*** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 1
  %13 = load %struct.elevator_queue*, %struct.elevator_queue** %12, align 8
  store %struct.elevator_queue* %13, %struct.elevator_queue** %8, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 0
  %16 = load %struct.request*, %struct.request** %15, align 8
  %17 = icmp ne %struct.request* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  %21 = load %struct.request*, %struct.request** %20, align 8
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = call i64 @elv_rq_merge_ok(%struct.request* %21, %struct.bio* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 0
  %28 = load %struct.request*, %struct.request** %27, align 8
  %29 = load %struct.bio*, %struct.bio** %7, align 8
  %30 = call i32 @blk_try_merge(%struct.request* %28, %struct.bio* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 0
  %37 = load %struct.request*, %struct.request** %36, align 8
  %38 = load %struct.request**, %struct.request*** %6, align 8
  store %struct.request* %37, %struct.request** %38, align 8
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %85

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %18, %3
  %42 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %43 = call i64 @blk_queue_nomerges(%struct.request_queue* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %46, i32* %4, align 4
  br label %85

47:                                               ; preds = %41
  %48 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %49 = load %struct.bio*, %struct.bio** %7, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.request* @elv_rqhash_find(%struct.request_queue* %48, i32 %51)
  store %struct.request* %52, %struct.request** %9, align 8
  %53 = load %struct.request*, %struct.request** %9, align 8
  %54 = icmp ne %struct.request* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load %struct.request*, %struct.request** %9, align 8
  %57 = load %struct.bio*, %struct.bio** %7, align 8
  %58 = call i64 @elv_rq_merge_ok(%struct.request* %56, %struct.bio* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.request*, %struct.request** %9, align 8
  %62 = load %struct.request**, %struct.request*** %6, align 8
  store %struct.request* %61, %struct.request** %62, align 8
  %63 = load i32, i32* @ELEVATOR_BACK_MERGE, align 4
  store i32 %63, i32* %4, align 4
  br label %85

64:                                               ; preds = %55, %47
  %65 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %66 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.request_queue*, %struct.request**, %struct.bio*)**
  %70 = load i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)** %69, align 8
  %71 = icmp ne i32 (%struct.request_queue*, %struct.request**, %struct.bio*)* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %74 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = bitcast {}** %76 to i32 (%struct.request_queue*, %struct.request**, %struct.bio*)**
  %78 = load i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)** %77, align 8
  %79 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %80 = load %struct.request**, %struct.request*** %6, align 8
  %81 = load %struct.bio*, %struct.bio** %7, align 8
  %82 = call i32 %78(%struct.request_queue* %79, %struct.request** %80, %struct.bio* %81)
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %64
  %84 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %72, %60, %45, %34
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @elv_rq_merge_ok(%struct.request*, %struct.bio*) #1

declare dso_local i32 @blk_try_merge(%struct.request*, %struct.bio*) #1

declare dso_local i64 @blk_queue_nomerges(%struct.request_queue*) #1

declare dso_local %struct.request* @elv_rqhash_find(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
