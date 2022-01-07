; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_fd_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_fd_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32)* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }

@current_drive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"disk removed during i/o\0A\00", align 1
@cont = common dso_local global %struct.TYPE_7__* null, align 8
@fd_timer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@DP = common dso_local global %struct.TYPE_8__* null, align 8
@FD_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fd_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_watchdog() #0 {
  %1 = load i32, i32* @current_drive, align 4
  %2 = call i64 @disk_change(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @cancel_activity()
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cont, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = call i32 %9(i32 0)
  %11 = call i32 (...) @reset_fdc()
  br label %20

12:                                               ; preds = %0
  %13 = call i32 @del_timer(%struct.TYPE_6__* @fd_timer)
  store i64 ptrtoint (void ()* @fd_watchdog to i64), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fd_timer, i32 0, i32 1), align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = sdiv i32 %15, 10
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fd_timer, i32 0, i32 0), align 8
  %19 = call i32 @add_timer(%struct.TYPE_6__* @fd_timer)
  br label %20

20:                                               ; preds = %12, %4
  ret void
}

declare dso_local i64 @disk_change(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @cancel_activity(...) #1

declare dso_local i32 @reset_fdc(...) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
