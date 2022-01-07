; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, %struct.esp_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.esp_struct = type { i32, i32 }
%struct.ktermios = type { i32 }

@CBAUD = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_WRITE_UART = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @rs_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.esp_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.esp_struct*, %struct.esp_struct** %8, align 8
  store %struct.esp_struct* %9, %struct.esp_struct** %5, align 8
  %10 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %11 = call i32 @change_speed(%struct.esp_struct* %10)
  %12 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %13 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %17 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CBAUD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %2
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CBAUD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @UART_MCR_DTR, align 4
  %33 = load i32, i32* @UART_MCR_RTS, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %37 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %41 = load i32, i32* @UART_ESI_CMD1, align 4
  %42 = load i32, i32* @ESI_WRITE_UART, align 4
  %43 = call i32 @serial_out(%struct.esp_struct* %40, i32 %41, i32 %42)
  %44 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %45 = load i32, i32* @UART_ESI_CMD2, align 4
  %46 = load i32, i32* @UART_MCR, align 4
  %47 = call i32 @serial_out(%struct.esp_struct* %44, i32 %45, i32 %46)
  %48 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %49 = load i32, i32* @UART_ESI_CMD2, align 4
  %50 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %51 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @serial_out(%struct.esp_struct* %48, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %31, %22, %2
  %55 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %56 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CBAUD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %92, label %61

61:                                               ; preds = %54
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CBAUD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %61
  %71 = load i32, i32* @UART_MCR_DTR, align 4
  %72 = load i32, i32* @UART_MCR_RTS, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %75 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %79 = load i32, i32* @UART_ESI_CMD1, align 4
  %80 = load i32, i32* @ESI_WRITE_UART, align 4
  %81 = call i32 @serial_out(%struct.esp_struct* %78, i32 %79, i32 %80)
  %82 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %83 = load i32, i32* @UART_ESI_CMD2, align 4
  %84 = load i32, i32* @UART_MCR, align 4
  %85 = call i32 @serial_out(%struct.esp_struct* %82, i32 %83, i32 %84)
  %86 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %87 = load i32, i32* @UART_ESI_CMD2, align 4
  %88 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %89 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @serial_out(%struct.esp_struct* %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %70, %61, %54
  %93 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %94 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %93, i32 0, i32 1
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %98 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CRTSCTS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %92
  %104 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %105 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CRTSCTS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %114 = call i32 @rs_start(%struct.tty_struct* %113)
  br label %115

115:                                              ; preds = %112, %103, %92
  ret void
}

declare dso_local i32 @change_speed(%struct.esp_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rs_start(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
