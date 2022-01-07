; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_esp_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_esp_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.esp_struct* }
%struct.esp_struct = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"esp_break\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_ISSUE_BREAK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @esp_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_break(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.esp_struct*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.esp_struct*, %struct.esp_struct** %9, align 8
  store %struct.esp_struct* %10, %struct.esp_struct** %6, align 8
  %11 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @serial_paranoia_check(%struct.esp_struct* %11, i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %25 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %29 = load i32, i32* @UART_ESI_CMD1, align 4
  %30 = load i32, i32* @ESI_ISSUE_BREAK, align 4
  %31 = call i32 @serial_out(%struct.esp_struct* %28, i32 %29, i32 %30)
  %32 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %33 = load i32, i32* @UART_ESI_CMD2, align 4
  %34 = call i32 @serial_out(%struct.esp_struct* %32, i32 %33, i32 1)
  %35 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %36 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %40 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %39, i32 0, i32 1
  %41 = call i32 @interruptible_sleep_on(i32* %40)
  br label %58

42:                                               ; preds = %20
  %43 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %44 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %48 = load i32, i32* @UART_ESI_CMD1, align 4
  %49 = load i32, i32* @ESI_ISSUE_BREAK, align 4
  %50 = call i32 @serial_out(%struct.esp_struct* %47, i32 %48, i32 %49)
  %51 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %52 = load i32, i32* @UART_ESI_CMD2, align 4
  %53 = call i32 @serial_out(%struct.esp_struct* %51, i32 %52, i32 0)
  %54 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %55 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %54, i32 0, i32 0
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %42, %23
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @serial_paranoia_check(%struct.esp_struct*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
