; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_wait_until_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_wait_until_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.esp_struct* }
%struct.esp_struct = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"rs_wait_until_sent\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_NO_COMMAND = common dso_local global i32 0, align 4
@ESI_GET_TX_AVAIL = common dso_local global i32 0, align 4
@UART_ESI_STAT1 = common dso_local global i32 0, align 4
@UART_ESI_STAT2 = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @rs_wait_until_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_wait_until_sent(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esp_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.esp_struct*, %struct.esp_struct** %10, align 8
  store %struct.esp_struct* %11, %struct.esp_struct** %5, align 8
  %12 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @serial_paranoia_check(%struct.esp_struct* %12, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %102

19:                                               ; preds = %2
  %20 = load i64, i64* @jiffies, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %22 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = sdiv i32 %24, 50
  %26 = sub nsw i32 %23, %25
  %27 = sdiv i32 %26, 1024
  %28 = sdiv i32 %27, 5
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i64 1, i64* %7, align 8
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %35 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %34, i32 0, i32 1
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %39 = load i32, i32* @UART_ESI_CMD1, align 4
  %40 = load i32, i32* @ESI_NO_COMMAND, align 4
  %41 = call i32 @serial_out(%struct.esp_struct* %38, i32 %39, i32 %40)
  %42 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %43 = load i32, i32* @UART_ESI_CMD1, align 4
  %44 = load i32, i32* @ESI_GET_TX_AVAIL, align 4
  %45 = call i32 @serial_out(%struct.esp_struct* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %82, %33
  %47 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %48 = load i32, i32* @UART_ESI_STAT1, align 4
  %49 = call i32 @serial_in(%struct.esp_struct* %47, i32 %48)
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %53 = load i32, i32* @UART_ESI_STAT2, align 4
  %54 = call i32 @serial_in(%struct.esp_struct* %52, i32 %53)
  %55 = icmp ne i32 %54, 255
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ true, %46 ], [ %55, %51 ]
  br i1 %57, label %58, label %95

58:                                               ; preds = %56
  %59 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %60 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %59, i32 0, i32 1
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @jiffies_to_msecs(i64 %63)
  %65 = call i32 @msleep_interruptible(i32 %64)
  %66 = load i32, i32* @current, align 4
  %67 = call i64 @signal_pending(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %102

70:                                               ; preds = %58
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %75, %77
  %79 = call i64 @time_after(i64 %74, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %102

82:                                               ; preds = %73, %70
  %83 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %84 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %83, i32 0, i32 1
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %88 = load i32, i32* @UART_ESI_CMD1, align 4
  %89 = load i32, i32* @ESI_NO_COMMAND, align 4
  %90 = call i32 @serial_out(%struct.esp_struct* %87, i32 %88, i32 %89)
  %91 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %92 = load i32, i32* @UART_ESI_CMD1, align 4
  %93 = load i32, i32* @ESI_GET_TX_AVAIL, align 4
  %94 = call i32 @serial_out(%struct.esp_struct* %91, i32 %92, i32 %93)
  br label %46

95:                                               ; preds = %56
  %96 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %97 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %96, i32 0, i32 1
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* @TASK_RUNNING, align 4
  %101 = call i32 @set_current_state(i32 %100)
  br label %102

102:                                              ; preds = %95, %81, %69, %18
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.esp_struct*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.esp_struct*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
