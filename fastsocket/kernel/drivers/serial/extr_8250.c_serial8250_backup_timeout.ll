; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_backup_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_backup_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@UART_IER = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@LSR_SAVE_FLAGS = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_IIR_ID = common dso_local global i32 0, align 4
@UART_IIR_THRI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @serial8250_backup_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_backup_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %9, %struct.uart_8250_port** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @is_real_interrupt(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %18 = load i32, i32* @UART_IER, align 4
  %19 = call i32 @serial_in(%struct.uart_8250_port* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %21 = load i32, i32* @UART_IER, align 4
  %22 = call i32 @serial_out(%struct.uart_8250_port* %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %25 = load i32, i32* @UART_IIR, align 4
  %26 = call i32 @serial_in(%struct.uart_8250_port* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %33 = load i32, i32* @UART_LSR, align 4
  %34 = call i32 @serial_in(%struct.uart_8250_port* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @LSR_SAVE_FLAGS, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @UART_IIR_NO_INT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %23
  %52 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @UART_IER_THRI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %51
  %59 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %60 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @uart_circ_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %68 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %66, %58
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @UART_LSR_THRE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load i32, i32* @UART_IIR_ID, align 4
  %79 = load i32, i32* @UART_IIR_NO_INT, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @UART_IIR_THRI, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %77, %72, %66, %51, %23
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @UART_IIR_NO_INT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %94 = call i32 @serial8250_handle_port(%struct.uart_8250_port* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %97 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @is_real_interrupt(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %104 = load i32, i32* @UART_IER, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @serial_out(%struct.uart_8250_port* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %108, i32 0, i32 3
  %110 = load i64, i64* @jiffies, align 8
  %111 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %112 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @poll_timeout(i32 %114)
  %116 = add nsw i64 %110, %115
  %117 = load i32, i32* @HZ, align 4
  %118 = sdiv i32 %117, 5
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %116, %119
  %121 = call i32 @mod_timer(i32* %109, i64 %120)
  ret void
}

declare dso_local i64 @is_real_interrupt(i32) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uart_circ_empty(i32*) #1

declare dso_local i32 @serial8250_handle_port(%struct.uart_8250_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @poll_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
