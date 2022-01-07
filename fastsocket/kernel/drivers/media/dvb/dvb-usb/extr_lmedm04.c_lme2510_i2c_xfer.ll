; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { %struct.lme2510_state* }
%struct.lme2510_state = type { i32, i32, i32, i32 }

@lme2510_i2c_xfer.obuf = internal global [64 x i32] zeroinitializer, align 16
@lme2510_i2c_xfer.ibuf = internal global [512 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [60 x i8] c"more than 2 i2c messagesat a time is not handled yet.\09TODO.\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"i2c transfer failed.\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @lme2510_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.lme2510_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %15)
  store %struct.dvb_usb_device* %16, %struct.dvb_usb_device** %8, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load %struct.lme2510_state*, %struct.lme2510_state** %18, align 8
  store %struct.lme2510_state* %19, %struct.lme2510_state** %9, align 8
  %20 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %21 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 5, i32* %14, align 4
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %247, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %250

36:                                               ; preds = %32
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i64 %39
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @I2C_M_RD, align 4
  %44 = and i32 %42, %43
  %45 = and i32 1, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %36
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i64 %54
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I2C_M_RD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %50, %36
  %62 = phi i1 [ false, %36 ], [ %60, %50 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 %69
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %74 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %61
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %82 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  br label %88

84:                                               ; preds = %77
  %85 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %86 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %83, %80 ], [ %87, %84 ]
  br label %94

90:                                               ; preds = %61
  %91 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %92 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi i32 [ %89, %88 ], [ %93, %90 ]
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 %97, 7
  %99 = or i32 %96, %98
  store i32 %99, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 0), align 16
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %116

102:                                              ; preds = %94
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %114

106:                                              ; preds = %102
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i64 %109
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  br label %114

114:                                              ; preds = %106, %105
  %115 = phi i32 [ 2, %105 ], [ %113, %106 ]
  store i32 %115, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 1), align 4
  br label %126

116:                                              ; preds = %94
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 %119
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %122, %123
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 1), align 4
  br label %126

126:                                              ; preds = %116, %114
  %127 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i64 %129
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 2), align 8
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %177

135:                                              ; preds = %126
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 3, i32* %13, align 4
  br label %176

139:                                              ; preds = %135
  %140 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i64 %142
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %146, i64 %148
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @memcpy(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 3), i32* %145, i32 %151)
  %153 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i64 %156
  %158 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i64 %162
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 3
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 %167
  store i32 %159, i32* %168, align 4
  %169 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i64 %171
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %139, %138
  br label %198

177:                                              ; preds = %126
  %178 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %178, i64 %180
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i64 %186
  %188 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @memcpy(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 3), i32* %183, i32 %189)
  %191 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %191, i64 %193
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 3
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %177, %176
  %199 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %200 = load i32, i32* %13, align 4
  %201 = call i64 @lme2510_msg(%struct.dvb_usb_device* %199, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 0), i32 %200, i32* getelementptr inbounds ([512 x i32], [512 x i32]* @lme2510_i2c_xfer.ibuf, i64 0, i64 0), i32 512)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = call i32 @deb_info(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %205 = load i32, i32* @EAGAIN, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %252

207:                                              ; preds = %198
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %246

210:                                              ; preds = %207
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %210
  %214 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %214, i64 %216
  %218 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %220, i64 %222
  %224 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @memcpy(i32* %219, i32* getelementptr inbounds ([512 x i32], [512 x i32]* @lme2510_i2c_xfer.ibuf, i64 0, i64 1), i32 %225)
  br label %245

227:                                              ; preds = %210
  %228 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %228, i64 %231
  %233 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %235, i64 %238
  %240 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @memcpy(i32* %234, i32* getelementptr inbounds ([512 x i32], [512 x i32]* @lme2510_i2c_xfer.ibuf, i64 0, i64 1), i32 %241)
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %245

245:                                              ; preds = %227, %213
  br label %246

246:                                              ; preds = %245, %207
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %32

250:                                              ; preds = %32
  %251 = load i32, i32* %10, align 4
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %250, %203
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @lme2510_msg(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @deb_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
