; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_wait_until_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_wait_until_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { %struct.uart_port* }
%struct.uart_port = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)* }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"uart_wait_until_sent(%d), jiffies=%lu, expire=%lu...\0A\00", align 1
@current = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @uart_wait_until_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_wait_until_sent(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  store %struct.uart_state* %11, %struct.uart_state** %5, align 8
  %12 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %13 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %12, i32 0, i32 0
  %14 = load %struct.uart_port*, %struct.uart_port** %13, align 8
  store %struct.uart_port* %14, %struct.uart_port** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PORT_UNKNOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  br label %110

26:                                               ; preds = %20
  %27 = call i32 (...) @lock_kernel()
  %28 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HZ, align 4
  %32 = sdiv i32 %31, 50
  %33 = sub nsw i32 %30, %32
  %34 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %33, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = udiv i64 %39, 5
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i64 1, i64* %7, align 8
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %7, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %52, %47, %44
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 2, %62
  %64 = icmp sgt i32 %59, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58, %55
  %66 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 2, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i32, i32* @jiffies, align 4
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %8, align 8
  %75 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @jiffies, align 4
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %105, %70
  %82 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %85, align 8
  %87 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %88 = call i32 %86(%struct.uart_port* %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br i1 %90, label %91, label %106

91:                                               ; preds = %81
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @jiffies_to_msecs(i64 %92)
  %94 = call i32 @msleep_interruptible(i32 %93)
  %95 = load i32, i32* @current, align 4
  %96 = call i64 @signal_pending(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %106

99:                                               ; preds = %91
  %100 = load i32, i32* @jiffies, align 4
  %101 = load i64, i64* %8, align 8
  %102 = call i64 @time_after(i32 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %106

105:                                              ; preds = %99
  br label %81

106:                                              ; preds = %104, %98, %81
  %107 = load i32, i32* @TASK_RUNNING, align 4
  %108 = call i32 @set_current_state(i32 %107)
  %109 = call i32 (...) @unlock_kernel()
  br label %110

110:                                              ; preds = %106, %25
  ret void
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
