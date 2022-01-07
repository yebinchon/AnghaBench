; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.uart_port = type { i32 }
%struct.uart_sunsu_port = type { i32, i8, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i8 0, align 1
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i8 0, align 1
@PORT_16C950 = common dso_local global i64 0, align 8
@uart_config = common dso_local global %struct.TYPE_3__* null, align 8
@UART_USE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_TRIGGER_1 = common dso_local global i8 0, align 1
@UART_FCR_TRIGGER_8 = common dso_local global i8 0, align 1
@PORT_16750 = common dso_local global i64 0, align 8
@UART_FCR7_64BYTE = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_STARTECH = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UART_EFR_CTS = common dso_local global i8 0, align 1
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PORT_RSA = common dso_local global i64 0, align 8
@UART_FCR_TRIGGER_14 = common dso_local global i8 0, align 1
@UART_LCR_SPAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32, i32)* @sunsu_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsu_change_speed(%struct.uart_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uart_sunsu_port*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %14 = bitcast %struct.uart_port* %13 to %struct.uart_sunsu_port*
  store %struct.uart_sunsu_port* %14, %struct.uart_sunsu_port** %9, align 8
  store i8 0, i8* %11, align 1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CSIZE, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %21 [
    i32 131, label %18
    i32 130, label %19
    i32 129, label %20
    i32 128, label %22
  ]

18:                                               ; preds = %4
  store i8 0, i8* %10, align 1
  br label %23

19:                                               ; preds = %4
  store i8 1, i8* %10, align 1
  br label %23

20:                                               ; preds = %4
  store i8 2, i8* %10, align 1
  br label %23

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %4, %21
  store i8 3, i8* %10, align 1
  br label %23

23:                                               ; preds = %22, %20, %19, %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CSTOPB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %10, align 1
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PARENB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i8, i8* @UART_LCR_PARITY, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %10, align 1
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PARODD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load i8, i8* @UART_LCR_EPAR, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %10, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %52
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %10, align 1
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %63 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PORT_16C950, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %70 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 20993
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %68, %61, %57
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @uart_config, align 8
  %78 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %79 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @UART_USE_FIFO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %76
  %89 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %90 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = udiv i32 %92, %93
  %95 = icmp ult i32 %94, 38400
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @UART_FCR_TRIGGER_1, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %98, %100
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %11, align 1
  br label %110

103:                                              ; preds = %88
  %104 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @UART_FCR_TRIGGER_8, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %105, %107
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %11, align 1
  br label %110

110:                                              ; preds = %103, %96
  br label %111

111:                                              ; preds = %110, %76
  %112 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %113 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PORT_16750, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load i8, i8* @UART_FCR7_64BYTE, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* %11, align 1
  %122 = zext i8 %121 to i32
  %123 = or i32 %122, %120
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %11, align 1
  br label %125

125:                                              ; preds = %118, %111
  %126 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %127 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @spin_lock_irqsave(i32* %128, i64 %129)
  %131 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %8, align 4
  %137 = mul i32 16, %136
  %138 = udiv i32 %135, %137
  %139 = call i32 @uart_update_timeout(%struct.uart_port* %131, i32 %132, i32 %138)
  %140 = load i32, i32* @UART_LSR_OE, align 4
  %141 = load i32, i32* @UART_LSR_THRE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @UART_LSR_DR, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %146 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @INPCK, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %125
  %153 = load i32, i32* @UART_LSR_FE, align 4
  %154 = load i32, i32* @UART_LSR_PE, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %157 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %152, %125
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @BRKINT, align 4
  %164 = load i32, i32* @PARMRK, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %161
  %169 = load i32, i32* @UART_LSR_BI, align 4
  %170 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %171 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %168, %161
  %176 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %177 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  store i32 0, i32* %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @IGNPAR, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %175
  %184 = load i32, i32* @UART_LSR_PE, align 4
  %185 = load i32, i32* @UART_LSR_FE, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %188 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %186
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %183, %175
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @IGNBRK, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %192
  %198 = load i32, i32* @UART_LSR_BI, align 4
  %199 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %200 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %198
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @IGNPAR, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %197
  %209 = load i32, i32* @UART_LSR_OE, align 4
  %210 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %211 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %209
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %208, %197
  br label %216

216:                                              ; preds = %215, %192
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @CREAD, align 4
  %219 = and i32 %217, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load i32, i32* @UART_LSR_DR, align 4
  %223 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %224 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %222
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %221, %216
  %229 = load i32, i32* @UART_IER_MSI, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %232 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %236 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %235, i32 0, i32 3
  %237 = load i32, i32* %6, align 4
  %238 = call i64 @UART_ENABLE_MS(%struct.TYPE_4__* %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %228
  %241 = load i32, i32* @UART_IER_MSI, align 4
  %242 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %243 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %240, %228
  %247 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %248 = load i32, i32* @UART_IER, align 4
  %249 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %250 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @serial_out(%struct.uart_sunsu_port* %247, i32 %248, i32 %251)
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** @uart_config, align 8
  %254 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %255 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @UART_STARTECH, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %282

264:                                              ; preds = %246
  %265 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %266 = load i32, i32* @UART_LCR, align 4
  %267 = call i32 @serial_outp(%struct.uart_sunsu_port* %265, i32 %266, i8 zeroext -65)
  %268 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %269 = load i32, i32* @UART_EFR, align 4
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @CRTSCTS, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %264
  %275 = load i8, i8* @UART_EFR_CTS, align 1
  %276 = zext i8 %275 to i32
  br label %278

277:                                              ; preds = %264
  br label %278

278:                                              ; preds = %277, %274
  %279 = phi i32 [ %276, %274 ], [ 0, %277 ]
  %280 = trunc i32 %279 to i8
  %281 = call i32 @serial_outp(%struct.uart_sunsu_port* %268, i32 %269, i8 zeroext %280)
  br label %282

282:                                              ; preds = %278, %246
  %283 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %284 = load i32, i32* @UART_LCR, align 4
  %285 = load i8, i8* %10, align 1
  %286 = zext i8 %285 to i32
  %287 = load i8, i8* @UART_LCR_DLAB, align 1
  %288 = zext i8 %287 to i32
  %289 = or i32 %286, %288
  %290 = trunc i32 %289 to i8
  %291 = call i32 @serial_outp(%struct.uart_sunsu_port* %283, i32 %284, i8 zeroext %290)
  %292 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %293 = load i32, i32* @UART_DLL, align 4
  %294 = load i32, i32* %8, align 4
  %295 = and i32 %294, 255
  %296 = trunc i32 %295 to i8
  %297 = call i32 @serial_outp(%struct.uart_sunsu_port* %292, i32 %293, i8 zeroext %296)
  %298 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %299 = load i32, i32* @UART_DLM, align 4
  %300 = load i32, i32* %8, align 4
  %301 = lshr i32 %300, 8
  %302 = trunc i32 %301 to i8
  %303 = call i32 @serial_outp(%struct.uart_sunsu_port* %298, i32 %299, i8 zeroext %302)
  %304 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %305 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @PORT_16750, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %282
  %311 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %312 = load i32, i32* @UART_FCR, align 4
  %313 = load i8, i8* %11, align 1
  %314 = call i32 @serial_outp(%struct.uart_sunsu_port* %311, i32 %312, i8 zeroext %313)
  br label %315

315:                                              ; preds = %310, %282
  %316 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %317 = load i32, i32* @UART_LCR, align 4
  %318 = load i8, i8* %10, align 1
  %319 = call i32 @serial_outp(%struct.uart_sunsu_port* %316, i32 %317, i8 zeroext %318)
  %320 = load i8, i8* %10, align 1
  %321 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %322 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %321, i32 0, i32 1
  store i8 %320, i8* %322, align 4
  %323 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %324 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @PORT_16750, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %346

329:                                              ; preds = %315
  %330 = load i8, i8* %11, align 1
  %331 = zext i8 %330 to i32
  %332 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %333 = zext i8 %332 to i32
  %334 = and i32 %331, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %329
  %337 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %338 = load i32, i32* @UART_FCR, align 4
  %339 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %340 = call i32 @serial_outp(%struct.uart_sunsu_port* %337, i32 %338, i8 zeroext %339)
  br label %341

341:                                              ; preds = %336, %329
  %342 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %343 = load i32, i32* @UART_FCR, align 4
  %344 = load i8, i8* %11, align 1
  %345 = call i32 @serial_outp(%struct.uart_sunsu_port* %342, i32 %343, i8 zeroext %344)
  br label %346

346:                                              ; preds = %341, %315
  %347 = load i32, i32* %6, align 4
  %348 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %349 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %348, i32 0, i32 2
  store i32 %347, i32* %349, align 8
  %350 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %9, align 8
  %351 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 4
  %353 = load i64, i64* %12, align 8
  %354 = call i32 @spin_unlock_irqrestore(i32* %352, i64 %353)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_sunsu_port*, i32, i32) #1

declare dso_local i32 @serial_outp(%struct.uart_sunsu_port*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
