; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_mn10300-serial.c_mn10300_serial_receive_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_mn10300-serial.c_mn10300_serial_receive_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn10300_serial_port = type { i32, i32, i64*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64, %struct.uart_icount, %struct.TYPE_6__* }
%struct.uart_icount = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MNSC_BUFFER_SIZE = common dso_local global i32 0, align 4
@SC01STR_FEF = common dso_local global i64 0, align 8
@SC01STR_PEF = common dso_local global i64 0, align 8
@SC01STR_OEF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Rx Break Detected\00", align 1
@TTY_BREAK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Rx Framing Error\00", align 1
@TTY_FRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Rx Parity Error\00", align 1
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Rx Overrun Error\00", align 1
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn10300_serial_port*)* @mn10300_serial_receive_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn10300_serial_receive_interrupt(%struct.mn10300_serial_port* %0) #0 {
  %2 = alloca %struct.mn10300_serial_port*, align 8
  %3 = alloca %struct.uart_icount*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mn10300_serial_port* %0, %struct.mn10300_serial_port** %2, align 8
  %13 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %14 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store %struct.uart_icount* %15, %struct.uart_icount** %3, align 8
  %16 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %17 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.tty_struct*, %struct.tty_struct** %21, align 8
  store %struct.tty_struct* %22, %struct.tty_struct** %4, align 8
  %23 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %24 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i64 0, i64* %9, align 8
  %27 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %28 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %31 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MNSC_BUFFER_SIZE, align 4
  %34 = call i32 @CIRC_CNT(i32 %29, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @tty_buffer_request_room(%struct.tty_struct* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %46)
  br label %48

48:                                               ; preds = %45, %40
  br label %315

49:                                               ; preds = %1
  br label %50

50:                                               ; preds = %311, %228, %177, %166, %161, %120, %49
  %51 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %52 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %56 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %69 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %68)
  br label %70

70:                                               ; preds = %67, %62, %59
  br label %315

71:                                               ; preds = %50
  %72 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %73 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %81 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %7, align 8
  %88 = call i32 (...) @smp_rmb()
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @MNSC_BUFFER_SIZE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = and i32 %89, %91
  %93 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %94 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %96 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load i64, i64* @SC01STR_FEF, align 8
  %102 = load i64, i64* @SC01STR_PEF, align 8
  %103 = or i64 %101, %102
  %104 = load i64, i64* @SC01STR_OEF, align 8
  %105 = or i64 %103, %104
  %106 = load i64, i64* %7, align 8
  %107 = and i64 %106, %105
  store i64 %107, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %108 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %109 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %152 [
    i32 0, label %111
    i32 1, label %112
    i32 2, label %124
  ]

111:                                              ; preds = %71
  br label %168

112:                                              ; preds = %71
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @SC01STR_FEF, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i64, i64* %8, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %122 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %121, i32 0, i32 3
  store i32 2, i32* %122, align 8
  br label %50

123:                                              ; preds = %117, %112
  br label %312

