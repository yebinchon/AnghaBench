; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_handle_ser_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_handle_ser_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.e100_serial = type { i8*, i64, i64, i64, i8, i64, i32, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@REG_STATUS = common dso_local global i64 0, align 8
@R_SERIAL0_STATUS = common dso_local global i32 0, align 4
@xoff_detect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"XOFF detect\0A\00", align 1
@SER_ERROR_MASK = common dso_local global i8 0, align 1
@jiffies = common dso_local global i8* null, align 8
@REG_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"ser_rx!  %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ser_rx err stat %02X\0A\00", align 1
@SER_FRAMING_ERR_MASK = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"#BRK start\0A\00", align 1
@SER_RXD_MASK = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"# BL BRK\0A\00", align 1
@ERRCODE_INSERT_BREAK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"EBRK %i\0A\00", align 1
@TTY_BREAK = common dso_local global i32 0, align 4
@SER_PAR_ERR_MASK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i32 0, align 4
@SER_OVERRUN_MASK = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"#iERR s d %04X\0A\00", align 1
@ser_stat = common dso_local global %struct.TYPE_4__* null, align 8
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"FBRK %i\0A\00", align 1
@ERRCODE_SET_BREAK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"Not end of BRK (V)%i\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"num brk %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ser_rx OK %d\0A\00", align 1
@R_DMA_CH6_CMD = common dso_local global i32 0, align 4
@cmd = common dso_local global i32 0, align 4
@restart = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"ser_int\00", align 1
@i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.e100_serial* (%struct.e100_serial*)* @handle_ser_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.e100_serial* @handle_ser_rx_interrupt(%struct.e100_serial* %0) #0 {
  %2 = alloca %struct.e100_serial*, align 8
  %3 = alloca %struct.e100_serial*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e100_serial* %0, %struct.e100_serial** %3, align 8
  %9 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %10 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %15 = call %struct.e100_serial* @handle_ser_rx_interrupt_no_dma(%struct.e100_serial* %14)
  store %struct.e100_serial* %15, %struct.e100_serial** %2, align 8
  br label %319

16:                                               ; preds = %1
  %17 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %18 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* @REG_STATUS, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %4, align 1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* @R_SERIAL0_STATUS, align 4
  %26 = load i32, i32* @xoff_detect, align 4
  %27 = call zeroext i8 @IO_MASK(i32 %25, i32 %26)
  %28 = zext i8 %27 to i32
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %16
  %32 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %33 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @DEBUG_LOG(i64 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8 zeroext 0)
  %36 = call i32 @DFLOW(i32 %35)
  br label %37

37:                                               ; preds = %31, %16
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @SER_ERROR_MASK, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %224

44:                                               ; preds = %37
  %45 = call i8* (...) @GET_JIFFIES_USEC()
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %48 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** @jiffies, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %52 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %54 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* @REG_DATA, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %5, align 1
  %59 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %60 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i8, i8* %5, align 1
  %63 = call i32 @DEBUG_LOG(i64 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %62)
  %64 = call i32 @DINTR1(i32 %63)
  %65 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %66 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i8, i8* %4, align 1
  %69 = call i32 @DEBUG_LOG(i64 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %68)
  %70 = call i32 @DINTR1(i32 %69)
  %71 = load i8, i8* %5, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %110, label %73

73:                                               ; preds = %44
  %74 = load i8, i8* %4, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @SER_FRAMING_ERR_MASK, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %73
  %81 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %82 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %81, i32 0, i32 4
  %83 = load i8, i8* %82, align 8
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %87 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @DEBUG_LOG(i64 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8 zeroext 0)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i8, i8* %4, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @SER_RXD_MASK, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %99 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @DEBUG_LOG(i64 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8 zeroext 0)
  %102 = load i64, i64* @ERRCODE_INSERT_BREAK, align 8
  %103 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %104 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %97, %90
  %106 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %107 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %106, i32 0, i32 4
  %108 = load i8, i8* %107, align 8
  %109 = add i8 %108, 1
  store i8 %109, i8* %107, align 8
  br label %214

110:                                              ; preds = %73, %44
  %111 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %112 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %111, i32 0, i32 4
  %113 = load i8, i8* %112, align 8
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %117 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %120 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %119, i32 0, i32 4
  %121 = load i8, i8* %120, align 8
  %122 = call i32 @DEBUG_LOG(i64 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8 zeroext %121)
  %123 = load i64, i64* @ERRCODE_INSERT_BREAK, align 8
  %124 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %125 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  br label %197

126:                                              ; preds = %110
  %127 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %128 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ERRCODE_INSERT_BREAK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %134 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %139 = load i32, i32* @TTY_BREAK, align 4
  %140 = call i32 @add_char_and_flag(%struct.e100_serial* %138, i8 zeroext 0, i32 %139)
  br label %141

141:                                              ; preds = %132, %126
  %142 = load i8, i8* %4, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, i8* @SER_PAR_ERR_MASK, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %143, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %150 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  %154 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %155 = load i8, i8* %5, align 1
  %156 = load i32, i32* @TTY_PARITY, align 4
  %157 = call i32 @add_char_and_flag(%struct.e100_serial* %154, i8 zeroext %155, i32 %156)
  br label %194

158:                                              ; preds = %141
  %159 = load i8, i8* %4, align 1
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* @SER_OVERRUN_MASK, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %167 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %172 = load i8, i8* %5, align 1
  %173 = load i32, i32* @TTY_OVERRUN, align 4
  %174 = call i32 @add_char_and_flag(%struct.e100_serial* %171, i8 zeroext %172, i32 %173)
  br label %193

175:                                              ; preds = %158
  %176 = load i8, i8* %4, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* @SER_FRAMING_ERR_MASK, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %175
  %183 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %184 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  %188 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %189 = load i8, i8* %5, align 1
  %190 = load i32, i32* @TTY_FRAME, align 4
  %191 = call i32 @add_char_and_flag(%struct.e100_serial* %188, i8 zeroext %189, i32 %190)
  br label %192

192:                                              ; preds = %182, %175
  br label %193

193:                                              ; preds = %192, %165
  br label %194

194:                                              ; preds = %193, %148
  %195 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %196 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %195, i32 0, i32 5
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %194, %115
  %198 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %199 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %198, i32 0, i32 4
  store i8 0, i8* %199, align 8
  %200 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %201 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i8, i8* %4, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, i8* @SER_ERROR_MASK, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %204, %206
  %208 = shl i32 %207, 8
  %209 = load i8, i8* %5, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %208, %210
  %212 = trunc i32 %211 to i8
  %213 = call i32 @DEBUG_LOG(i64 %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8 zeroext %212)
  br label %214

214:                                              ; preds = %197, %105
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ser_stat, align 8
  %216 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %217 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = call i32 @PROCSTAT(i32 %221)
  br label %308

224:                                              ; preds = %37
  %225 = call i8* (...) @GET_JIFFIES_USEC()
  %226 = ptrtoint i8* %225 to i64
  store i64 %226, i64* %6, align 8
  %227 = load i8*, i8** @jiffies, align 8
  %228 = ptrtoint i8* %227 to i64
  store i64 %228, i64* %7, align 8
  %229 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %230 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %229, i32 0, i32 4
  %231 = load i8, i8* %230, align 8
  %232 = icmp ne i8 %231, 0
  br i1 %232, label %233, label %285

233:                                              ; preds = %224
  %234 = load i64, i64* %7, align 8
  %235 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %236 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = sub i64 %234, %237
  %239 = load i32, i32* @HZ, align 4
  %240 = sdiv i32 1000000, %239
  %241 = sext i32 %240 to i64
  %242 = mul i64 %238, %241
  %243 = load i64, i64* %6, align 8
  %244 = add i64 %242, %243
  %245 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %246 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = sub i64 %244, %247
  store i64 %248, i64* %8, align 8
  %249 = load i64, i64* %8, align 8
  %250 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %251 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = mul nsw i32 2, %252
  %254 = sext i32 %253 to i64
  %255 = icmp slt i64 %249, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %233
  %257 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %258 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %261 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i8
  %264 = call i32 @DEBUG_LOG(i64 %259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8 zeroext %263)
  %265 = load i64, i64* @ERRCODE_SET_BREAK, align 8
  %266 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %267 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %266, i32 0, i32 5
  store i64 %265, i64* %267, align 8
  br label %277

268:                                              ; preds = %233
  %269 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %270 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %273 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = trunc i64 %274 to i8
  %276 = call i32 @DEBUG_LOG(i64 %271, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8 zeroext %275)
  br label %277

277:                                              ; preds = %268, %256
  %278 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %279 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %282 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %281, i32 0, i32 4
  %283 = load i8, i8* %282, align 8
  %284 = call i32 @DEBUG_LOG(i64 %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8 zeroext %283)
  br label %285

285:                                              ; preds = %277, %224
  %286 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %287 = call i32 @e100_disable_serial_data_irq(%struct.e100_serial* %286)
  %288 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %289 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %292 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i8
  %295 = call i32 @DEBUG_LOG(i64 %290, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8 zeroext %294)
  %296 = call i32 @DINTR2(i32 %295)
  %297 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %298 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %297, i32 0, i32 4
  store i8 0, i8* %298, align 8
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ser_stat, align 8
  %300 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %301 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 4
  %307 = call i32 @PROCSTAT(i32 %305)
  br label %308

308:                                              ; preds = %285, %214
  %309 = load i32, i32* @R_DMA_CH6_CMD, align 4
  %310 = load i32, i32* @cmd, align 4
  %311 = load i32, i32* @restart, align 4
  %312 = call i32 @IO_STATE(i32 %309, i32 %310, i32 %311)
  %313 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %314 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %313, i32 0, i32 7
  %315 = load i32*, i32** %314, align 8
  store i32 %312, i32* %315, align 4
  %316 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %317 = call i32 @START_FLUSH_FAST_TIMER(%struct.e100_serial* %316, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %318 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  store %struct.e100_serial* %318, %struct.e100_serial** %2, align 8
  br label %319

319:                                              ; preds = %308, %13
  %320 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  ret %struct.e100_serial* %320
}

declare dso_local %struct.e100_serial* @handle_ser_rx_interrupt_no_dma(%struct.e100_serial*) #1

declare dso_local zeroext i8 @IO_MASK(i32, i32) #1

declare dso_local i32 @DFLOW(i32) #1

declare dso_local i32 @DEBUG_LOG(i64, i8*, i8 zeroext) #1

declare dso_local i8* @GET_JIFFIES_USEC(...) #1

declare dso_local i32 @DINTR1(i32) #1

declare dso_local i32 @add_char_and_flag(%struct.e100_serial*, i8 zeroext, i32) #1

declare dso_local i32 @PROCSTAT(i32) #1

declare dso_local i32 @e100_disable_serial_data_irq(%struct.e100_serial*) #1

declare dso_local i32 @DINTR2(i32) #1

declare dso_local i32 @IO_STATE(i32, i32, i32) #1

declare dso_local i32 @START_FLUSH_FAST_TIMER(%struct.e100_serial*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
