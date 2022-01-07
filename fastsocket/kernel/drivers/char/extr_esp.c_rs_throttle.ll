; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_throttle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.esp_struct* }
%struct.esp_struct = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"rs_throttle\00", align 1
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@ESI_SET_RX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.esp_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  store %struct.esp_struct* %7, %struct.esp_struct** %3, align 8
  %8 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @serial_paranoia_check(%struct.esp_struct* %8, i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %17 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* @UART_IER_RDI, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %23 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %27 = load i32, i32* @UART_ESI_CMD1, align 4
  %28 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %29 = call i32 @serial_out(%struct.esp_struct* %26, i32 %27, i32 %28)
  %30 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %31 = load i32, i32* @UART_ESI_CMD2, align 4
  %32 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %33 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @serial_out(%struct.esp_struct* %30, i32 %31, i32 %34)
  %36 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %37 = load i32, i32* @UART_ESI_CMD1, align 4
  %38 = load i32, i32* @ESI_SET_RX_TIMEOUT, align 4
  %39 = call i32 @serial_out(%struct.esp_struct* %36, i32 %37, i32 %38)
  %40 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %41 = load i32, i32* @UART_ESI_CMD2, align 4
  %42 = call i32 @serial_out(%struct.esp_struct* %40, i32 %41, i32 0)
  %43 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %44 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %43, i32 0, i32 1
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.esp_struct*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
