; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_handle_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART_SR = common dso_local global i32 0, align 4
@UART_SR_OVERRUN = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@UART_CR_CMD_RESET_ERR = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UART_SR_RX_READY = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_RF = common dso_local global i32 0, align 4
@UART_SR_RX_BREAK = common dso_local global i32 0, align 4
@UART_SR_PAR_FRAME_ERR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %3, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = load i32, i32* @UART_SR, align 4
  %15 = call i32 @msm_read(%struct.uart_port* %13, i32 %14)
  %16 = load i32, i32* @UART_SR_OVERRUN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = load i8, i8* @TTY_OVERRUN, align 1
  %27 = call i32 @tty_insert_flip_char(%struct.tty_struct* %25, i32 0, i8 signext %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = load i32, i32* @UART_CR_CMD_RESET_ERR, align 4
  %30 = load i32, i32* @UART_CR, align 4
  %31 = call i32 @msm_write(%struct.uart_port* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %1
  br label %33

33:                                               ; preds = %108, %58, %32
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = load i32, i32* @UART_SR, align 4
  %36 = call i32 @msm_read(%struct.uart_port* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @UART_SR_RX_READY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %33
  %41 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %41, i8* %6, align 1
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = load i32, i32* @UART_RF, align 4
  %44 = call i32 @msm_read(%struct.uart_port* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @UART_SR_RX_BREAK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = call i64 @uart_handle_break(%struct.uart_port* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %33

59:                                               ; preds = %49
  br label %78

60:                                               ; preds = %40
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @UART_SR_PAR_FRAME_ERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %77

71:                                               ; preds = %60
  %72 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @UART_SR_RX_BREAK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i8, i8* @TTY_BREAK, align 1
  store i8 %89, i8* %6, align 1
  br label %98

90:                                               ; preds = %78
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @UART_SR_PAR_FRAME_ERR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i8, i8* @TTY_FRAME, align 1
  store i8 %96, i8* %6, align 1
  br label %97

97:                                               ; preds = %95, %90
  br label %98

98:                                               ; preds = %97, %88
  %99 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @uart_handle_sysrq_char(%struct.uart_port* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i8, i8* %6, align 1
  %107 = call i32 @tty_insert_flip_char(%struct.tty_struct* %104, i32 %105, i8 signext %106)
  br label %108

108:                                              ; preds = %103, %98
  br label %33

109:                                              ; preds = %33
  %110 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %111 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %110)
  ret void
}

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i8 signext) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
