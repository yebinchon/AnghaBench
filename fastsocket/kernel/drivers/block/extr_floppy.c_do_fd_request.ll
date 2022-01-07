; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_do_fd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_do_fd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.request_queue = type { i32 }

@max_buffer_sectors = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"VFS: do_fd_request called on non-open device\0A\00", align 1
@usage_count = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"warning: usage count=0, current_req=%p exiting\0A\00", align 1
@current_req = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"sect=%ld type=%x flags=%x\0A\00", align 1
@fdc_busy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"do fd request, old request running\00", align 1
@MAXTIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"do fd request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @do_fd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fd_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %3 = load i64, i64* @max_buffer_sectors, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %32

7:                                                ; preds = %1
  %8 = load i64, i64* @usage_count, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_req, align 8
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_req, align 8
  %14 = call i64 @blk_rq_pos(%struct.TYPE_3__* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_req, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_req, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %14, i32 %17, i32 %20)
  br label %32

22:                                               ; preds = %7
  %23 = call i64 @test_bit(i32 0, i32* @fdc_busy)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @is_alive(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @MAXTIMEOUT, align 4
  %29 = call i32 @lock_fdc(i32 %28, i32 0)
  %30 = call i32 (...) @process_fd_request()
  %31 = call i32 @is_alive(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %25, %10, %5
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @blk_rq_pos(%struct.TYPE_3__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @is_alive(i8*) #1

declare dso_local i32 @lock_fdc(i32, i32) #1

declare dso_local i32 @process_fd_request(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
