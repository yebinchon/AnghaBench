; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64 }
%struct.lcs_card = type { i32, %struct.lcs_channel, %struct.lcs_channel }
%struct.lcs_channel = type { i64, i32, i32, %struct.ccw_device*, i64, %struct.ccw1* }
%struct.ccw1 = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Rint%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%4x%4x\00", align 1
@DEV_STAT_UNIT_EXCEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"The LCS device stopped because of an error, dstat=0x%X, cstat=0x%X \0A\00", align 1
@LCS_CH_STATE_ERROR = common dso_local global i64 0, align 8
@LCS_CH_STATE_INIT = common dso_local global i64 0, align 8
@SCSW_FCTL_START_FUNC = common dso_local global i32 0, align 4
@SCSW_ACTL_SUSPENDED = common dso_local global i32 0, align 4
@SCHN_STAT_PCI = common dso_local global i32 0, align 4
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@LCS_CH_STATE_STOPPED = common dso_local global i64 0, align 8
@LCS_CH_STATE_SUSPENDED = common dso_local global i64 0, align 8
@SCSW_FCTL_HALT_FUNC = common dso_local global i32 0, align 4
@LCS_CH_STATE_HALTED = common dso_local global i64 0, align 8
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@LCS_CH_STATE_CLEARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, %struct.irb*)* @lcs_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_irq(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.lcs_card*, align 8
  %8 = alloca %struct.lcs_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %14 = load %struct.irb*, %struct.irb** %6, align 8
  %15 = call i64 @lcs_check_irb_error(%struct.ccw_device* %13, %struct.irb* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %287

18:                                               ; preds = %3
  %19 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %20 = call %struct.lcs_card* @CARD_FROM_DEV(%struct.ccw_device* %19)
  store %struct.lcs_card* %20, %struct.lcs_card** %7, align 8
  %21 = load %struct.lcs_card*, %struct.lcs_card** %7, align 8
  %22 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %22, i32 0, i32 3
  %24 = load %struct.ccw_device*, %struct.ccw_device** %23, align 8
  %25 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %26 = icmp eq %struct.ccw_device* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.lcs_card*, %struct.lcs_card** %7, align 8
  %29 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %28, i32 0, i32 2
  store %struct.lcs_channel* %29, %struct.lcs_channel** %8, align 8
  br label %33

30:                                               ; preds = %18
  %31 = load %struct.lcs_card*, %struct.lcs_card** %7, align 8
  %32 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %31, i32 0, i32 1
  store %struct.lcs_channel* %32, %struct.lcs_channel** %8, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.irb*, %struct.irb** %6, align 8
  %35 = getelementptr inbounds %struct.irb, %struct.irb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = load %struct.irb*, %struct.irb** %6, align 8
  %40 = getelementptr inbounds %struct.irb, %struct.irb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @trace, align 4
  %45 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 0
  %47 = call i32 @dev_name(i32* %46)
  %48 = call i32 (i32, i32, i8*, i32, ...) @LCS_DBF_TEXT_(i32 5, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @trace, align 4
  %50 = load %struct.irb*, %struct.irb** %6, align 8
  %51 = getelementptr inbounds %struct.irb, %struct.irb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.irb*, %struct.irb** %6, align 8
  %56 = getelementptr inbounds %struct.irb, %struct.irb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i32, i8*, i32, ...) @LCS_DBF_TEXT_(i32 5, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %59)
  %61 = load i32, i32* @trace, align 4
  %62 = load %struct.irb*, %struct.irb** %6, align 8
  %63 = getelementptr inbounds %struct.irb, %struct.irb* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.irb*, %struct.irb** %6, align 8
  %68 = getelementptr inbounds %struct.irb, %struct.irb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i32, i8*, i32, ...) @LCS_DBF_TEXT_(i32 5, i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %71)
  %73 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %74 = load %struct.irb*, %struct.irb** %6, align 8
  %75 = call i32 @lcs_get_problem(%struct.ccw_device* %73, %struct.irb* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %33
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @DEV_STAT_UNIT_EXCEP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78, %33
  %84 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %85 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %84, i32 0, i32 0
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @dev_warn(i32* %85, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i64, i64* @LCS_CH_STATE_ERROR, align 8
  %93 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %94 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %83
  br label %96

96:                                               ; preds = %95, %78
  %97 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %98 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @LCS_CH_STATE_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.lcs_card*, %struct.lcs_card** %7, align 8
  %104 = call i32 @lcs_schedule_recovery(%struct.lcs_card* %103)
  %105 = load %struct.lcs_card*, %struct.lcs_card** %7, align 8
  %106 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %105, i32 0, i32 0
  %107 = call i32 @wake_up(i32* %106)
  br label %287

108:                                              ; preds = %96
  %109 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %110 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @LCS_CH_STATE_INIT, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %198

114:                                              ; preds = %108
  %115 = load %struct.irb*, %struct.irb** %6, align 8
  %116 = getelementptr inbounds %struct.irb, %struct.irb* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SCSW_FCTL_START_FUNC, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %198

123:                                              ; preds = %114
  %124 = load %struct.irb*, %struct.irb** %6, align 8
  %125 = getelementptr inbounds %struct.irb, %struct.irb* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %198

130:                                              ; preds = %123
  %131 = load %struct.irb*, %struct.irb** %6, align 8
  %132 = getelementptr inbounds %struct.irb, %struct.irb* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i64 @__va(i32 %136)
  %138 = inttoptr i64 %137 to %struct.ccw1*
  %139 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %140 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %139, i32 0, i32 5
  %141 = load %struct.ccw1*, %struct.ccw1** %140, align 8
  %142 = ptrtoint %struct.ccw1* %138 to i64
  %143 = ptrtoint %struct.ccw1* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 4
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %10, align 4
  %147 = load %struct.irb*, %struct.irb** %6, align 8
  %148 = getelementptr inbounds %struct.irb, %struct.irb* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SCSW_ACTL_SUSPENDED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %130
  %156 = load %struct.irb*, %struct.irb** %6, align 8
  %157 = getelementptr inbounds %struct.irb, %struct.irb* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SCHN_STAT_PCI, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %155, %130
  %165 = load i32, i32* %10, align 4
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %168 = sub nsw i32 %167, 1
  %169 = and i32 %166, %168
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %164, %155
  br label %171

171:                                              ; preds = %177, %170
  %172 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %173 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %197

177:                                              ; preds = %171
  %178 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %179 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %180 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %183 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %181, %185
  %187 = call i32 @__lcs_processed_buffer(%struct.lcs_channel* %178, i64 %186)
  %188 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %189 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  %192 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %193 = sub nsw i32 %192, 1
  %194 = and i32 %191, %193
  %195 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %196 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 8
  br label %171

197:                                              ; preds = %171
  br label %198

198:                                              ; preds = %197, %123, %114, %108
  %199 = load %struct.irb*, %struct.irb** %6, align 8
  %200 = getelementptr inbounds %struct.irb, %struct.irb* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %225, label %207

207:                                              ; preds = %198
  %208 = load %struct.irb*, %struct.irb** %6, align 8
  %209 = getelementptr inbounds %struct.irb, %struct.irb* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %207
  %217 = load %struct.irb*, %struct.irb** %6, align 8
  %218 = getelementptr inbounds %struct.irb, %struct.irb* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %216, %207, %198
  %226 = load i64, i64* @LCS_CH_STATE_STOPPED, align 8
  %227 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %228 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  br label %243

229:                                              ; preds = %216
  %230 = load %struct.irb*, %struct.irb** %6, align 8
  %231 = getelementptr inbounds %struct.irb, %struct.irb* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @SCSW_ACTL_SUSPENDED, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %229
  %239 = load i64, i64* @LCS_CH_STATE_SUSPENDED, align 8
  %240 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %241 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  br label %242

242:                                              ; preds = %238, %229
  br label %243

243:                                              ; preds = %242, %225
  %244 = load %struct.irb*, %struct.irb** %6, align 8
  %245 = getelementptr inbounds %struct.irb, %struct.irb* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @SCSW_FCTL_HALT_FUNC, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %270

252:                                              ; preds = %243
  %253 = load %struct.irb*, %struct.irb** %6, align 8
  %254 = getelementptr inbounds %struct.irb, %struct.irb* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %252
  %260 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %261 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %260, i32 0, i32 3
  %262 = load %struct.ccw_device*, %struct.ccw_device** %261, align 8
  %263 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %264 = ptrtoint %struct.lcs_channel* %263 to i32
  %265 = call i32 @ccw_device_halt(%struct.ccw_device* %262, i32 %264)
  br label %287

266:                                              ; preds = %252
  %267 = load i64, i64* @LCS_CH_STATE_HALTED, align 8
  %268 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %269 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %266, %243
  %271 = load %struct.irb*, %struct.irb** %6, align 8
  %272 = getelementptr inbounds %struct.irb, %struct.irb* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %270
  %280 = load i64, i64* @LCS_CH_STATE_CLEARED, align 8
  %281 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %282 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  br label %283

283:                                              ; preds = %279, %270
  %284 = load %struct.lcs_channel*, %struct.lcs_channel** %8, align 8
  %285 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %284, i32 0, i32 2
  %286 = call i32 @tasklet_schedule(i32* %285)
  br label %287

287:                                              ; preds = %283, %259, %102, %17
  ret void
}

declare dso_local i64 @lcs_check_irb_error(%struct.ccw_device*, %struct.irb*) #1

declare dso_local %struct.lcs_card* @CARD_FROM_DEV(%struct.ccw_device*) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @lcs_get_problem(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @lcs_schedule_recovery(%struct.lcs_card*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @__lcs_processed_buffer(%struct.lcs_channel*, i64) #1

declare dso_local i32 @ccw_device_halt(%struct.ccw_device*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
