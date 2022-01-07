; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_swim.c_redo_fd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_swim.c_redo_fd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.floppy_state* }
%struct.floppy_state = type { i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @redo_fd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redo_fd_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.floppy_state*, align 8
  %5 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = call %struct.request* @blk_fetch_request(%struct.request_queue* %6)
  store %struct.request* %7, %struct.request** %3, align 8
  br label %8

8:                                                ; preds = %65, %1
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = icmp ne %struct.request* %9, null
  br i1 %10, label %11, label %66

11:                                               ; preds = %8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.floppy_state*, %struct.floppy_state** %17, align 8
  store %struct.floppy_state* %18, %struct.floppy_state** %4, align 8
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = call i64 @blk_rq_pos(%struct.request* %19)
  %21 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %22 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  br label %57

26:                                               ; preds = %11
  %27 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %28 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %57

32:                                               ; preds = %26
  %33 = load %struct.request*, %struct.request** %3, align 8
  %34 = call i32 @rq_data_dir(%struct.request* %33)
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %38 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %57

42:                                               ; preds = %36, %32
  %43 = load %struct.request*, %struct.request** %3, align 8
  %44 = call i32 @rq_data_dir(%struct.request* %43)
  switch i32 %44, label %56 [
    i32 128, label %45
    i32 129, label %46
  ]

45:                                               ; preds = %42
  br label %56

46:                                               ; preds = %42
  %47 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %48 = load %struct.request*, %struct.request** %3, align 8
  %49 = call i64 @blk_rq_pos(%struct.request* %48)
  %50 = load %struct.request*, %struct.request** %3, align 8
  %51 = call i32 @blk_rq_cur_sectors(%struct.request* %50)
  %52 = load %struct.request*, %struct.request** %3, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @floppy_read_sectors(%struct.floppy_state* %47, i64 %49, i32 %51, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %42, %46, %45
  br label %57

57:                                               ; preds = %56, %41, %31, %25
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @__blk_end_request_cur(%struct.request* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %64 = call %struct.request* @blk_fetch_request(%struct.request_queue* %63)
  store %struct.request* %64, %struct.request** %3, align 8
  br label %65

65:                                               ; preds = %62, %57
  br label %8

66:                                               ; preds = %8
  ret void
}

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @floppy_read_sectors(%struct.floppy_state*, i64, i32, i32) #1

declare dso_local i32 @blk_rq_cur_sectors(%struct.request*) #1

declare dso_local i32 @__blk_end_request_cur(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
