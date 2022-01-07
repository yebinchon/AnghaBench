; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.uart_sunsu_port = type { i8, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i8, i8, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tty_struct* }

@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BI = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i8 0, align 1
@UART_LSR_FE = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (%struct.uart_sunsu_port*, i8*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @receive_chars(%struct.uart_sunsu_port* %0, i8* %1) #0 {
  %3 = alloca %struct.uart_sunsu_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  store %struct.tty_struct* %16, %struct.tty_struct** %5, align 8
  store i32 256, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %270, %2
  %18 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %19 = load i32, i32* @UART_RX, align 4
  %20 = call zeroext i8 @serial_inp(%struct.uart_sunsu_port* %18, i32 %19)
  store i8 %20, i8* %6, align 1
  %21 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %21, i8* %7, align 1
  %22 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @UART_LSR_BI, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @UART_LSR_PE, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = load i8, i8* @UART_LSR_FE, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = load i8, i8* @UART_LSR_OE, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = and i32 %30, %41
  %43 = trunc i32 %42 to i8
  %44 = call i64 @unlikely(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %217

46:                                               ; preds = %17
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @UART_LSR_BI, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %46
  %55 = load i8, i8* @UART_LSR_FE, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @UART_LSR_PE, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = xor i32 %59, -1
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, %60
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  %66 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %67 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = icmp ne %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %54
  %78 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %83 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %81, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  store i32 1, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %77, %54
  %91 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %92 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %91, i32 0, i32 1
  %93 = call i64 @uart_handle_break(%struct.TYPE_11__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %253

96:                                               ; preds = %90
  br label %129

97:                                               ; preds = %46
  %98 = load i8*, i8** %4, align 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @UART_LSR_PE, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %107 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %128

112:                                              ; preds = %97
  %113 = load i8*, i8** %4, align 8
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @UART_LSR_FE, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %122 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %120, %112
  br label %128

128:                                              ; preds = %127, %105
  br label %129

129:                                              ; preds = %128, %96
  %130 = load i8*, i8** %4, align 8
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* @UART_LSR_OE, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %139 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %137, %129
  %145 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %146 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i8, i8* %147, align 8
  %149 = zext i8 %148 to i32
  %150 = load i8*, i8** %4, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, %149
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %150, align 1
  %155 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %156 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = icmp ne %struct.TYPE_10__* %158, null
  br i1 %159, label %160, label %184

160:                                              ; preds = %144
  %161 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %162 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %166 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %164, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %160
  %173 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %174 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %173, i32 0, i32 0
  %175 = load i8, i8* %174, align 8
  %176 = zext i8 %175 to i32
  %177 = load i8*, i8** %4, align 8
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %179, %176
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %177, align 1
  %182 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %183 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %182, i32 0, i32 0
  store i8 0, i8* %183, align 8
  br label %184

184:                                              ; preds = %172, %160, %144
  %185 = load i8*, i8** %4, align 8
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* @UART_LSR_BI, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i8, i8* @TTY_BREAK, align 1
  store i8 %193, i8* %7, align 1
  br label %216

194:                                              ; preds = %184
  %195 = load i8*, i8** %4, align 8
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8, i8* @UART_LSR_PE, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %197, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %194
  %203 = load i8, i8* @TTY_PARITY, align 1
  store i8 %203, i8* %7, align 1
  br label %215

204:                                              ; preds = %194
  %205 = load i8*, i8** %4, align 8
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* @UART_LSR_FE, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %207, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %204
  %213 = load i8, i8* @TTY_FRAME, align 1
  store i8 %213, i8* %7, align 1
  br label %214

214:                                              ; preds = %212, %204
  br label %215

215:                                              ; preds = %214, %202
  br label %216

216:                                              ; preds = %215, %192
  br label %217

217:                                              ; preds = %216, %17
  %218 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %219 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %218, i32 0, i32 1
  %220 = load i8, i8* %6, align 1
  %221 = call i64 @uart_handle_sysrq_char(%struct.TYPE_11__* %219, i8 zeroext %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %253

224:                                              ; preds = %217
  %225 = load i8*, i8** %4, align 8
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %229 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %227, %232
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %224
  %236 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %237 = load i8, i8* %6, align 1
  %238 = load i8, i8* %7, align 1
  %239 = call i32 @tty_insert_flip_char(%struct.tty_struct* %236, i8 zeroext %237, i8 zeroext %238)
  br label %240

240:                                              ; preds = %235, %224
  %241 = load i8*, i8** %4, align 8
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = load i8, i8* @UART_LSR_OE, align 1
  %245 = zext i8 %244 to i32
  %246 = and i32 %243, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %240
  %249 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %250 = load i8, i8* @TTY_OVERRUN, align 1
  %251 = call i32 @tty_insert_flip_char(%struct.tty_struct* %249, i8 zeroext 0, i8 zeroext %250)
  br label %252

252:                                              ; preds = %248, %240
  br label %253

253:                                              ; preds = %252, %223, %95
  %254 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %255 = load i32, i32* @UART_LSR, align 4
  %256 = call zeroext i8 @serial_inp(%struct.uart_sunsu_port* %254, i32 %255)
  %257 = load i8*, i8** %4, align 8
  store i8 %256, i8* %257, align 1
  br label %258

258:                                              ; preds = %253
  %259 = load i8*, i8** %4, align 8
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = load i8, i8* @UART_LSR_DR, align 1
  %263 = zext i8 %262 to i32
  %264 = and i32 %261, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %258
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %8, align 4
  %269 = icmp sgt i32 %267, 0
  br label %270

270:                                              ; preds = %266, %258
  %271 = phi i1 [ false, %258 ], [ %269, %266 ]
  br i1 %271, label %17, label %272

272:                                              ; preds = %270
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = call i32 (...) @sun_do_break()
  br label %277

277:                                              ; preds = %275, %272
  %278 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  ret %struct.tty_struct* %278
}

declare dso_local zeroext i8 @serial_inp(%struct.uart_sunsu_port*, i32) #1

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_11__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_11__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @sun_do_break(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
