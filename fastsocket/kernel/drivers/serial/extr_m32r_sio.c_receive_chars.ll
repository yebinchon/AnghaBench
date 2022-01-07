; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sio_port = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@SIORXB = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"handling break....\00", align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sio_port*, i32*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_sio_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_sio_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.uart_sio_port* %0, %struct.uart_sio_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.tty_struct*, %struct.tty_struct** %14, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** %5, align 8
  store i32 256, i32* %8, align 4
  br label %16

16:                                               ; preds = %209, %2
  %17 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %18 = load i32, i32* @SIORXB, align 4
  %19 = call zeroext i8 @sio_in(%struct.uart_sio_port* %17, i32 %18)
  store i8 %19, i8* %6, align 1
  %20 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %20, i8* %7, align 1
  %21 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UART_LSR_BI, align 4
  %30 = load i32, i32* @UART_LSR_PE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @UART_LSR_FE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @UART_LSR_OE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %28, %35
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %162

39:                                               ; preds = %16
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UART_LSR_BI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, i32* @UART_LSR_FE, align 4
  %47 = load i32, i32* @UART_LSR_PE, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %54 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %60 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %59, i32 0, i32 1
  %61 = call i64 @uart_handle_break(%struct.TYPE_11__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %194

64:                                               ; preds = %45
  br label %93

65:                                               ; preds = %39
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @UART_LSR_PE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %92

78:                                               ; preds = %65
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @UART_LSR_FE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %86 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %78
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92, %64
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @UART_LSR_OE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %101 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %108 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %110
  store i32 %113, i32* %111, align 4
  %114 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %115 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %119 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %117, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %106
  %126 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %127 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  %132 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %133 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %125, %106
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @UART_LSR_BI, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = call i32 @DEBUG_INTR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %142 = load i8, i8* @TTY_BREAK, align 1
  store i8 %142, i8* %7, align 1
  br label %161

143:                                              ; preds = %134
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @UART_LSR_PE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i8, i8* @TTY_PARITY, align 1
  store i8 %150, i8* %7, align 1
  br label %160

151:                                              ; preds = %143
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @UART_LSR_FE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i8, i8* @TTY_FRAME, align 1
  store i8 %158, i8* %7, align 1
  br label %159

159:                                              ; preds = %157, %151
  br label %160

160:                                              ; preds = %159, %149
  br label %161

161:                                              ; preds = %160, %140
  br label %162

162:                                              ; preds = %161, %16
  %163 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %164 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %163, i32 0, i32 1
  %165 = load i8, i8* %6, align 1
  %166 = call i64 @uart_handle_sysrq_char(%struct.TYPE_11__* %164, i8 zeroext %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %194

169:                                              ; preds = %162
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %173 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %171, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %180 = load i8, i8* %6, align 1
  %181 = load i8, i8* %7, align 1
  %182 = call i32 @tty_insert_flip_char(%struct.tty_struct* %179, i8 zeroext %180, i8 zeroext %181)
  br label %183

183:                                              ; preds = %178, %169
  %184 = load i32*, i32** %4, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @UART_LSR_OE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %191 = load i8, i8* @TTY_OVERRUN, align 1
  %192 = call i32 @tty_insert_flip_char(%struct.tty_struct* %190, i8 zeroext 0, i8 zeroext %191)
  br label %193

193:                                              ; preds = %189, %183
  br label %194

194:                                              ; preds = %193, %168, %63
  %195 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %196 = load i32, i32* @UART_LSR, align 4
  %197 = call i32 @serial_in(%struct.uart_sio_port* %195, i32 %196)
  %198 = load i32*, i32** %4, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %194
  %200 = load i32*, i32** %4, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @UART_LSR_DR, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %8, align 4
  %208 = icmp sgt i32 %206, 0
  br label %209

209:                                              ; preds = %205, %199
  %210 = phi i1 [ false, %199 ], [ %208, %205 ]
  br i1 %210, label %16, label %211

211:                                              ; preds = %209
  %212 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %213 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %212)
  ret void
}

declare dso_local zeroext i8 @sio_in(%struct.uart_sio_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_11__*) #1

declare dso_local i32 @DEBUG_INTR(i8*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_11__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @serial_in(%struct.uart_sio_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
