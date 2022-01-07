; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART01x_FR = common dso_local global i64 0, align 8
@UART01x_FR_RXFE = common dso_local global i32 0, align 4
@UART01x_DR = common dso_local global i64 0, align 8
@UART_DUMMY_DR_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_DR_ERROR = common dso_local global i32 0, align 4
@UART011_DR_BE = common dso_local global i32 0, align 4
@UART011_DR_FE = common dso_local global i32 0, align 4
@UART011_DR_PE = common dso_local global i32 0, align 4
@UART011_DR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_amba_port*)* @pl011_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl011_rx_chars(%struct.uart_amba_port* %0) #0 {
  %2 = alloca %struct.uart_amba_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_amba_port* %0, %struct.uart_amba_port** %2, align 8
  %8 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %3, align 8
  store i32 256, i32* %7, align 4
  %15 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UART01x_FR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readw(i64 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %163, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @UART01x_FR_RXFE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %28, 0
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %171

33:                                               ; preds = %31
  %34 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UART01x_DR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readw(i64 %39)
  %41 = load i32, i32* @UART_DUMMY_DR_RX, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %45 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @UART_DR_ERROR, align 4
  %52 = and i32 %50, %51
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %147

55:                                               ; preds = %33
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @UART011_DR_BE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load i32, i32* @UART011_DR_FE, align 4
  %62 = load i32, i32* @UART011_DR_PE, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %68 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %73, i32 0, i32 0
  %75 = call i64 @uart_handle_break(%struct.TYPE_10__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %163

78:                                               ; preds = %60
  br label %105

79:                                               ; preds = %55
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @UART011_DR_PE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %86 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %104

91:                                               ; preds = %79
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @UART011_DR_FE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %98 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96, %91
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %78
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @UART011_DR_OE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %112 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %110, %105
  %118 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %119 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @UART011_DR_BE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i32, i32* @TTY_BREAK, align 4
  store i32 %129, i32* %6, align 4
  br label %146

130:                                              ; preds = %117
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @UART011_DR_PE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @TTY_PARITY, align 4
  store i32 %136, i32* %6, align 4
  br label %145

137:                                              ; preds = %130
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @UART011_DR_FE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @TTY_FRAME, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %142, %137
  br label %145

145:                                              ; preds = %144, %135
  br label %146

146:                                              ; preds = %145, %128
  br label %147

147:                                              ; preds = %146, %33
  %148 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %149 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %148, i32 0, i32 0
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, 255
  %152 = call i64 @uart_handle_sysrq_char(%struct.TYPE_10__* %149, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %163

155:                                              ; preds = %147
  %156 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %157 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %156, i32 0, i32 0
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @UART011_DR_OE, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @uart_insert_char(%struct.TYPE_10__* %157, i32 %158, i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %155, %154, %77
  %164 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %165 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @UART01x_FR, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @readw(i64 %169)
  store i32 %170, i32* %4, align 4
  br label %22

171:                                              ; preds = %31
  %172 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %173 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = call i32 @spin_unlock(i32* %174)
  %176 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %177 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %176)
  %178 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %179 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = call i32 @spin_lock(i32* %180)
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_10__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
