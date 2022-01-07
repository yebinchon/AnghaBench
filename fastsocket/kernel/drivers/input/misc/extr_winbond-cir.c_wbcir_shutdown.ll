; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.wbcir_data = type { i64, i64 }

@wake_sc = common dso_local global i64 0, align 8
@INVALID_SCANCODE = common dso_local global i64 0, align 8
@protocol = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"RC5 - Invalid wake scancode\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"NEC - Invalid wake scancode\0A\00", align 1
@wake_rc6mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"RC6 - Invalid wake scancode\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"RC6 - Invalid wake mode\0A\00", align 1
@WBCIR_REG_WCEIR_INDEX = common dso_local global i64 0, align 8
@WBCIR_REGSEL_COMPARE = common dso_local global i32 0, align 4
@WBCIR_REG_ADDR0 = common dso_local global i32 0, align 4
@WBCIR_REG_WCEIR_DATA = common dso_local global i64 0, align 8
@WBCIR_REGSEL_MASK = common dso_local global i32 0, align 4
@WBCIR_REG_WCEIR_CSL = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_STS = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_EV_EN = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CTL = common dso_local global i64 0, align 8
@WBCIR_IRQ_NONE = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @wbcir_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_shutdown(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wbcir_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [11 x i64], align 16
  %7 = alloca [11 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %13 = call %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev* %12)
  store %struct.wbcir_data* %13, %struct.wbcir_data** %4, align 8
  store i32 1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %14 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 0
  %15 = call i32 @memset(i64* %14, i32 0, i32 88)
  %16 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 0
  %17 = call i32 @memset(i64* %16, i32 0, i32 88)
  %18 = load i64, i64* @wake_sc, align 8
  %19 = load i64, i64* @INVALID_SCANCODE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @device_may_wakeup(%struct.device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %1
  store i32 0, i32* %5, align 4
  br label %248

26:                                               ; preds = %21
  %27 = load i32, i32* @protocol, align 4
  switch i32 %27, label %246 [
    i32 129, label %28
    i32 130, label %58
    i32 128, label %96
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* @wake_sc, align 8
  %30 = icmp sgt i64 %29, 4095
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %247

34:                                               ; preds = %28
  %35 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 0
  store i64 255, i64* %35, align 16
  %36 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 1
  store i64 23, i64* %36, align 8
  %37 = load i64, i64* @wake_sc, align 8
  %38 = and i64 %37, 63
  %39 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 0
  store i64 %38, i64* %39, align 16
  %40 = load i64, i64* @wake_sc, align 8
  %41 = and i64 %40, 384
  %42 = ashr i64 %41, 1
  %43 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = or i64 %44, %42
  store i64 %45, i64* %43, align 16
  %46 = load i64, i64* @wake_sc, align 8
  %47 = and i64 %46, 3584
  %48 = ashr i64 %47, 9
  %49 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 1
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @wake_sc, align 8
  %51 = and i64 %50, 64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %34
  %54 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, 16
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %53, %34
  br label %247

58:                                               ; preds = %26
  %59 = load i64, i64* @wake_sc, align 8
  %60 = icmp sgt i64 %59, 16777215
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %247

64:                                               ; preds = %58
  %65 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 3
  store i64 255, i64* %65, align 8
  %66 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 2
  store i64 255, i64* %66, align 16
  %67 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 1
  store i64 255, i64* %67, align 8
  %68 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 0
  store i64 255, i64* %68, align 16
  %69 = load i64, i64* @wake_sc, align 8
  %70 = and i64 %69, 255
  %71 = call i64 @bitrev8(i64 %70)
  %72 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 1
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = xor i64 %74, -1
  %76 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 0
  store i64 %75, i64* %76, align 16
  %77 = load i64, i64* @wake_sc, align 8
  %78 = and i64 %77, 65280
  %79 = ashr i64 %78, 8
  %80 = call i64 @bitrev8(i64 %79)
  %81 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 3
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* @wake_sc, align 8
  %83 = icmp sgt i64 %82, 65535
  br i1 %83, label %84, label %90

84:                                               ; preds = %64
  %85 = load i64, i64* @wake_sc, align 8
  %86 = and i64 %85, 16711680
  %87 = ashr i64 %86, 16
  %88 = call i64 @bitrev8(i64 %87)
  %89 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 2
  store i64 %88, i64* %89, align 16
  br label %95

90:                                               ; preds = %64
  %91 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 3
  %92 = load i64, i64* %91, align 8
  %93 = xor i64 %92, -1
  %94 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 2
  store i64 %93, i64* %94, align 16
  br label %95

95:                                               ; preds = %90, %84
  br label %247

96:                                               ; preds = %26
  %97 = load i32, i32* @wake_rc6mode, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %96
  %100 = load i64, i64* @wake_sc, align 8
  %101 = icmp sgt i64 %100, 65535
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  %103 = load %struct.device*, %struct.device** %3, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %247

105:                                              ; preds = %99
  %106 = load i64, i64* @wake_sc, align 8
  %107 = ashr i64 %106, 0
  %108 = call i64 @wbcir_to_rc6cells(i64 %107)
  %109 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 0
  store i64 %108, i64* %109, align 16
  %110 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 0
  store i64 255, i64* %110, align 16
  %111 = load i64, i64* @wake_sc, align 8
  %112 = ashr i64 %111, 4
  %113 = call i64 @wbcir_to_rc6cells(i64 %112)
  %114 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 1
  store i64 %113, i64* %114, align 8
  %115 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 1
  store i64 255, i64* %115, align 8
  %116 = load i64, i64* @wake_sc, align 8
  %117 = ashr i64 %116, 8
  %118 = call i64 @wbcir_to_rc6cells(i64 %117)
  %119 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 2
  store i64 %118, i64* %119, align 16
  %120 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 2
  store i64 255, i64* %120, align 16
  %121 = load i64, i64* @wake_sc, align 8
  %122 = ashr i64 %121, 12
  %123 = call i64 @wbcir_to_rc6cells(i64 %122)
  %124 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 3
  store i64 %123, i64* %124, align 8
  %125 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 3
  store i64 255, i64* %125, align 8
  %126 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 4
  store i64 80, i64* %126, align 16
  %127 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 4
  store i64 240, i64* %127, align 16
  %128 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 5
  store i64 9, i64* %128, align 8
  %129 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 5
  store i64 15, i64* %129, align 8
  store i64 44, i64* %8, align 8
  br label %245

130:                                              ; preds = %96
  %131 = load i32, i32* @wake_rc6mode, align 4
  %132 = icmp eq i32 %131, 6
  br i1 %132, label %133, label %241

133:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  %134 = load i64, i64* @wake_sc, align 8
  %135 = ashr i64 %134, 0
  %136 = call i64 @wbcir_to_rc6cells(i64 %135)
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %138
  store i64 %136, i64* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %142
  store i64 255, i64* %143, align 8
  %144 = load i64, i64* @wake_sc, align 8
  %145 = ashr i64 %144, 4
  %146 = call i64 @wbcir_to_rc6cells(i64 %145)
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %148
  store i64 %146, i64* %149, align 8
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %152
  store i64 255, i64* %153, align 8
  %154 = load i64, i64* @wake_sc, align 8
  %155 = ashr i64 %154, 8
  %156 = call i64 @wbcir_to_rc6cells(i64 %155)
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %158
  store i64 %156, i64* %159, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %162
  store i64 255, i64* %163, align 8
  %164 = load i64, i64* @wake_sc, align 8
  %165 = ashr i64 %164, 12
  %166 = call i64 @wbcir_to_rc6cells(i64 %165)
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %168
  store i64 %166, i64* %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %172
  store i64 63, i64* %173, align 8
  %174 = load i64, i64* @wake_sc, align 8
  %175 = ashr i64 %174, 16
  %176 = call i64 @wbcir_to_rc6cells(i64 %175)
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %178
  store i64 %176, i64* %179, align 8
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %182
  store i64 255, i64* %183, align 8
  %184 = load i64, i64* @wake_sc, align 8
  %185 = ashr i64 %184, 20
  %186 = call i64 @wbcir_to_rc6cells(i64 %185)
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %188
  store i64 %186, i64* %189, align 8
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %192
  store i64 255, i64* %193, align 8
  %194 = load i64, i64* @wake_sc, align 8
  %195 = and i64 %194, 2147483648
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %133
  %198 = load i64, i64* @wake_sc, align 8
  %199 = ashr i64 %198, 24
  %200 = call i64 @wbcir_to_rc6cells(i64 %199)
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %202
  store i64 %200, i64* %203, align 8
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %206
  store i64 255, i64* %207, align 8
  %208 = load i64, i64* @wake_sc, align 8
  %209 = ashr i64 %208, 28
  %210 = call i64 @wbcir_to_rc6cells(i64 %209)
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %212
  store i64 %210, i64* %213, align 8
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %216
  store i64 255, i64* %217, align 8
  store i64 76, i64* %8, align 8
  br label %226

218:                                              ; preds = %133
  %219 = load i64, i64* @wake_sc, align 8
  %220 = icmp sle i64 %219, 8388607
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i64 60, i64* %8, align 8
  br label %225

222:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  %223 = load %struct.device*, %struct.device** %3, align 8
  %224 = call i32 @dev_err(%struct.device* %223, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %247

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %225, %197
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %228
  store i64 147, i64* %229, align 8
  %230 = load i32, i32* %9, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %9, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %232
  store i64 255, i64* %233, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 %235
  store i64 10, i64* %236, align 8
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 %239
  store i64 15, i64* %240, align 8
  br label %244

241:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  %242 = load %struct.device*, %struct.device** %3, align 8
  %243 = call i32 @dev_err(%struct.device* %242, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %226
  br label %245

245:                                              ; preds = %244, %105
  br label %247

246:                                              ; preds = %26
  store i32 0, i32* %5, align 4
  br label %247

247:                                              ; preds = %246, %245, %222, %102, %95, %61, %57, %31
  br label %248

248:                                              ; preds = %247, %25
  %249 = load i32, i32* %5, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %309

251:                                              ; preds = %248
  %252 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %253 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @WBCIR_REG_WCEIR_INDEX, align 8
  %256 = add nsw i64 %254, %255
  %257 = load i32, i32* @WBCIR_REGSEL_COMPARE, align 4
  %258 = load i32, i32* @WBCIR_REG_ADDR0, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @wbcir_set_bits(i64 %256, i32 %259, i32 63)
  %261 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %262 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @WBCIR_REG_WCEIR_DATA, align 8
  %265 = add nsw i64 %263, %264
  %266 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i64 0, i64 0
  %267 = call i32 @outsb(i64 %265, i64* %266, i32 11)
  %268 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %269 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @WBCIR_REG_WCEIR_INDEX, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i32, i32* @WBCIR_REGSEL_MASK, align 4
  %274 = load i32, i32* @WBCIR_REG_ADDR0, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @wbcir_set_bits(i64 %272, i32 %275, i32 63)
  %277 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %278 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @WBCIR_REG_WCEIR_DATA, align 8
  %281 = add nsw i64 %279, %280
  %282 = getelementptr inbounds [11 x i64], [11 x i64]* %7, i64 0, i64 0
  %283 = call i32 @outsb(i64 %281, i64* %282, i32 11)
  %284 = load i64, i64* %8, align 8
  %285 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %286 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @WBCIR_REG_WCEIR_CSL, align 8
  %289 = add nsw i64 %287, %288
  %290 = call i32 @outb(i64 %284, i64 %289)
  %291 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %292 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @WBCIR_REG_WCEIR_STS, align 8
  %295 = add nsw i64 %293, %294
  %296 = call i32 @wbcir_set_bits(i64 %295, i32 23, i32 23)
  %297 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %298 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @wbcir_set_bits(i64 %301, i32 1, i32 7)
  %303 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %304 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %307 = add nsw i64 %305, %306
  %308 = call i32 @wbcir_set_bits(i64 %307, i32 1, i32 1)
  br label %322

309:                                              ; preds = %248
  %310 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %311 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %314 = add nsw i64 %312, %313
  %315 = call i32 @wbcir_set_bits(i64 %314, i32 0, i32 7)
  %316 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %317 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %320 = add nsw i64 %318, %319
  %321 = call i32 @wbcir_set_bits(i64 %320, i32 0, i32 1)
  br label %322

322:                                              ; preds = %309, %251
  %323 = load i64, i64* @WBCIR_IRQ_NONE, align 8
  %324 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %325 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @WBCIR_REG_SP3_IER, align 8
  %328 = add nsw i64 %326, %327
  %329 = call i32 @outb(i64 %323, i64 %328)
  ret void
}

declare dso_local %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @bitrev8(i64) #1

declare dso_local i64 @wbcir_to_rc6cells(i64) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

declare dso_local i32 @outsb(i64, i64*, i32) #1

declare dso_local i32 @outb(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
