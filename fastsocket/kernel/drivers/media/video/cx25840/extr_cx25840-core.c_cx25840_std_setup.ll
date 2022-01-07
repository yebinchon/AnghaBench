; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_std_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_std_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PLL regs = int: %u, frac: %u, post: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"PLL = %d.%06d MHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PLL/8 = %d.%06d MHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ADC Sampling freq = %d.%06d MHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Chroma sub-carrier freq = %d.%06d MHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [134 x i8] c"hblank %i, hactive %i, vblank %i, vactive %i, vblank656 %i, src_dec %i, burst 0x%02x, luma_lpf %i, uv_lpf %i, comb 0x%02x, sc 0x%06x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25840_std_setup(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @i2c_get_clientdata(%struct.i2c_client* %22)
  %24 = call %struct.cx25840_state* @to_state(i32 %23)
  store %struct.cx25840_state* %24, %struct.cx25840_state** %3, align 8
  %25 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %26 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @V4L2_STD_NTSC, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = call i32 @cx25840_write(%struct.i2c_client* %34, i32 1183, i32 17)
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = call i32 @cx25840_write(%struct.i2c_client* %37, i32 1183, i32 20)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @V4L2_STD_625_50, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  store i32 132, i32* %5, align 4
  store i32 720, i32* %6, align 4
  store i32 93, i32* %7, align 4
  store i32 36, i32* %8, align 4
  store i32 580, i32* %9, align 4
  store i32 40, i32* %11, align 4
  store i32 543, i32* %12, align 4
  store i32 2, i32* %13, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @V4L2_STD_SECAM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 672351, i32* %10, align 4
  br label %57

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  store i32 32, i32* %15, align 4
  store i32 556453, i32* %10, align 4
  br label %56

55:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  store i32 32, i32* %15, align 4
  store i32 688739, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %49
  br label %71

58:                                               ; preds = %39
  store i32 720, i32* %6, align 4
  store i32 122, i32* %5, align 4
  store i32 487, i32* %9, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 543, i32* %12, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 26, i32* %8, align 4
  store i32 26, i32* %11, align 4
  store i32 91, i32* %7, align 4
  store i32 2, i32* %13, align 4
  store i32 32, i32* %15, align 4
  store i32 688739, i32* %10, align 4
  br label %70

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 20, i32* %8, align 4
  store i32 24, i32* %11, align 4
  store i32 97, i32* %7, align 4
  store i32 32, i32* %15, align 4
  store i32 555452, i32* %10, align 4
  br label %69

68:                                               ; preds = %63
  store i32 26, i32* %8, align 4
  store i32 26, i32* %11, align 4
  store i32 91, i32* %7, align 4
  store i32 102, i32* %15, align 4
  store i32 556063, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70, %57
  %72 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %73 = call i32 @is_cx231xx(%struct.cx25840_state* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %165, label %75

75:                                               ; preds = %71
  %76 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %77 = call i64 @cx25840_read(%struct.i2c_client* %76, i32 264)
  store i64 %77, i64* %16, align 8
  %78 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %79 = call i32 @cx25840_read4(%struct.i2c_client* %78, i32 268)
  %80 = and i32 %79, 33554431
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %17, align 8
  %82 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %83 = call i64 @cx25840_read(%struct.i2c_client* %82, i32 265)
  store i64 %83, i64* %18, align 8
  %84 = load i32, i32* @cx25840_debug, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %86 = load i64, i64* %16, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* %17, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* %18, align 8
  %91 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %84, %struct.i2c_client* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %89, i64 %90)
  %92 = load i64, i64* %18, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %164

94:                                               ; preds = %75
  %95 = load i64, i64* %16, align 8
  %96 = shl i64 %95, 25
  %97 = load i64, i64* %17, align 8
  %98 = add nsw i64 %96, %97
  %99 = mul nsw i64 28636363, %98
  %100 = ashr i64 %99, 25
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %21, align 4
  %102 = load i64, i64* %18, align 8
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = sdiv i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %21, align 4
  %107 = load i32, i32* @cx25840_debug, align 4
  %108 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %109 = load i32, i32* %21, align 4
  %110 = sdiv i32 %109, 1000000
  %111 = load i32, i32* %21, align 4
  %112 = srem i32 %111, 1000000
  %113 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %107, %struct.i2c_client* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %112)
  %114 = load i32, i32* @cx25840_debug, align 4
  %115 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sdiv i32 %116, 8000000
  %118 = load i32, i32* %21, align 4
  %119 = sdiv i32 %118, 8
  %120 = srem i32 %119, 1000000
  %121 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %114, %struct.i2c_client* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %123, %125
  %127 = ashr i64 %126, 12
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* @cx25840_debug, align 4
  %130 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sdiv i32 %131, 1000000
  %133 = load i32, i32* %19, align 4
  %134 = srem i32 %133, 1000000
  %135 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %129, %struct.i2c_client* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %137, %139
  %141 = ashr i64 %140, 24
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* @cx25840_debug, align 4
  %144 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %145 = load i32, i32* %20, align 4
  %146 = sdiv i32 %145, 1000000
  %147 = load i32, i32* %20, align 4
  %148 = srem i32 %147, 1000000
  %149 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %143, %struct.i2c_client* %144, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %148)
  %150 = load i32, i32* @cx25840_debug, align 4
  %151 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) @v4l_dbg(i32 1, i32 %150, %struct.i2c_client* %151, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %94, %75
  br label %165

165:                                              ; preds = %164, %71
  %166 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @cx25840_write(%struct.i2c_client* %166, i32 1136, i32 %167)
  %169 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %170 = load i32, i32* %5, align 4
  %171 = ashr i32 %170, 8
  %172 = and i32 %171, 3
  %173 = load i32, i32* %6, align 4
  %174 = shl i32 %173, 4
  %175 = or i32 %172, %174
  %176 = and i32 255, %175
  %177 = call i32 @cx25840_write(%struct.i2c_client* %169, i32 1137, i32 %176)
  %178 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %179 = load i32, i32* %6, align 4
  %180 = ashr i32 %179, 4
  %181 = call i32 @cx25840_write(%struct.i2c_client* %178, i32 1138, i32 %180)
  %182 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @cx25840_write(%struct.i2c_client* %182, i32 1139, i32 %183)
  %185 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @cx25840_write(%struct.i2c_client* %185, i32 1140, i32 %186)
  %188 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %189 = load i32, i32* %8, align 4
  %190 = ashr i32 %189, 8
  %191 = and i32 %190, 3
  %192 = load i32, i32* %9, align 4
  %193 = shl i32 %192, 4
  %194 = or i32 %191, %193
  %195 = and i32 255, %194
  %196 = call i32 @cx25840_write(%struct.i2c_client* %188, i32 1141, i32 %195)
  %197 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %198 = load i32, i32* %9, align 4
  %199 = ashr i32 %198, 4
  %200 = call i32 @cx25840_write(%struct.i2c_client* %197, i32 1142, i32 %199)
  %201 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @cx25840_write(%struct.i2c_client* %201, i32 1143, i32 %202)
  %204 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %205 = load i32, i32* %12, align 4
  %206 = and i32 255, %205
  %207 = call i32 @cx25840_write(%struct.i2c_client* %204, i32 1144, i32 %206)
  %208 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %209 = load i32, i32* %12, align 4
  %210 = ashr i32 %209, 8
  %211 = and i32 255, %210
  %212 = call i32 @cx25840_write(%struct.i2c_client* %208, i32 1145, i32 %211)
  %213 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %214 = load i32, i32* %13, align 4
  %215 = shl i32 %214, 6
  %216 = load i32, i32* %14, align 4
  %217 = shl i32 %216, 4
  %218 = and i32 %217, 48
  %219 = or i32 %215, %218
  %220 = call i32 @cx25840_write(%struct.i2c_client* %213, i32 1146, i32 %219)
  %221 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @cx25840_write(%struct.i2c_client* %221, i32 1147, i32 %222)
  %224 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @cx25840_write(%struct.i2c_client* %224, i32 1148, i32 %225)
  %227 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %228 = load i32, i32* %10, align 4
  %229 = ashr i32 %228, 8
  %230 = and i32 255, %229
  %231 = call i32 @cx25840_write(%struct.i2c_client* %227, i32 1149, i32 %230)
  %232 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %233 = load i32, i32* %10, align 4
  %234 = ashr i32 %233, 16
  %235 = and i32 255, %234
  %236 = call i32 @cx25840_write(%struct.i2c_client* %232, i32 1150, i32 %235)
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @V4L2_STD_625_50, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %165
  %242 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %243 = call i32 @cx25840_write(%struct.i2c_client* %242, i32 1151, i32 1)
  %244 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %245 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %244, i32 0, i32 1
  store i32 5, i32* %245, align 4
  br label %251

246:                                              ; preds = %165
  %247 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %248 = call i32 @cx25840_write(%struct.i2c_client* %247, i32 1151, i32 0)
  %249 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %250 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %249, i32 0, i32 1
  store i32 8, i32* %250, align 4
  br label %251

251:                                              ; preds = %246, %241
  ret void
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i64 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
