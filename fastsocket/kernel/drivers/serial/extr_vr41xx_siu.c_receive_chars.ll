; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_vr41xx_siu.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_vr41xx_siu.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@RX_MAX_COUNT = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@lsr_break_flag = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @RX_MAX_COUNT, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  store %struct.tty_struct* %16, %struct.tty_struct** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %148, %2
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = load i32, i32* @UART_RX, align 4
  %22 = call i32 @siu_read(%struct.uart_port* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %28, i8* %8, align 1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UART_LSR_BI, align 4
  %31 = load i32, i32* @UART_LSR_FE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UART_LSR_PE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UART_LSR_OE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %29, %36
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %122

40:                                               ; preds = %19
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @UART_LSR_BI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load i32, i32* @UART_LSR_FE, align 4
  %47 = load i32, i32* @UART_LSR_PE, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = call i64 @uart_handle_break(%struct.uart_port* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %135

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @UART_LSR_FE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @UART_LSR_PE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @UART_LSR_OE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %84
  %96 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @UART_LSR_BI, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i8, i8* @TTY_BREAK, align 1
  store i8 %106, i8* %8, align 1
  br label %107

107:                                              ; preds = %105, %95
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @UART_LSR_FE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i8, i8* @TTY_FRAME, align 1
  store i8 %113, i8* %8, align 1
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @UART_LSR_PE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i8, i8* @TTY_PARITY, align 1
  store i8 %120, i8* %8, align 1
  br label %121

121:                                              ; preds = %119, %114
  br label %122

122:                                              ; preds = %121, %19
  %123 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %135

128:                                              ; preds = %122
  %129 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @UART_LSR_OE, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i8, i8* %8, align 1
  %134 = call i32 @uart_insert_char(%struct.uart_port* %129, i32 %130, i32 %131, i32 %132, i8 signext %133)
  br label %135

135:                                              ; preds = %128, %127, %60
  %136 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %137 = load i32, i32* @UART_LSR, align 4
  %138 = call i32 @siu_read(%struct.uart_port* %136, i32 %137)
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @UART_LSR_DR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %9, align 4
  %147 = icmp sgt i32 %145, 0
  br label %148

148:                                              ; preds = %144, %139
  %149 = phi i1 [ false, %139 ], [ %147, %144 ]
  br i1 %149, label %19, label %150

150:                                              ; preds = %148
  %151 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %152 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %151)
  %153 = load i32, i32* %6, align 4
  %154 = load i32*, i32** %4, align 8
  store i32 %153, i32* %154, align 4
  ret void
}

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
