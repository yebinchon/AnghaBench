; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_flush_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_flush_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i32, %struct.esp_struct* }
%struct.esp_struct = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"rs_flush_chars\00", align 1
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_flush_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_flush_chars(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.esp_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  store %struct.esp_struct* %7, %struct.esp_struct** %3, align 8
  %8 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @serial_paranoia_check(%struct.esp_struct* %8, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %17 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %16, i32 0, i32 2
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %21 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %31 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24, %15
  br label %59

35:                                               ; preds = %29
  %36 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %37 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @UART_IER_THRI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @UART_IER_THRI, align 4
  %44 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %45 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %49 = load i32, i32* @UART_ESI_CMD1, align 4
  %50 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %51 = call i32 @serial_out(%struct.esp_struct* %48, i32 %49, i32 %50)
  %52 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %53 = load i32, i32* @UART_ESI_CMD2, align 4
  %54 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %55 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @serial_out(%struct.esp_struct* %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %42, %35
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %61 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %60, i32 0, i32 2
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %14
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
