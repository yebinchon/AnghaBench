; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_blk_try_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_blk_try_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.bio = type { i64 }

@ELEVATOR_BACK_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_FRONT_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_NO_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_try_merge(%struct.request* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i64 @blk_rq_pos(%struct.request* %6)
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = call i64 @blk_rq_sectors(%struct.request* %8)
  %10 = add nsw i64 %7, %9
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ELEVATOR_BACK_MERGE, align 4
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = call i64 @blk_rq_pos(%struct.request* %18)
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = call i64 @bio_sectors(%struct.bio* %20)
  %22 = sub nsw i64 %19, %21
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @ELEVATOR_FRONT_MERGE, align 4
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %27, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
