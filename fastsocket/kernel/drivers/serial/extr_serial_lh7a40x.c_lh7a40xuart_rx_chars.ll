; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_lh7a40x.c_lh7a40xuart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_lh7a40x.c_lh7a40xuart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART_R_STATUS = common dso_local global i32 0, align 4
@nRxRdy = common dso_local global i32 0, align 4
@UART_R_DATA = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@RxError = common dso_local global i32 0, align 4
@RxBreak = common dso_local global i32 0, align 4
@RxFramingError = common dso_local global i32 0, align 4
@RxParityError = common dso_local global i32 0, align 4
@RxOverrunError = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @lh7a40xuart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lh7a40xuart_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %3, align 8
  store i32 256, i32* %4, align 4
  br label %13

13:                                               ; preds = %135, %134, %61, %1
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @UART_R_STATUS, align 4
  %16 = call i32 @UR(%struct.uart_port* %14, i32 %15)
  %17 = load i32, i32* @nRxRdy, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ false, %13 ], [ %23, %20 ]
  br i1 %25, label %26, label %142

26:                                               ; preds = %24
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = load i32, i32* @UART_R_DATA, align 4
  %29 = call i32 @UR(%struct.uart_port* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @RxError, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %128

41:                                               ; preds = %26
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RxBreak, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i32, i32* @RxFramingError, align 4
  %48 = load i32, i32* @RxParityError, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = call i64 @uart_handle_break(%struct.uart_port* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %13

62:                                               ; preds = %46
  br label %87

63:                                               ; preds = %41
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @RxParityError, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %86

74:                                               ; preds = %63
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @RxFramingError, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %74
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %62
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @RxOverrunError, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, 255
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @RxBreak, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @TTY_BREAK, align 4
  store i32 %110, i32* %6, align 4
  br label %127

111:                                              ; preds = %98
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @RxParityError, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @TTY_PARITY, align 4
  store i32 %117, i32* %6, align 4
  br label %126

118:                                              ; preds = %111
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @RxFramingError, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @TTY_FRAME, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %118
  br label %126

126:                                              ; preds = %125, %116
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %26
  %129 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %130 = load i32, i32* %5, align 4
  %131 = trunc i32 %130 to i8
  %132 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %129, i8 zeroext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %13

135:                                              ; preds = %128
  %136 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @RxOverrunError, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @uart_insert_char(%struct.uart_port* %136, i32 %137, i32 %138, i32 %139, i32 %140)
  br label %13

142:                                              ; preds = %24
  %143 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %144 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %143)
  ret void
}

declare dso_local i32 @UR(%struct.uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
