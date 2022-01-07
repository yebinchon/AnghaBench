; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pxa.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pxa.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pxa_port = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pxa_port*, i32*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_pxa_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_pxa_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_pxa_port* %0, %struct.uart_pxa_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.tty_struct*, %struct.tty_struct** %14, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** %5, align 8
  store i32 256, i32* %8, align 4
  br label %16

16:                                               ; preds = %173, %2
  %17 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %18 = load i32, i32* @UART_RX, align 4
  %19 = call i8* @serial_in(%struct.uart_pxa_port* %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UART_LSR_BI, align 4
  %31 = load i32, i32* @UART_LSR_PE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UART_LSR_FE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UART_LSR_OE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %29, %36
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %141

40:                                               ; preds = %16
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UART_LSR_BI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i32, i32* @UART_LSR_FE, align 4
  %48 = load i32, i32* @UART_LSR_PE, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %61 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %60, i32 0, i32 1
  %62 = call i64 @uart_handle_break(%struct.TYPE_12__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %157

65:                                               ; preds = %46
  br label %94

66:                                               ; preds = %40
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @UART_LSR_PE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %93

79:                                               ; preds = %66
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UART_LSR_FE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %87 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %79
  br label %93

93:                                               ; preds = %92, %72
  br label %94

94:                                               ; preds = %93, %65
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @UART_LSR_OE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %102 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %111
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @UART_LSR_BI, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = load i32, i32* @TTY_BREAK, align 4
  store i32 %121, i32* %7, align 4
  br label %140

122:                                              ; preds = %107
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @UART_LSR_PE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @TTY_PARITY, align 4
  store i32 %129, i32* %7, align 4
  br label %139

130:                                              ; preds = %122
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @UART_LSR_FE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @TTY_FRAME, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %130
  br label %139

139:                                              ; preds = %138, %128
  br label %140

140:                                              ; preds = %139, %120
  br label %141

141:                                              ; preds = %140, %16
  %142 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %143 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %142, i32 0, i32 1
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @uart_handle_sysrq_char(%struct.TYPE_12__* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %157

148:                                              ; preds = %141
  %149 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %150 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %149, i32 0, i32 1
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @UART_LSR_OE, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @uart_insert_char(%struct.TYPE_12__* %150, i32 %152, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %148, %147, %64
  %158 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %159 = load i32, i32* @UART_LSR, align 4
  %160 = call i8* @serial_in(%struct.uart_pxa_port* %158, i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load i32*, i32** %4, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %157
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @UART_LSR_DR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %8, align 4
  %172 = icmp sgt i32 %170, 0
  br label %173

173:                                              ; preds = %169, %163
  %174 = phi i1 [ false, %163 ], [ %172, %169 ]
  br i1 %174, label %16, label %175

175:                                              ; preds = %173
  %176 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %177 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %176)
  ret void
}

declare dso_local i8* @serial_in(%struct.uart_pxa_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_12__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
