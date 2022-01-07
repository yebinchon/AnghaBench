; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_get_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa5246a_device = type { i64* }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@NUM_DAUS = common dso_local global i32 0, align 4
@VTX_PAGESIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SAA5246A_REGISTER_R8 = common dso_local global i32 0, align 4
@R8_DO_NOT_CLEAR_MEMORY = common dso_local global i32 0, align 4
@COMMAND_END = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@POS_TIME_START = common dso_local global i32 0, align 4
@POS_TIME_END = common dso_local global i32 0, align 4
@R8_ACTIVE_CHAPTER_4 = common dso_local global i32 0, align 4
@R9_CURSER_ROW_0 = common dso_local global i32 0, align 4
@POS_HEADER_START = common dso_local global i32 0, align 4
@POS_HEADER_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa5246a_device*, %struct.TYPE_5__*)* @saa5246a_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5246a_get_page(%struct.saa5246a_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa5246a_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.saa5246a_device* %0, %struct.saa5246a_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NUM_DAUS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %40, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VTX_PAGESIZE, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %26, %21, %15, %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %257

43:                                               ; preds = %34
  %44 = load i32, i32* @VTX_PAGESIZE, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %257

52:                                               ; preds = %43
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VTX_PAGESIZE, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @min(i32 %57, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %62 = load i32, i32* @SAA5246A_REGISTER_R8, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @R8_DO_NOT_CLEAR_MEMORY, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ROW(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @COLUMN(i32 %74)
  %76 = load i32, i32* @COMMAND_END, align 4
  %77 = call i64 @i2c_senddata(%struct.saa5246a_device* %61, i32 %62, i32 %67, i32 %71, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %52
  br label %253

80:                                               ; preds = %52
  %81 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = add nsw i32 %86, 1
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @i2c_getdata(%struct.saa5246a_device* %81, i32 %87, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %253

92:                                               ; preds = %80
  %93 = load i32, i32* @EFAULT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = add nsw i32 %103, 1
  %105 = call i64 @copy_to_user(i64 %97, i8* %98, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %253

108:                                              ; preds = %92
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = call i64 @REQ_CONTAINS_TIME(%struct.TYPE_5__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %173

112:                                              ; preds = %108
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @POS_TIME_START, align 4
  %117 = call i32 @max(i32 %115, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @POS_TIME_END, align 4
  %122 = call i32 @min(i32 %120, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %123, %124
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %112
  br label %253

132:                                              ; preds = %112
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %10, align 4
  %135 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %136 = load i32, i32* @SAA5246A_REGISTER_R8, align 4
  %137 = load i32, i32* @R8_ACTIVE_CHAPTER_4, align 4
  %138 = load i32, i32* @R8_DO_NOT_CLEAR_MEMORY, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @R9_CURSER_ROW_0, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @COMMAND_END, align 4
  %143 = call i64 @i2c_senddata(%struct.saa5246a_device* %135, i32 %136, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %253

146:                                              ; preds = %132
  %147 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i8*, i8** %9, align 8
  %150 = call i64 @i2c_getdata(%struct.saa5246a_device* %147, i32 %148, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %253

153:                                              ; preds = %146
  %154 = load i32, i32* @EFAULT, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %10, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 %161, %165
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i64 @copy_to_user(i64 %166, i8* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %153
  br label %253

172:                                              ; preds = %153
  br label %173

173:                                              ; preds = %172, %108
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = call i64 @REQ_CONTAINS_HEADER(%struct.TYPE_5__* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %252

177:                                              ; preds = %173
  %178 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %179 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %180, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %252

188:                                              ; preds = %177
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @POS_HEADER_START, align 4
  %193 = call i32 @max(i32 %191, i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @POS_HEADER_END, align 4
  %198 = call i32 @min(i32 %196, i32 %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %6, align 4
  %201 = sub nsw i32 %199, %200
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %188
  br label %253

208:                                              ; preds = %188
  %209 = load i32, i32* @EIO, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %10, align 4
  %211 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %212 = load i32, i32* @SAA5246A_REGISTER_R8, align 4
  %213 = load i32, i32* @R8_ACTIVE_CHAPTER_4, align 4
  %214 = load i32, i32* @R8_DO_NOT_CLEAR_MEMORY, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @R9_CURSER_ROW_0, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @COMMAND_END, align 4
  %219 = call i64 @i2c_senddata(%struct.saa5246a_device* %211, i32 %212, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %208
  br label %253

222:                                              ; preds = %208
  %223 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %6, align 4
  %226 = sub nsw i32 %224, %225
  %227 = add nsw i32 %226, 1
  %228 = load i8*, i8** %9, align 8
  %229 = call i64 @i2c_getdata(%struct.saa5246a_device* %223, i32 %227, i8* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  br label %253

232:                                              ; preds = %222
  %233 = load i32, i32* @EFAULT, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %10, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = sub nsw i64 %240, %244
  %246 = load i8*, i8** %9, align 8
  %247 = load i32, i32* %8, align 4
  %248 = call i64 @copy_to_user(i64 %245, i8* %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %232
  br label %253

251:                                              ; preds = %232
  br label %252

252:                                              ; preds = %251, %177, %173
  store i32 0, i32* %10, align 4
  br label %253

253:                                              ; preds = %252, %250, %231, %221, %207, %171, %152, %145, %131, %107, %91, %79
  %254 = load i8*, i8** %9, align 8
  %255 = call i32 @kfree(i8* %254)
  %256 = load i32, i32* %10, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %253, %49, %40
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @i2c_senddata(%struct.saa5246a_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ROW(i32) #1

declare dso_local i32 @COLUMN(i32) #1

declare dso_local i64 @i2c_getdata(%struct.saa5246a_device*, i32, i8*) #1

declare dso_local i64 @copy_to_user(i64, i8*, i32) #1

declare dso_local i64 @REQ_CONTAINS_TIME(%struct.TYPE_5__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @REQ_CONTAINS_HEADER(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
