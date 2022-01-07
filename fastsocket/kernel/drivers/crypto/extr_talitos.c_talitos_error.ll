; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, i64 }

@TALITOS_TIMEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TALITOS_CCPSR_LO_DOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"double fetch fifo overflow error\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@TALITOS_CCPSR_LO_SOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"single fetch fifo overflow error\0A\00", align 1
@TALITOS_CCPSR_LO_MDTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"master data transfer error\0A\00", align 1
@TALITOS_CCPSR_LO_SGDLZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"s/g data length zero error\0A\00", align 1
@TALITOS_CCPSR_LO_FPZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"fetch pointer zero error\0A\00", align 1
@TALITOS_CCPSR_LO_IDH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"illegal descriptor header error\0A\00", align 1
@TALITOS_CCPSR_LO_IEU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"invalid execution unit error\0A\00", align 1
@TALITOS_CCPSR_LO_EU = common dso_local global i32 0, align 4
@TALITOS_CCPSR_LO_GB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"gather boundary error\0A\00", align 1
@TALITOS_CCPSR_LO_GRL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"gather return/length error\0A\00", align 1
@TALITOS_CCPSR_LO_SB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"scatter boundary error\0A\00", align 1
@TALITOS_CCPSR_LO_SRL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"scatter return/length error\0A\00", align 1
@TALITOS_CCCR_CONT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to restart channel %d\0A\00", align 1
@TALITOS_ISR_CHERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [66 x i8] c"done overflow, internal time out, or rngu error: ISR 0x%08x_%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @talitos_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @talitos_error(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.talitos_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i64, i64* %4, align 8
  %17 = inttoptr i64 %16 to %struct.device*
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %18)
  store %struct.talitos_private* %19, %struct.talitos_private** %8, align 8
  %20 = load i32, i32* @TALITOS_TIMEOUT, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %212, %3
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %24 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %215

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %30, 1
  %32 = shl i32 1, %31
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %212

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %40 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @TALITOS_CCPSR(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @in_be32(i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %47 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @TALITOS_CCPSR_LO(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @in_be32(i64 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @TALITOS_CCPSR_LO_DOF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %36
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %62

62:                                               ; preds = %57, %36
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @TALITOS_CCPSR_LO_SOF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @TALITOS_CCPSR_LO_MDTE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @TALITOS_CCPSR_LO_SGDLZ, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @TALITOS_CCPSR_LO_FPZ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @TALITOS_CCPSR_LO_IDH, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @TALITOS_CCPSR_LO_IEU, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @TALITOS_CCPSR_LO_EU, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.device*, %struct.device** %7, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @current_desc(%struct.device* %120, i32 %121)
  %123 = call i32 @report_eu_error(%struct.device* %118, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %117, %112
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @TALITOS_CCPSR_LO_GB, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.device*, %struct.device** %7, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @TALITOS_CCPSR_LO_GRL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.device*, %struct.device** %7, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @TALITOS_CCPSR_LO_SB, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.device*, %struct.device** %7, align 8
  %147 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @TALITOS_CCPSR_LO_SRL, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.device*, %struct.device** %7, align 8
  %155 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %154, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.device*, %struct.device** %7, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @flush_channel(%struct.device* %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load %struct.device*, %struct.device** %7, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @reset_channel(%struct.device* %165, i32 %166)
  br label %211

168:                                              ; preds = %156
  %169 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %170 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i64 @TALITOS_CCCR(i32 %172)
  %174 = add nsw i64 %171, %173
  %175 = load i32, i32* @TALITOS_CCCR_CONT, align 4
  %176 = call i32 @setbits32(i64 %174, i32 %175)
  %177 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %178 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @TALITOS_CCCR_LO(i32 %180)
  %182 = add nsw i64 %179, %181
  %183 = call i32 @setbits32(i64 %182, i32 0)
  br label %184

184:                                              ; preds = %201, %168
  %185 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %186 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i64 @TALITOS_CCCR(i32 %188)
  %190 = add nsw i64 %187, %189
  %191 = call i32 @in_be32(i64 %190)
  %192 = load i32, i32* @TALITOS_CCCR_CONT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %184
  %196 = load i32, i32* %9, align 4
  %197 = add i32 %196, -1
  store i32 %197, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br label %199

199:                                              ; preds = %195, %184
  %200 = phi i1 [ false, %184 ], [ %198, %195 ]
  br i1 %200, label %201, label %203

201:                                              ; preds = %199
  %202 = call i32 (...) @cpu_relax()
  br label %184

203:                                              ; preds = %199
  %204 = load i32, i32* %9, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.device*, %struct.device** %7, align 8
  %208 = load i32, i32* %10, align 4
  %209 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %208)
  store i32 1, i32* %12, align 4
  br label %210

210:                                              ; preds = %206, %203
  br label %211

211:                                              ; preds = %210, %164
  br label %212

212:                                              ; preds = %211, %35
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %21

215:                                              ; preds = %21
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* @TALITOS_ISR_CHERR, align 4
  %221 = xor i32 %220, -1
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %218
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %250

227:                                              ; preds = %224, %218, %215
  %228 = load %struct.device*, %struct.device** %7, align 8
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %228, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i32 %229, i32 %230)
  store i32 0, i32* %10, align 4
  br label %232

232:                                              ; preds = %244, %227
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %235 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %247

238:                                              ; preds = %232
  %239 = load %struct.device*, %struct.device** %7, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @EIO, align 4
  %242 = sub nsw i32 0, %241
  %243 = call i32 @flush_channel(%struct.device* %239, i32 %240, i32 %242, i32 1)
  br label %244

244:                                              ; preds = %238
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  br label %232

247:                                              ; preds = %232
  %248 = load %struct.device*, %struct.device** %7, align 8
  %249 = call i32 @init_device(%struct.device* %248)
  br label %250

250:                                              ; preds = %247, %224
  ret void
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i64 @TALITOS_CCPSR(i32) #1

declare dso_local i64 @TALITOS_CCPSR_LO(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @report_eu_error(%struct.device*, i32, i32) #1

declare dso_local i32 @current_desc(%struct.device*, i32) #1

declare dso_local i32 @flush_channel(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @reset_channel(%struct.device*, i32) #1

declare dso_local i32 @setbits32(i64, i32) #1

declare dso_local i64 @TALITOS_CCCR(i32) #1

declare dso_local i64 @TALITOS_CCCR_LO(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @init_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
