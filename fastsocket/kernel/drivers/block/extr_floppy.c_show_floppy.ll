; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_show_floppy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_show_floppy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"floppy driver state\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"now=%lu last interrupt=%lu diff=%lu last called handler=%p\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@interruptjiffies = common dso_local global i64 0, align 8
@lasthandler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"status=%x\0A\00", align 1
@FD_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"fdc_busy=%lu\0A\00", align 1
@fdc_busy = common dso_local global i32 0, align 4
@do_floppy = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"do_floppy=%p\0A\00", align 1
@floppy_work = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"floppy_work.func=%p\0A\00", align 1
@fd_timer = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"fd_timer.function=%p\0A\00", align 1
@fd_timeout = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"timer_function=%p\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"expires=%lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"now=%lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"cont=%p\0A\00", align 1
@cont = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"current_req=%p\0A\00", align 1
@current_req = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"command_status=%d\0A\00", align 1
@command_status = common dso_local global i32 0, align 4
@OLOGSIZE = common dso_local global i32 0, align 4
@lastredo = common dso_local global i32 0, align 4
@output_log = common dso_local global %struct.TYPE_9__* null, align 8
@output_log_pos = common dso_local global i32 0, align 4
@reply_buffer = common dso_local global i32* null, align 8
@resultjiffies = common dso_local global i32 0, align 4
@resultsize = common dso_local global i32 0, align 4
@timeout_message = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_floppy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_floppy() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @interruptjiffies, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @interruptjiffies, align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i32, i32* @lasthandler, align 4
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %5, i64 %6, i64 %9, i32 %10)
  %12 = load i32, i32* @FD_STATUS, align 4
  %13 = call i32 @fd_inb(i32 %12)
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @fdc_busy, align 4
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @do_floppy, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i64, i64* @do_floppy, align 8
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %19, %0
  %23 = call i64 @work_pending(%struct.TYPE_7__* @floppy_work)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @floppy_work, i32 0, i32 0), align 4
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i64 @timer_pending(%struct.TYPE_8__* @fd_timer)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fd_timer, i32 0, i32 1), align 8
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = call i64 @timer_pending(%struct.TYPE_8__* @fd_timeout)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fd_timeout, i32 0, i32 1), align 8
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fd_timeout, i32 0, i32 0), align 8
  %41 = load i64, i64* @jiffies, align 8
  %42 = sub nsw i64 %40, %41
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* @jiffies, align 8
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %37, %34
  %47 = load i32, i32* @cont, align 4
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @current_req, align 4
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @command_status, align 4
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %51)
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @fd_inb(i32) #1

declare dso_local i64 @work_pending(%struct.TYPE_7__*) #1

declare dso_local i64 @timer_pending(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
