; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_swim3.c_start_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_swim3.c_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.floppy_state = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }

@idle = common dso_local global i64 0, align 8
@available = common dso_local global i64 0, align 8
@fd_req = common dso_local global %struct.request* null, align 8
@swim3_queue = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@WRITE_PROT = common dso_local global i32 0, align 4
@do_transfer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.floppy_state*)* @start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_request(%struct.floppy_state* %0) #0 {
  %2 = alloca %struct.floppy_state*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i64, align 8
  store %struct.floppy_state* %0, %struct.floppy_state** %2, align 8
  %5 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %6 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @idle, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %12 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i64, i64* @available, align 8
  %17 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %18 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %20 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %19, i32 0, i32 10
  %21 = call i32 @wake_up(i32* %20)
  br label %124

22:                                               ; preds = %10, %1
  br label %23

23:                                               ; preds = %86, %81, %56, %47, %22
  %24 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %25 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @idle, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %124

29:                                               ; preds = %23
  %30 = load %struct.request*, %struct.request** @fd_req, align 8
  %31 = icmp ne %struct.request* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @swim3_queue, align 4
  %34 = call %struct.request* @blk_fetch_request(i32 %33)
  store %struct.request* %34, %struct.request** @fd_req, align 8
  %35 = load %struct.request*, %struct.request** @fd_req, align 8
  %36 = icmp ne %struct.request* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %124

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.request*, %struct.request** @fd_req, align 8
  store %struct.request* %40, %struct.request** %3, align 8
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = call i64 @blk_rq_pos(%struct.request* %41)
  %43 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %44 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @swim3_end_request_cur(i32 %49)
  br label %23

51:                                               ; preds = %39
  %52 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %53 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @swim3_end_request_cur(i32 %58)
  br label %23

60:                                               ; preds = %51
  %61 = load %struct.request*, %struct.request** %3, align 8
  %62 = call i64 @rq_data_dir(%struct.request* %61)
  %63 = load i64, i64* @WRITE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %67 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %72 = load i32, i32* @WRITE_PROT, align 4
  %73 = call i64 @swim3_readbit(%struct.floppy_state* %71, i32 %72)
  %74 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %75 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %78 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @swim3_end_request_cur(i32 %83)
  br label %23

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %60
  %87 = load %struct.request*, %struct.request** %3, align 8
  %88 = call i64 @blk_rq_pos(%struct.request* %87)
  %89 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %90 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = sdiv i64 %88, %91
  %93 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %94 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load %struct.request*, %struct.request** %3, align 8
  %96 = call i64 @blk_rq_pos(%struct.request* %95)
  %97 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %98 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = srem i64 %96, %99
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %103 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = udiv i64 %101, %104
  %106 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %107 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %106, i32 0, i32 5
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %110 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = urem i64 %108, %111
  %113 = add i64 %112, 1
  %114 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %115 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %114, i32 0, i32 7
  store i64 %113, i64* %115, align 8
  %116 = load %struct.request*, %struct.request** %3, align 8
  store %struct.request* %116, %struct.request** @fd_req, align 8
  %117 = load i64, i64* @do_transfer, align 8
  %118 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %119 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %121 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %120, i32 0, i32 8
  store i64 0, i64* %121, align 8
  %122 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %123 = call i32 @act(%struct.floppy_state* %122)
  br label %23

124:                                              ; preds = %15, %37, %23
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.request* @blk_fetch_request(i32) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @swim3_end_request_cur(i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @swim3_readbit(%struct.floppy_state*, i32) #1

declare dso_local i32 @act(%struct.floppy_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
