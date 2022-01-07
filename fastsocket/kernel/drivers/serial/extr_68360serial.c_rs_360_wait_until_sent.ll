; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_wait_until_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_wait_until_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.tty_struct = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"rs_wait_until_sent\00", align 1
@jiffies = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@TX_NUM_FIFO = common dso_local global i32 0, align 4
@BD_SC_READY = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@lsr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @rs_360_wait_until_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_360_wait_until_sent(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @serial_paranoia_check(%struct.TYPE_8__* %13, i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %82

20:                                               ; preds = %2
  %21 = load i64, i64* @jiffies, align 8
  store i64 %21, i64* %6, align 8
  store i64 1, i64* %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = call i64 @min(i64 %25, i64 %27)
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %24, %20
  %30 = call i32 (...) @lock_kernel()
  br label %31

31:                                               ; preds = %70, %29
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @jiffies_to_msecs(i64 %32)
  %34 = call i32 @msleep_interruptible(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %36 = call i64 @signal_pending(%struct.TYPE_10__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %77

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = call i64 @time_after(i64 %43, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %77

51:                                               ; preds = %42, %39
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %8, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = icmp eq %struct.TYPE_9__* %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* @TX_NUM_FIFO, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %64
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %8, align 8
  br label %69

66:                                               ; preds = %51
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 -1
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %8, align 8
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load volatile i32, i32* %72, align 4
  %74 = load i32, i32* @BD_SC_READY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %31, label %77

77:                                               ; preds = %70, %50, %38
  %78 = load i32, i32* @TASK_RUNNING, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = call i32 (...) @unlock_kernel()
  br label %82

82:                                               ; preds = %77, %19
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @signal_pending(%struct.TYPE_10__*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
