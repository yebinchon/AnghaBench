; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_send_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32*, i32, i32*, i32, i32 }

@pmu_fully_inited = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pmu_data_len = common dso_local global i32** null, align 8
@ADB_RET_OK = common dso_local global i32 0, align 4
@PMU_READ_RTC = common dso_local global i32 0, align 4
@PMU_SET_RTC = common dso_local global i32 0, align 4
@PMU_READ_NVRAM = common dso_local global i32 0, align 4
@PMU_WRITE_NVRAM = common dso_local global i32 0, align 4
@pmu_adb_flags = common dso_local global i32 0, align 4
@PMU_ADB_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adb_request*, i32)* @pmu_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_send_request(%struct.adb_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adb_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @pmu_fully_inited, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %12 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %350

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %19 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %329 [
    i32 128, label %23
    i32 131, label %80
    i32 134, label %274
  ]

23:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %27 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %33 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %41 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %51 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load i32**, i32*** @pmu_data_len, align 8
  %55 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %56 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %54, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %49
  %67 = load i32, i32* @ADB_RET_OK, align 4
  %68 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %69 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %73 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %72, i32 0, i32 4
  store i32 1, i32* %73, align 8
  br label %77

74:                                               ; preds = %49
  %75 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %76 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %75, i32 0, i32 4
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %79 = call i32 @pmu_queue_request(%struct.adb_request* %78)
  store i32 %79, i32* %7, align 4
  br label %329

80:                                               ; preds = %15
  %81 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %82 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %273 [
    i32 132, label %86
    i32 129, label %116
    i32 133, label %168
    i32 130, label %216
  ]

86:                                               ; preds = %80
  %87 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %88 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %273

92:                                               ; preds = %86
  %93 = load i32, i32* @PMU_READ_RTC, align 4
  %94 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %95 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %93, i32* %97, align 4
  %98 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %99 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %101 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %100, i32 0, i32 4
  store i32 3, i32* %101, align 8
  %102 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %103 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 131, i32* %105, align 4
  %106 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %107 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %111 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32 132, i32* %113, align 4
  %114 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %115 = call i32 @pmu_queue_request(%struct.adb_request* %114)
  store i32 %115, i32* %7, align 4
  br label %273

116:                                              ; preds = %80
  %117 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %118 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 6
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %273

122:                                              ; preds = %116
  %123 = load i32, i32* @PMU_SET_RTC, align 4
  %124 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %125 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %123, i32* %127, align 4
  %128 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %129 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %128, i32 0, i32 2
  store i32 5, i32* %129, align 8
  store i32 1, i32* %6, align 4
  br label %130

130:                                              ; preds = %148, %122
  %131 = load i32, i32* %6, align 4
  %132 = icmp sle i32 %131, 4
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %135 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %143 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  br label %148

148:                                              ; preds = %133
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %130

151:                                              ; preds = %130
  %152 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %153 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %152, i32 0, i32 4
  store i32 3, i32* %153, align 8
  %154 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %155 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 131, i32* %157, align 4
  %158 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %159 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 0, i32* %161, align 4
  %162 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %163 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32 129, i32* %165, align 4
  %166 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %167 = call i32 @pmu_queue_request(%struct.adb_request* %166)
  store i32 %167, i32* %7, align 4
  br label %273

168:                                              ; preds = %80
  %169 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %170 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 4
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %273

174:                                              ; preds = %168
  %175 = load i32, i32* @PMU_READ_NVRAM, align 4
  %176 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %177 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %175, i32* %179, align 4
  %180 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %181 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %186 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 %184, i32* %188, align 4
  %189 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %190 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %195 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  store i32 %193, i32* %197, align 4
  %198 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %199 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %198, i32 0, i32 2
  store i32 3, i32* %199, align 8
  %200 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %201 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %200, i32 0, i32 4
  store i32 3, i32* %201, align 8
  %202 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %203 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 131, i32* %205, align 4
  %206 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %207 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 0, i32* %209, align 4
  %210 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %211 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  store i32 133, i32* %213, align 4
  %214 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %215 = call i32 @pmu_queue_request(%struct.adb_request* %214)
  store i32 %215, i32* %7, align 4
  br label %273

216:                                              ; preds = %80
  %217 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %218 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 5
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %273

222:                                              ; preds = %216
  %223 = load i32, i32* @PMU_WRITE_NVRAM, align 4
  %224 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %225 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %223, i32* %227, align 4
  %228 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %229 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %234 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 %232, i32* %236, align 4
  %237 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %238 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %243 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 2
  store i32 %241, i32* %245, align 4
  %246 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %247 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %252 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  store i32 %250, i32* %254, align 4
  %255 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %256 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %255, i32 0, i32 2
  store i32 4, i32* %256, align 8
  %257 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %258 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %257, i32 0, i32 4
  store i32 3, i32* %258, align 8
  %259 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %260 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %259, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 131, i32* %262, align 4
  %263 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %264 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  store i32 0, i32* %266, align 4
  %267 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %268 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %267, i32 0, i32 3
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 2
  store i32 130, i32* %270, align 4
  %271 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %272 = call i32 @pmu_queue_request(%struct.adb_request* %271)
  store i32 %272, i32* %7, align 4
  br label %273

273:                                              ; preds = %80, %222, %221, %174, %173, %151, %121, %92, %91
  br label %329

274:                                              ; preds = %15
  %275 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %276 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %277, 1
  store i32 %278, i32* %6, align 4
  br label %279

279:                                              ; preds = %297, %274
  %280 = load i32, i32* %6, align 4
  %281 = icmp sgt i32 %280, 1
  br i1 %281, label %282, label %300

282:                                              ; preds = %279
  %283 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %284 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %291 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 2
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  store i32 %289, i32* %296, align 4
  br label %297

297:                                              ; preds = %282
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, -1
  store i32 %299, i32* %6, align 4
  br label %279

300:                                              ; preds = %279
  %301 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %302 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %303, 2
  %305 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %306 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 3
  store i32 %304, i32* %308, align 4
  %309 = load i32, i32* @pmu_adb_flags, align 4
  %310 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %311 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 2
  store i32 %309, i32* %313, align 4
  %314 = load i32, i32* @PMU_ADB_CMD, align 4
  %315 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %316 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  store i32 %314, i32* %318, align 4
  %319 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %320 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 2
  store i32 %322, i32* %320, align 8
  %323 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %324 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %323, i32 0, i32 5
  store i32 1, i32* %324, align 4
  %325 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %326 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %325, i32 0, i32 4
  store i32 0, i32* %326, align 8
  %327 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %328 = call i32 @pmu_queue_request(%struct.adb_request* %327)
  store i32 %328, i32* %7, align 4
  br label %329

329:                                              ; preds = %15, %300, %273, %77
  %330 = load i32, i32* %7, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %334 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %333, i32 0, i32 0
  store i32 1, i32* %334, align 8
  %335 = load i32, i32* %7, align 4
  store i32 %335, i32* %3, align 4
  br label %350

336:                                              ; preds = %329
  %337 = load i32, i32* %5, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %349

339:                                              ; preds = %336
  br label %340

340:                                              ; preds = %346, %339
  %341 = load %struct.adb_request*, %struct.adb_request** %4, align 8
  %342 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  %345 = xor i1 %344, true
  br i1 %345, label %346, label %348

346:                                              ; preds = %340
  %347 = call i32 (...) @pmu_poll()
  br label %340

348:                                              ; preds = %340
  br label %349

349:                                              ; preds = %348, %336
  store i32 0, i32* %3, align 4
  br label %350

350:                                              ; preds = %349, %332, %10
  %351 = load i32, i32* %3, align 4
  ret i32 %351
}

declare dso_local i32 @pmu_queue_request(%struct.adb_request*) #1

declare dso_local i32 @pmu_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
