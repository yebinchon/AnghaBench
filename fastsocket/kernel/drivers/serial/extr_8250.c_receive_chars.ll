; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i8, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BRK_ERROR_BITS = common dso_local global i8 0, align 1
@UART_LSR_BI = common dso_local global i8 0, align 1
@UART_LSR_FE = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"handling break....\00", align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_8250_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  store %struct.tty_struct* %16, %struct.tty_struct** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %7, align 1
  store i32 256, i32* %8, align 4
  br label %20

20:                                               ; preds = %207, %2
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @UART_LSR_DR, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = trunc i32 %25 to i8
  %27 = call i64 @likely(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %31 = load i32, i32* @UART_RX, align 4
  %32 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %30, i32 %31)
  store i8 %32, i8* %6, align 1
  br label %34

33:                                               ; preds = %20
  store i8 0, i8* %6, align 1
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %35, i8* %9, align 1
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  %50 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %50, i32 0, i32 0
  store i8 0, i8* %51, align 8
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @UART_LSR_BRK_ERROR_BITS, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = trunc i32 %56 to i8
  %58 = call i64 @unlikely(i8 zeroext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %174

60:                                               ; preds = %34
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @UART_LSR_BI, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = load i8, i8* @UART_LSR_FE, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @UART_LSR_PE, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %69, %71
  %73 = xor i32 %72, -1
  %74 = load i8, i8* %7, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, %73
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %7, align 1
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %85 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %84, i32 0, i32 1
  %86 = call i64 @uart_handle_break(%struct.TYPE_10__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %67
  br label %189

89:                                               ; preds = %67
  br label %120

90:                                               ; preds = %60
  %91 = load i8, i8* %7, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @UART_LSR_PE, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %99 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %119

104:                                              ; preds = %90
  %105 = load i8, i8* %7, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @UART_LSR_FE, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %113 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %111, %104
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119, %89
  %121 = load i8, i8* %7, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* @UART_LSR_OE, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %129 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %127, %120
  %135 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %136 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i8, i8* %137, align 8
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* %7, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, %139
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %7, align 1
  %144 = load i8, i8* %7, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8, i8* @UART_LSR_BI, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %134
  %151 = call i32 @DEBUG_INTR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %152 = load i8, i8* @TTY_BREAK, align 1
  store i8 %152, i8* %9, align 1
  br label %173

153:                                              ; preds = %134
  %154 = load i8, i8* %7, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* @UART_LSR_PE, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %155, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i8, i8* @TTY_PARITY, align 1
  store i8 %161, i8* %9, align 1
  br label %172

162:                                              ; preds = %153
  %163 = load i8, i8* %7, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* @UART_LSR_FE, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i8, i8* @TTY_FRAME, align 1
  store i8 %170, i8* %9, align 1
  br label %171

171:                                              ; preds = %169, %162
  br label %172

172:                                              ; preds = %171, %160
  br label %173

173:                                              ; preds = %172, %150
  br label %174

174:                                              ; preds = %173, %34
  %175 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %176 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %175, i32 0, i32 1
  %177 = load i8, i8* %6, align 1
  %178 = call i64 @uart_handle_sysrq_char(%struct.TYPE_10__* %176, i8 zeroext %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %189

181:                                              ; preds = %174
  %182 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %183 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %182, i32 0, i32 1
  %184 = load i8, i8* %7, align 1
  %185 = load i8, i8* @UART_LSR_OE, align 1
  %186 = load i8, i8* %6, align 1
  %187 = load i8, i8* %9, align 1
  %188 = call i32 @uart_insert_char(%struct.TYPE_10__* %183, i8 zeroext %184, i8 zeroext %185, i8 zeroext %186, i8 signext %187)
  br label %189

189:                                              ; preds = %181, %180, %88
  %190 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %191 = load i32, i32* @UART_LSR, align 4
  %192 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %190, i32 %191)
  store i8 %192, i8* %7, align 1
  br label %193

193:                                              ; preds = %189
  %194 = load i8, i8* %7, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @UART_LSR_DR, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8, i8* @UART_LSR_BI, align 1
  %199 = zext i8 %198 to i32
  %200 = or i32 %197, %199
  %201 = and i32 %195, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %193
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %8, align 4
  %206 = icmp sgt i32 %204, 0
  br label %207

207:                                              ; preds = %203, %193
  %208 = phi i1 [ false, %193 ], [ %206, %203 ]
  br i1 %208, label %20, label %209

209:                                              ; preds = %207
  %210 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %211 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = call i32 @spin_unlock(i32* %212)
  %214 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %215 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %214)
  %216 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %217 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = call i32 @spin_lock(i32* %218)
  %220 = load i8, i8* %7, align 1
  %221 = zext i8 %220 to i32
  %222 = load i32*, i32** %4, align 8
  store i32 %221, i32* %222, align 4
  ret void
}

declare dso_local i64 @likely(i8 zeroext) #1

declare dso_local zeroext i8 @serial_inp(%struct.uart_8250_port*, i32) #1

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_10__*) #1

declare dso_local i32 @DEBUG_INTR(i8*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_10__*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_10__*, i8 zeroext, i8 zeroext, i8 zeroext, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
