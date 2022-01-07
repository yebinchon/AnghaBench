; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.uart_pmac_port = type { i8, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8, i32, %struct.TYPE_10__, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.tty_struct* }

@.str = private unnamed_addr constant [21 x i8] c"pmz: draining input\0A\00", align 1
@R1 = common dso_local global i64 0, align 8
@R0 = common dso_local global i64 0, align 8
@ERR_RES = common dso_local global i32 0, align 4
@Rx_CH_AV = common dso_local global i8 0, align 1
@PAR_ERR = common dso_local global i8 0, align 1
@Rx_OVR = common dso_local global i8 0, align 1
@CRC_ERR = common dso_local global i8 0, align 1
@PMACZILOG_FLAG_BREAK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@BRK_ABRT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"pmz: got break !\0A\00", align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@RxINT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"pmz: rx irq flood !\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (%struct.uart_pmac_port*)* @pmz_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @pmz_receive_chars(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  store %struct.tty_struct* null, %struct.tty_struct** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %12 = call i32 @ZS_IS_OPEN(%struct.uart_pmac_port* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %1
  %15 = call i32 @pmz_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %41, %14
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = icmp sgt i32 %18, 1000
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %313

21:                                               ; preds = %16
  %22 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %23 = load i64, i64* @R1, align 8
  %24 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %22, i64 %23)
  %25 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %26 = load i64, i64* @R0, align 8
  %27 = load i32, i32* @ERR_RES, align 4
  %28 = call i32 @write_zsreg(%struct.uart_pmac_port* %25, i64 %26, i32 %27)
  %29 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %30 = call zeroext i8 @read_zsdata(%struct.uart_pmac_port* %29)
  %31 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %32 = load i64, i64* @R0, align 8
  %33 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %31, i64 %32)
  store i8 %33, i8* %5, align 1
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @Rx_CH_AV, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %21
  br label %42

41:                                               ; preds = %21
  br label %16

42:                                               ; preds = %40
  store %struct.tty_struct* null, %struct.tty_struct** %2, align 8
  br label %345

43:                                               ; preds = %1
  %44 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.tty_struct*, %struct.tty_struct** %55, align 8
  %57 = icmp eq %struct.tty_struct* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %49, %43
  %59 = call i32 @WARN_ON(i32 1)
  %60 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %61 = call zeroext i8 @read_zsdata(%struct.uart_pmac_port* %60)
  store %struct.tty_struct* null, %struct.tty_struct** %2, align 8
  br label %345

62:                                               ; preds = %49
  %63 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.tty_struct*, %struct.tty_struct** %68, align 8
  store %struct.tty_struct* %69, %struct.tty_struct** %4, align 8
  br label %70

70:                                               ; preds = %62, %310
  store i8 0, i8* %8, align 1
  store i8 0, i8* %7, align 1
  %71 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %72 = load i64, i64* @R1, align 8
  %73 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %71, i64 %72)
  store i8 %73, i8* %6, align 1
  %74 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %75 = call zeroext i8 @read_zsdata(%struct.uart_pmac_port* %74)
  store i8 %75, i8* %5, align 1
  %76 = load i8, i8* %6, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @PAR_ERR, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @Rx_OVR, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %79, %81
  %83 = load i8, i8* @CRC_ERR, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %82, %84
  %86 = and i32 %77, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %70
  %89 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %90 = load i64, i64* @R0, align 8
  %91 = load i32, i32* @ERR_RES, align 4
  %92 = call i32 @write_zsreg(%struct.uart_pmac_port* %89, i64 %90, i32 %91)
  %93 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %94 = call i32 @zssync(%struct.uart_pmac_port* %93)
  br label %95

95:                                               ; preds = %88, %70
  %96 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %97 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 8
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* %5, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, %99
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %5, align 1
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %95
  %108 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PMACZILOG_FLAG_BREAK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i32, i32* @PMACZILOG_FLAG_BREAK, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %118 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %114, %107, %95
  %122 = load i8, i8* %7, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %294

125:                                              ; preds = %121
  %126 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %126, i8* %9, align 1
  %127 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %128 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load i8, i8* %6, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* @PAR_ERR, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* @Rx_OVR, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %136, %138
  %140 = load i8, i8* @CRC_ERR, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %139, %141
  %143 = load i8, i8* @BRK_ABRT, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = and i32 %134, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %262

