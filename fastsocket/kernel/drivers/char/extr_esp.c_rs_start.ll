; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.esp_struct* }
%struct.esp_struct = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"rs_start\00", align 1
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_start(%struct.tty_struct* %0) #0 {
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
  %12 = call i64 @serial_paranoia_check(%struct.esp_struct* %8, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %17 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %21 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %15
  %25 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %26 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %31 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UART_IER_THRI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @UART_IER_THRI, align 4
  %38 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %39 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %43 = load i32, i32* @UART_ESI_CMD1, align 4
  %44 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %45 = call i32 @serial_out(%struct.esp_struct* %42, i32 %43, i32 %44)
  %46 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %47 = load i32, i32* @UART_ESI_CMD2, align 4
  %48 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %49 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @serial_out(%struct.esp_struct* %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %36, %29, %24, %15
  %53 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %54 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %53, i32 0, i32 1
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %14
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
