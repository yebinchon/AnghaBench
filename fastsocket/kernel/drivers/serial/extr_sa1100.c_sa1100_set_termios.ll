; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.sa1100_port = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@UTCR0_DSS = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UTCR0_SBS = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UTCR0_PE = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UTCR0_OES = common dso_local global i32 0, align 4
@UTSR0_TFS = common dso_local global i32 0, align 4
@UTSR1_ROR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UTSR1_FRE = common dso_local global i32 0, align 4
@UTSR1_PRE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UTSR0_RBB = common dso_local global i32 0, align 4
@UTSR0_REB = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@UTCR3_RIE = common dso_local global i32 0, align 4
@UTCR3_TIE = common dso_local global i32 0, align 4
@UTSR1_TBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sa1100_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.sa1100_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = bitcast %struct.uart_port* %14 to %struct.sa1100_port*
  store %struct.sa1100_port* %15, %struct.sa1100_port** %7, align 8
  %16 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %17 = icmp ne %struct.ktermios* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CSIZE, align 4
  %23 = and i32 %21, %22
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @CS8, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %23, %18 ], [ %25, %24 ]
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %46, %26
  %29 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CSIZE, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CS7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSIZE, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CS8, align 4
  %43 = icmp ne i32 %41, %42
  br label %44

44:                                               ; preds = %36, %28
  %45 = phi i1 [ false, %28 ], [ %43, %36 ]
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = load i32, i32* @CSIZE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %50 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @CS8, align 4
  store i32 %58, i32* %13, align 4
  br label %28

59:                                               ; preds = %44
  %60 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CSIZE, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @CS8, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @UTCR0_DSS, align 4
  store i32 %68, i32* %9, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %67
  %71 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %72 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CSTOPB, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @UTCR0_SBS, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %83 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PARENB, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %81
  %89 = load i32, i32* @UTCR0_PE, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %93 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PARODD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @UTCR0_OES, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %88
  br label %103

103:                                              ; preds = %102, %81
  %104 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %105 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %106 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %107 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 16
  %111 = call i32 @uart_get_baud_rate(%struct.uart_port* %104, %struct.ktermios* %105, %struct.ktermios* %106, i32 0, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @uart_get_divisor(%struct.uart_port* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %116 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load i32, i32* @UTSR0_TFS, align 4
  %121 = call i32 @UTSR0_TO_SM(i32 %120)
  %122 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %123 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %121
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* @UTSR1_ROR, align 4
  %128 = call i32 @UTSR1_TO_SM(i32 %127)
  %129 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %130 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 4
  %134 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %135 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @INPCK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %103
  %141 = load i32, i32* @UTSR1_FRE, align 4
  %142 = load i32, i32* @UTSR1_PRE, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @UTSR1_TO_SM(i32 %143)
  %145 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %146 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %140, %103
  %151 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %152 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @BRKINT, align 4
  %155 = load i32, i32* @PARMRK, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %153, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %150
  %160 = load i32, i32* @UTSR0_RBB, align 4
  %161 = load i32, i32* @UTSR0_REB, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @UTSR0_TO_SM(i32 %162)
  %164 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %165 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %163
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %159, %150
  %170 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %171 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  store i32 0, i32* %172, align 4
  %173 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %174 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IGNPAR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %169
  %180 = load i32, i32* @UTSR1_FRE, align 4
  %181 = load i32, i32* @UTSR1_PRE, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @UTSR1_TO_SM(i32 %182)
  %184 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %185 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %183
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %179, %169
  %190 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %191 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @IGNBRK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %189
  %197 = load i32, i32* @UTSR0_RBB, align 4
  %198 = load i32, i32* @UTSR0_REB, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @UTSR0_TO_SM(i32 %199)
  %201 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %202 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %200
  store i32 %205, i32* %203, align 4
  %206 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %207 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @IGNPAR, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %196
  %213 = load i32, i32* @UTSR1_ROR, align 4
  %214 = call i32 @UTSR1_TO_SM(i32 %213)
  %215 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %216 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %214
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %212, %196
  br label %221

221:                                              ; preds = %220, %189
  %222 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %223 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %222, i32 0, i32 1
  %224 = call i32 @del_timer_sync(i32* %223)
  %225 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %226 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %227 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @uart_update_timeout(%struct.uart_port* %225, i32 %228, i32 %229)
  %231 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %232 = call i32 @UART_GET_UTCR3(%struct.sa1100_port* %231)
  store i32 %232, i32* %10, align 4
  %233 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* @UTCR3_RIE, align 4
  %236 = load i32, i32* @UTCR3_TIE, align 4
  %237 = or i32 %235, %236
  %238 = xor i32 %237, -1
  %239 = and i32 %234, %238
  %240 = call i32 @UART_PUT_UTCR3(%struct.sa1100_port* %233, i32 %239)
  br label %241

241:                                              ; preds = %247, %221
  %242 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %243 = call i32 @UART_GET_UTSR1(%struct.sa1100_port* %242)
  %244 = load i32, i32* @UTSR1_TBY, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = call i32 (...) @barrier()
  br label %241

249:                                              ; preds = %241
  %250 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %251 = call i32 @UART_PUT_UTCR3(%struct.sa1100_port* %250, i32 0)
  %252 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @UART_PUT_UTCR0(%struct.sa1100_port* %252, i32 %253)
  %255 = load i32, i32* %12, align 4
  %256 = sub i32 %255, 1
  store i32 %256, i32* %12, align 4
  %257 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %258 = load i32, i32* %12, align 4
  %259 = and i32 %258, 3840
  %260 = lshr i32 %259, 8
  %261 = call i32 @UART_PUT_UTCR1(%struct.sa1100_port* %257, i32 %260)
  %262 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %263 = load i32, i32* %12, align 4
  %264 = and i32 %263, 255
  %265 = call i32 @UART_PUT_UTCR2(%struct.sa1100_port* %262, i32 %264)
  %266 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %267 = call i32 @UART_PUT_UTSR0(%struct.sa1100_port* %266, i32 -1)
  %268 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @UART_PUT_UTCR3(%struct.sa1100_port* %268, i32 %269)
  %271 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %272 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %271, i32 0, i32 0
  %273 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %274 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @UART_ENABLE_MS(%struct.TYPE_3__* %272, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %249
  %279 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %280 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %279, i32 0, i32 0
  %281 = call i32 @sa1100_enable_ms(%struct.TYPE_3__* %280)
  br label %282

282:                                              ; preds = %278, %249
  %283 = load %struct.sa1100_port*, %struct.sa1100_port** %7, align 8
  %284 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  %286 = load i64, i64* %8, align 8
  %287 = call i32 @spin_unlock_irqrestore(i32* %285, i64 %286)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @UTSR0_TO_SM(i32) #1

declare dso_local i32 @UTSR1_TO_SM(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @UART_GET_UTCR3(%struct.sa1100_port*) #1

declare dso_local i32 @UART_PUT_UTCR3(%struct.sa1100_port*, i32) #1

declare dso_local i32 @UART_GET_UTSR1(%struct.sa1100_port*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @UART_PUT_UTCR0(%struct.sa1100_port*, i32) #1

declare dso_local i32 @UART_PUT_UTCR1(%struct.sa1100_port*, i32) #1

declare dso_local i32 @UART_PUT_UTCR2(%struct.sa1100_port*, i32) #1

declare dso_local i32 @UART_PUT_UTSR0(%struct.sa1100_port*, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @sa1100_enable_ms(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