148:                                              ; preds = %125
  store i8 1, i8* %8, align 1
  %149 = load i8, i8* %6, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* @BRK_ABRT, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %148
  %156 = call i32 @pmz_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %157 = load i8, i8* @PAR_ERR, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* @CRC_ERR, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %158, %160
  %162 = xor i32 %161, -1
  %163 = load i8, i8* %6, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, %162
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %6, align 1
  %167 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %168 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %174 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %173, i32 0, i32 4
  %175 = call i64 @uart_handle_break(%struct.TYPE_13__* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %155
  br label %294

178:                                              ; preds = %155
  br label %209

179:                                              ; preds = %148
  %180 = load i8, i8* %6, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* @PAR_ERR, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %181, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %188 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  br label %208

193:                                              ; preds = %179
  %194 = load i8, i8* %6, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @CRC_ERR, align 1
  %197 = zext i8 %196 to i32
  %198 = and i32 %195, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %193
  %201 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %202 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %200, %193
  br label %208

208:                                              ; preds = %207, %186
  br label %209

209:                                              ; preds = %208, %178
  %210 = load i8, i8* %6, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8, i8* @Rx_OVR, align 1
  %213 = zext i8 %212 to i32
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %209
  %217 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %218 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %216, %209
  %224 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %225 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = load i8, i8* %226, align 8
  %228 = zext i8 %227 to i32
  %229 = load i8, i8* %6, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %230, %228
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %6, align 1
  %233 = load i8, i8* %6, align 1
  %234 = zext i8 %233 to i32
  %235 = load i8, i8* @BRK_ABRT, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %234, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %223
  %240 = load i8, i8* @TTY_BREAK, align 1
  store i8 %240, i8* %9, align 1
  br label %261

241:                                              ; preds = %223
  %242 = load i8, i8* %6, align 1
  %243 = zext i8 %242 to i32
  %244 = load i8, i8* @PAR_ERR, align 1
  %245 = zext i8 %244 to i32
  %246 = and i32 %243, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = load i8, i8* @TTY_PARITY, align 1
  store i8 %249, i8* %9, align 1
  br label %260

250:                                              ; preds = %241
  %251 = load i8, i8* %6, align 1
  %252 = zext i8 %251 to i32
  %253 = load i8, i8* @CRC_ERR, align 1
  %254 = zext i8 %253 to i32
  %255 = and i32 %252, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i8, i8* @TTY_FRAME, align 1
  store i8 %258, i8* %9, align 1
  br label %259

259:                                              ; preds = %257, %250
  br label %260

260:                                              ; preds = %259, %248
  br label %261

261:                                              ; preds = %260, %239
  br label %262

262:                                              ; preds = %261, %125
  %263 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %264 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 255
  br i1 %267, label %277, label %268

268:                                              ; preds = %262
  %269 = load i8, i8* %6, align 1
  %270 = zext i8 %269 to i32
  %271 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %272 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %270, %274
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %268, %262
  %278 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %279 = load i8, i8* %5, align 1
  %280 = load i8, i8* %9, align 1
  %281 = call i32 @tty_insert_flip_char(%struct.tty_struct* %278, i8 zeroext %279, i8 zeroext %280)
  br label %282

282:                                              ; preds = %277, %268
  %283 = load i8, i8* %6, align 1
  %284 = zext i8 %283 to i32
  %285 = load i8, i8* @Rx_OVR, align 1
  %286 = zext i8 %285 to i32
  %287 = and i32 %284, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %282
  %290 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %291 = load i8, i8* @TTY_OVERRUN, align 1
  %292 = call i32 @tty_insert_flip_char(%struct.tty_struct* %290, i8 zeroext 0, i8 zeroext %291)
  br label %293

293:                                              ; preds = %289, %282
  br label %294

294:                                              ; preds = %293, %177, %124
  %295 = load i32, i32* %10, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %10, align 4
  %297 = icmp sgt i32 %296, 1000
  br i1 %297, label %298, label %299

298:                                              ; preds = %294
  br label %313

299:                                              ; preds = %294
  %300 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %301 = load i64, i64* @R0, align 8
  %302 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %300, i64 %301)
  store i8 %302, i8* %5, align 1
  %303 = load i8, i8* %5, align 1
  %304 = zext i8 %303 to i32
  %305 = load i8, i8* @Rx_CH_AV, align 1
  %306 = zext i8 %305 to i32
  %307 = and i32 %304, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %299
  br label %311

310:                                              ; preds = %299
  br label %70

311:                                              ; preds = %309
  %312 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  store %struct.tty_struct* %312, %struct.tty_struct** %2, align 8
  br label %345

313:                                              ; preds = %298, %20
  %314 = load i32, i32* @EXT_INT_ENAB, align 4
  %315 = load i32, i32* @TxINT_ENAB, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @RxINT_MASK, align 4
  %318 = or i32 %316, %317
  %319 = xor i32 %318, -1
  %320 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %321 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %320, i32 0, i32 2
  %322 = load i32*, i32** %321, align 8
  %323 = load i64, i64* @R1, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = and i32 %325, %319
  store i32 %326, i32* %324, align 4
  %327 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %328 = load i64, i64* @R1, align 8
  %329 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %330 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = load i64, i64* @R1, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @write_zsreg(%struct.uart_pmac_port* %327, i64 %328, i32 %334)
  %336 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %337 = call i32 @zssync(%struct.uart_pmac_port* %336)
  %338 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %339 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %338, i32 0, i32 3
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 0
  %343 = call i32 @dev_err(i32* %342, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %344 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  store %struct.tty_struct* %344, %struct.tty_struct** %2, align 8
  br label %345

345:                                              ; preds = %313, %311, %58, %42
  %346 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  ret %struct.tty_struct* %346
}

declare dso_local i32 @ZS_IS_OPEN(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_debug(i8*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.uart_pmac_port*, i64) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

declare dso_local zeroext i8 @read_zsdata(%struct.uart_pmac_port*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_13__*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