124:                                              ; preds = %71
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* @SC01STR_FEF, align 8
  %127 = and i64 %125, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %124
  %130 = load i64, i64* %8, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %134 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %133, i32 0, i32 3
  store i32 3, i32* %134, align 8
  %135 = call i32 @_proto(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.uart_icount*, %struct.uart_icount** %3, align 8
  %137 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %141 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %140, i32 0, i32 4
  %142 = call i32 @uart_handle_break(%struct.TYPE_7__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  br label %311

145:                                              ; preds = %132
  %146 = load i32, i32* @TTY_BREAK, align 4
  %147 = shl i32 1, %146
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %10, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %10, align 8
  br label %236

151:                                              ; preds = %129, %124
  br label %312

152:                                              ; preds = %71
  %153 = load i64, i64* %7, align 8
  %154 = load i64, i64* @SC01STR_FEF, align 8
  %155 = load i64, i64* @SC01STR_PEF, align 8
  %156 = or i64 %154, %155
  %157 = load i64, i64* @SC01STR_OEF, align 8
  %158 = or i64 %156, %157
  %159 = and i64 %153, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  br label %50

162:                                              ; preds = %152
  %163 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %164 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %163, i32 0, i32 3
  store i32 0, i32* %164, align 8
  %165 = load i64, i64* %8, align 8
  switch i64 %165, label %167 [
    i64 255, label %166
    i64 254, label %166
    i64 252, label %166
    i64 248, label %166
    i64 240, label %166
    i64 224, label %166
    i64 192, label %166
    i64 128, label %166
    i64 0, label %166
  ]

166:                                              ; preds = %162, %162, %162, %162, %162, %162, %162, %162, %162
  br label %50

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %111
  br label %169

169:                                              ; preds = %312, %168
  %170 = load i64, i64* %7, align 8
  %171 = load i64, i64* @SC01STR_FEF, align 8
  %172 = and i64 %170, %171
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %169
  %175 = load i64, i64* %8, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %179 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %178, i32 0, i32 3
  store i32 1, i32* %179, align 8
  br label %50

180:                                              ; preds = %174
  %181 = call i32 @_proto(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %182 = load %struct.uart_icount*, %struct.uart_icount** %3, align 8
  %183 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* @TTY_FRAME, align 4
  %187 = shl i32 1, %186
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %10, align 8
  %190 = or i64 %189, %188
  store i64 %190, i64* %10, align 8
  br label %191

191:                                              ; preds = %180, %169
  %192 = load i64, i64* %7, align 8
  %193 = load i64, i64* @SC01STR_PEF, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = call i32 @_proto(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %198 = load %struct.uart_icount*, %struct.uart_icount** %3, align 8
  %199 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* @TTY_PARITY, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %10, align 8
  br label %204

204:                                              ; preds = %196, %191
  %205 = load i64, i64* %10, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %204
  %208 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %209 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %208, i32 0, i32 4
  %210 = load i64, i64* %8, align 8
  %211 = call i64 @uart_handle_sysrq_char(%struct.TYPE_7__* %209, i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  br label %311

214:                                              ; preds = %207
  %215 = load i32, i32* @TTY_NORMAL, align 4
  %216 = shl i32 1, %215
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %10, align 8
  br label %218

218:                                              ; preds = %214, %204
  %219 = load i64, i64* %7, align 8
  %220 = load i64, i64* @SC01STR_OEF, align 8
  %221 = and i64 %219, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %218
  %224 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %225 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %50

229:                                              ; preds = %223
  %230 = call i32 @_proto(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %231 = load %struct.uart_icount*, %struct.uart_icount** %3, align 8
  %232 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 4
  store i64 1, i64* %11, align 8
  br label %235

235:                                              ; preds = %229, %218
  br label %236

236:                                              ; preds = %235, %145
  %237 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %238 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %10, align 8
  %242 = and i64 %241, %240
  store i64 %242, i64* %10, align 8
  %243 = load i64, i64* %11, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %289, label %245

245:                                              ; preds = %236
  %246 = load i64, i64* %10, align 8
  %247 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %248 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = and i64 %246, %250
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %289, label %253

253:                                              ; preds = %245
  %254 = load i64, i64* %10, align 8
  %255 = load i32, i32* @TTY_BREAK, align 4
  %256 = shl i32 1, %255
  %257 = sext i32 %256 to i64
  %258 = and i64 %254, %257
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = load i32, i32* @TTY_BREAK, align 4
  store i32 %261, i32* %12, align 4
  br label %284

262:                                              ; preds = %253
  %263 = load i64, i64* %10, align 8
  %264 = load i32, i32* @TTY_PARITY, align 4
  %265 = shl i32 1, %264
  %266 = sext i32 %265 to i64
  %267 = and i64 %263, %266
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %262
  %270 = load i32, i32* @TTY_PARITY, align 4
  store i32 %270, i32* %12, align 4
  br label %283

271:                                              ; preds = %262
  %272 = load i64, i64* %10, align 8
  %273 = load i32, i32* @TTY_FRAME, align 4
  %274 = shl i32 1, %273
  %275 = sext i32 %274 to i64
  %276 = and i64 %272, %275
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %271
  %279 = load i32, i32* @TTY_FRAME, align 4
  store i32 %279, i32* %12, align 4
  br label %282

280:                                              ; preds = %271
  %281 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %281, i32* %12, align 4
  br label %282

282:                                              ; preds = %280, %278
  br label %283

283:                                              ; preds = %282, %269
  br label %284

284:                                              ; preds = %283, %260
  %285 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %286 = load i64, i64* %8, align 8
  %287 = load i32, i32* %12, align 4
  %288 = call i32 @tty_insert_flip_char(%struct.tty_struct* %285, i64 %286, i32 %287)
  br label %289

289:                                              ; preds = %284, %245, %236
  %290 = load i64, i64* %11, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %294 = load i32, i32* @TTY_OVERRUN, align 4
  %295 = call i32 @tty_insert_flip_char(%struct.tty_struct* %293, i64 0, i32 %294)
  br label %296

296:                                              ; preds = %292, %289
  %297 = load i32, i32* %6, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %6, align 4
  %299 = load i32, i32* %6, align 4
  %300 = icmp sle i32 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %296
  %302 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %303 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %301
  %307 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %308 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %307)
  br label %309

309:                                              ; preds = %306, %301
  br label %315

310:                                              ; preds = %296
  br label %311

311:                                              ; preds = %310, %213, %144
  store i64 1, i64* %9, align 8
  br label %50

312:                                              ; preds = %151, %123
  %313 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %314 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %313, i32 0, i32 3
  store i32 0, i32* %314, align 8
  br label %169

315:                                              ; preds = %309, %70, %48
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @_proto(i8*) #1

declare dso_local i32 @uart_handle_break(%struct.TYPE_7__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
