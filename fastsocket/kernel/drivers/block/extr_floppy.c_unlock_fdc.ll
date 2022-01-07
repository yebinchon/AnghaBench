; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_unlock_fdc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_unlock_fdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@raw_cmd = common dso_local global i32* null, align 8
@fdc_busy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"FDC access conflict!\0A\00", align 1
@do_floppy = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"device interrupt still active at FDC release: %p!\0A\00", align 1
@FD_COMMAND_NONE = common dso_local global i32 0, align 4
@command_status = common dso_local global i32 0, align 4
@floppy_lock = common dso_local global i32 0, align 4
@fd_timeout = common dso_local global i32 0, align 4
@cont = common dso_local global i32* null, align 8
@current_req = common dso_local global i64 0, align 8
@floppy_queue = common dso_local global i32 0, align 4
@fdc_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unlock_fdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_fdc() #0 {
  %1 = alloca i64, align 8
  store i32* null, i32** @raw_cmd, align 8
  %2 = call i32 @test_bit(i32 0, i32* @fdc_busy)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i64, i64* @do_floppy, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i64, i64* @do_floppy, align 8
  %11 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @FD_COMMAND_NONE, align 4
  store i32 %13, i32* @command_status, align 4
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @floppy_lock, i64 %14)
  %16 = call i32 @del_timer(i32* @fd_timeout)
  store i32* null, i32** @cont, align 8
  %17 = call i32 @clear_bit(i32 0, i32* @fdc_busy)
  %18 = load i64, i64* @current_req, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @floppy_queue, align 4
  %22 = call i64 @blk_peek_request(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %12
  %25 = load i32, i32* @floppy_queue, align 4
  %26 = call i32 @do_fd_request(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @floppy_lock, i64 %28)
  %30 = call i32 @wake_up(i32* @fdc_wait)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @blk_peek_request(i32) #1

declare dso_local i32 @do_fd_request(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
