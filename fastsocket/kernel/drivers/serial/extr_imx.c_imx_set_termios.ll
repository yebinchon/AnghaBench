; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ktermios = type { i32, i32 }
%struct.imx_port = type { %struct.TYPE_11__, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@UCR2_WS = common dso_local global i32 0, align 4
@UCR2_SRST = common dso_local global i32 0, align 4
@UCR2_IRTS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UCR2_CTSC = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UCR2_STPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UCR2_PREN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UCR2_PROE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@URXD_FRMERR = common dso_local global i32 0, align 4
@URXD_PRERR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@URXD_BRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@URXD_OVRRUN = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i64 0, align 8
@UCR1_TXMPTYEN = common dso_local global i32 0, align 4
@UCR1_RRDYEN = common dso_local global i32 0, align 4
@UCR1_RTSDEN = common dso_local global i32 0, align 4
@USR2 = common dso_local global i64 0, align 8
@USR2_TXDC = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i64 0, align 8
@UCR2_TXEN = common dso_local global i32 0, align 4
@UCR2_RXEN = common dso_local global i32 0, align 4
@UFCR = common dso_local global i64 0, align 8
@UFCR_RFDIV = common dso_local global i32 0, align 4
@UBIR = common dso_local global i64 0, align 8
@UBMR = common dso_local global i64 0, align 8
@MX2_ONEMS = common dso_local global i64 0, align 8
@CLOCAL = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @imx_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.imx_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = bitcast %struct.uart_port* %20 to %struct.imx_port*
  store %struct.imx_port* %21, %struct.imx_port** %7, align 8
  %22 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %23 = icmp ne %struct.ktermios* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CSIZE, align 4
  %29 = and i32 %27, %28
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @CS8, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i32 [ %29, %24 ], [ %31, %30 ]
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %52, %32
  %35 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CSIZE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @CS7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CSIZE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CS8, align 4
  %49 = icmp ne i32 %47, %48
  br label %50

50:                                               ; preds = %42, %34
  %51 = phi i1 [ false, %34 ], [ %49, %42 ]
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = load i32, i32* @CSIZE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %56 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @CS8, align 4
  store i32 %64, i32* %14, align 4
  br label %34

65:                                               ; preds = %50
  %66 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %67 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CSIZE, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @CS8, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* @UCR2_WS, align 4
  %75 = load i32, i32* @UCR2_SRST, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @UCR2_IRTS, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %9, align 4
  br label %83

79:                                               ; preds = %65
  %80 = load i32, i32* @UCR2_SRST, align 4
  %81 = load i32, i32* @UCR2_IRTS, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %85 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CRTSCTS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %83
  %91 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %92 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32, i32* @UCR2_IRTS, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @UCR2_CTSC, align 4
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %110

103:                                              ; preds = %90
  %104 = load i32, i32* @CRTSCTS, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %107 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %95
  br label %111

111:                                              ; preds = %110, %83
  %112 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %113 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CSTOPB, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32, i32* @UCR2_STPB, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %124 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PARENB, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %122
  %130 = load i32, i32* @UCR2_PREN, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %134 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PARODD, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load i32, i32* @UCR2_PROE, align 4
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %139, %129
  br label %144

144:                                              ; preds = %143, %122
  %145 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %146 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %147 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %148 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %149 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sdiv i32 %150, 16
  %152 = call i32 @uart_get_baud_rate(%struct.uart_port* %145, %struct.ktermios* %146, %struct.ktermios* %147, i32 50, i32 %151)
  store i32 %152, i32* %12, align 4
  %153 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @uart_get_divisor(%struct.uart_port* %153, i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %157 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @spin_lock_irqsave(i32* %158, i64 %159)
  %161 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %162 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  %164 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %165 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @INPCK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %144
  %171 = load i32, i32* @URXD_FRMERR, align 4
  %172 = load i32, i32* @URXD_PRERR, align 4
  %173 = or i32 %171, %172
  %174 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %175 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %170, %144
  %180 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %181 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @BRKINT, align 4
  %184 = load i32, i32* @PARMRK, align 4
  %185 = or i32 %183, %184
  %186 = and i32 %182, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %179
  %189 = load i32, i32* @URXD_BRK, align 4
  %190 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %191 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %189
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %188, %179
  %196 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %197 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  store i32 0, i32* %198, align 4
  %199 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %200 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IGNPAR, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %195
  %206 = load i32, i32* @URXD_PRERR, align 4
  %207 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %208 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %205, %195
  %213 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %214 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @IGNBRK, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %212
  %220 = load i32, i32* @URXD_BRK, align 4
  %221 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %222 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %220
  store i32 %225, i32* %223, align 4
  %226 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %227 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @IGNPAR, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %219
  %233 = load i32, i32* @URXD_OVRRUN, align 4
  %234 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %235 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %233
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %232, %219
  br label %240

240:                                              ; preds = %239, %212
  %241 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %242 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %241, i32 0, i32 1
  %243 = call i32 @del_timer_sync(i32* %242)
  %244 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %245 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %246 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @uart_update_timeout(%struct.uart_port* %244, i32 %247, i32 %248)
  %250 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %251 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @UCR1, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i32 @readl(i64 %255)
  store i32 %256, i32* %10, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* @UCR1_TXMPTYEN, align 4
  %259 = load i32, i32* @UCR1_RRDYEN, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @UCR1_RTSDEN, align 4
  %262 = or i32 %260, %261
  %263 = xor i32 %262, -1
  %264 = and i32 %257, %263
  %265 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %266 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @UCR1, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @writel(i32 %264, i64 %270)
  br label %272

272:                                              ; preds = %284, %240
  %273 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %274 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @USR2, align 8
  %278 = add nsw i64 %276, %277
  %279 = call i32 @readl(i64 %278)
  %280 = load i32, i32* @USR2_TXDC, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  %283 = xor i1 %282, true
  br i1 %283, label %284, label %286

284:                                              ; preds = %272
  %285 = call i32 (...) @barrier()
  br label %272

286:                                              ; preds = %272
  %287 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %288 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @UCR2, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @readl(i64 %292)
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @UCR2_TXEN, align 4
  %296 = load i32, i32* @UCR2_RXEN, align 4
  %297 = or i32 %295, %296
  %298 = xor i32 %297, -1
  %299 = and i32 %294, %298
  %300 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %301 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @UCR2, align 8
  %305 = add nsw i64 %303, %304
  %306 = call i32 @writel(i32 %299, i64 %305)
  %307 = load i32, i32* @UCR2_TXEN, align 4
  %308 = load i32, i32* @UCR2_RXEN, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* %11, align 4
  %311 = and i32 %310, %309
  store i32 %311, i32* %11, align 4
  %312 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %313 = call i64 @USE_IRDA(%struct.imx_port* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %286
  store i32 1, i32* %15, align 4
  br label %332

316:                                              ; preds = %286
  %317 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %318 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %12, align 4
  %322 = mul i32 %321, 16
  %323 = udiv i32 %320, %322
  store i32 %323, i32* %15, align 4
  %324 = load i32, i32* %15, align 4
  %325 = icmp ugt i32 %324, 7
  br i1 %325, label %326, label %327

326:                                              ; preds = %316
  store i32 7, i32* %15, align 4
  br label %327

327:                                              ; preds = %326, %316
  %328 = load i32, i32* %15, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %327
  store i32 1, i32* %15, align 4
  br label %331

331:                                              ; preds = %330, %327
  br label %332

332:                                              ; preds = %331, %315
  %333 = load i32, i32* %15, align 4
  %334 = mul i32 16, %333
  %335 = load i32, i32* %12, align 4
  %336 = mul i32 %334, %335
  %337 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %338 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @rational_best_approximation(i32 %336, i32 %340, i32 65536, i32 65536, i64* %17, i64* %18)
  %342 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %343 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %342, i32 0, i32 1
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %343, align 8
  %345 = icmp ne %struct.TYPE_8__* %344, null
  br i1 %345, label %346, label %382

346:                                              ; preds = %332
  %347 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %348 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %347, i32 0, i32 1
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %382

354:                                              ; preds = %346
  %355 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %356 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %19, align 8
  %360 = load i64, i64* %17, align 8
  %361 = load i64, i64* %19, align 8
  %362 = mul i64 %361, %360
  store i64 %362, i64* %19, align 8
  %363 = load i64, i64* %19, align 8
  %364 = load i64, i64* %18, align 8
  %365 = mul i64 %364, 16
  %366 = load i32, i32* %15, align 4
  %367 = zext i32 %366 to i64
  %368 = mul i64 %365, %367
  %369 = call i32 @do_div(i64 %363, i64 %368)
  %370 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %371 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 5
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load i64, i64* %19, align 8
  %378 = trunc i64 %377 to i32
  %379 = load i64, i64* %19, align 8
  %380 = trunc i64 %379 to i32
  %381 = call i32 @tty_encode_baud_rate(i32 %376, i32 %378, i32 %380)
  br label %382

382:                                              ; preds = %354, %346, %332
  %383 = load i64, i64* %17, align 8
  %384 = sub i64 %383, 1
  store i64 %384, i64* %17, align 8
  %385 = load i64, i64* %18, align 8
  %386 = sub i64 %385, 1
  store i64 %386, i64* %18, align 8
  %387 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %388 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 4
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @UFCR, align 8
  %392 = add nsw i64 %390, %391
  %393 = call i32 @readl(i64 %392)
  store i32 %393, i32* %16, align 4
  %394 = load i32, i32* %16, align 4
  %395 = load i32, i32* @UFCR_RFDIV, align 4
  %396 = xor i32 %395, -1
  %397 = and i32 %394, %396
  %398 = load i32, i32* %15, align 4
  %399 = call i32 @UFCR_RFDIV_REG(i32 %398)
  %400 = or i32 %397, %399
  store i32 %400, i32* %16, align 4
  %401 = load i32, i32* %16, align 4
  %402 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %403 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 4
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @UFCR, align 8
  %407 = add nsw i64 %405, %406
  %408 = call i32 @writel(i32 %401, i64 %407)
  %409 = load i64, i64* %17, align 8
  %410 = trunc i64 %409 to i32
  %411 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %412 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 4
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @UBIR, align 8
  %416 = add nsw i64 %414, %415
  %417 = call i32 @writel(i32 %410, i64 %416)
  %418 = load i64, i64* %18, align 8
  %419 = trunc i64 %418 to i32
  %420 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %421 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 4
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @UBMR, align 8
  %425 = add nsw i64 %423, %424
  %426 = call i32 @writel(i32 %419, i64 %425)
  %427 = call i32 (...) @cpu_is_mx1()
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %444, label %429

429:                                              ; preds = %382
  %430 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %431 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* %15, align 4
  %435 = udiv i32 %433, %434
  %436 = udiv i32 %435, 1000
  %437 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %438 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 4
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @MX2_ONEMS, align 8
  %442 = add nsw i64 %440, %441
  %443 = call i32 @writel(i32 %436, i64 %442)
  br label %444

444:                                              ; preds = %429, %382
  %445 = load i32, i32* %10, align 4
  %446 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %447 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 4
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @UCR1, align 8
  %451 = add nsw i64 %449, %450
  %452 = call i32 @writel(i32 %445, i64 %451)
  %453 = load i32, i32* %9, align 4
  %454 = load i32, i32* %11, align 4
  %455 = or i32 %453, %454
  %456 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %457 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 4
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @UCR2, align 8
  %461 = add nsw i64 %459, %460
  %462 = call i32 @writel(i32 %455, i64 %461)
  %463 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %464 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %463, i32 0, i32 0
  %465 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %466 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = call i64 @UART_ENABLE_MS(%struct.TYPE_11__* %464, i32 %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %444
  %471 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %472 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %471, i32 0, i32 0
  %473 = call i32 @imx_enable_ms(%struct.TYPE_11__* %472)
  br label %474

474:                                              ; preds = %470, %444
  %475 = load %struct.imx_port*, %struct.imx_port** %7, align 8
  %476 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %476, i32 0, i32 3
  %478 = load i64, i64* %8, align 8
  %479 = call i32 @spin_unlock_irqrestore(i32* %477, i64 %478)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @USE_IRDA(%struct.imx_port*) #1

declare dso_local i32 @rational_best_approximation(i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @tty_encode_baud_rate(i32, i32, i32) #1

declare dso_local i32 @UFCR_RFDIV_REG(i32) #1

declare dso_local i32 @cpu_is_mx1(...) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @imx_enable_ms(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
