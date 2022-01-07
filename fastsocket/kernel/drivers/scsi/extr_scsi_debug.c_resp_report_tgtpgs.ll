; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_report_tgtpgs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_report_tgtpgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.sdebug_dev_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SDEBUG_MAX_TGTPGS_ARR_SZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@scsi_debug_vpd_use_hostno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_report_tgtpgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_report_tgtpgs(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %6, align 8
  %21 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %22 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 6
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 24
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 7
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 16
  %38 = add nsw i32 %32, %37
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = add nsw i32 %38, %43
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 9
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %44, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @SDEBUG_MAX_TGTPGS_ARR_SZ, align 4
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i8* @kzalloc(i32 %50, i32 %51)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %2
  %56 = load i32, i32* @DID_REQUEUE, align 4
  %57 = shl i32 %56, 16
  store i32 %57, i32* %3, align 4
  br label %281

58:                                               ; preds = %2
  store i32 1, i32* %15, align 4
  store i32 2, i32* %16, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  %61 = and i32 %60, 127
  %62 = shl i32 %61, 8
  %63 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %64 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 127
  %67 = add nsw i32 %62, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  %70 = and i32 %69, 127
  %71 = shl i32 %70, 8
  %72 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %73 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 127
  %76 = add nsw i32 %71, %75
  %77 = add nsw i32 %76, 128
  store i32 %77, i32* %14, align 4
  store i32 4, i32* %9, align 4
  %78 = load i64, i64* @scsi_debug_vpd_use_hostno, align 8
  %79 = icmp eq i64 0, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %58
  %81 = load i32, i32* %8, align 4
  %82 = srem i32 %81, 3
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 %83, i8* %88, align 1
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 15, i8* %93, align 1
  br label %105

94:                                               ; preds = %58
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 1, i8* %104, align 1
  br label %105

105:                                              ; preds = %94, %80
  %106 = load i32, i32* %13, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 255
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 %109, i8* %114, align 1
  %115 = load i32, i32* %13, align 4
  %116 = and i32 %115, 255
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %117, i8* %122, align 1
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8 0, i8* %132, align 1
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 1, i8* %142, align 1
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  store i8 0, i8* %147, align 1
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* %15, align 4
  %154 = ashr i32 %153, 8
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8 %156, i8* %161, align 1
  %162 = load i32, i32* %15, align 4
  %163 = and i32 %162, 255
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 %164, i8* %169, align 1
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 3, i8* %174, align 1
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 8, i8* %179, align 1
  %180 = load i32, i32* %14, align 4
  %181 = ashr i32 %180, 8
  %182 = and i32 %181, 255
  %183 = trunc i32 %182 to i8
  %184 = load i8*, i8** %7, align 8
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  store i8 %183, i8* %188, align 1
  %189 = load i32, i32* %14, align 4
  %190 = and i32 %189, 255
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %7, align 8
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  store i8 %191, i8* %196, align 1
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  store i8 0, i8* %201, align 1
  %202 = load i8*, i8** %7, align 8
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  store i8 0, i8* %206, align 1
  %207 = load i8*, i8** %7, align 8
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  store i8 0, i8* %211, align 1
  %212 = load i8*, i8** %7, align 8
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 1, i8* %216, align 1
  %217 = load i8*, i8** %7, align 8
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 0, i8* %221, align 1
  %222 = load i8*, i8** %7, align 8
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  store i8 0, i8* %226, align 1
  %227 = load i32, i32* %16, align 4
  %228 = ashr i32 %227, 8
  %229 = and i32 %228, 255
  %230 = trunc i32 %229 to i8
  %231 = load i8*, i8** %7, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  store i8 %230, i8* %235, align 1
  %236 = load i32, i32* %16, align 4
  %237 = and i32 %236, 255
  %238 = trunc i32 %237 to i8
  %239 = load i8*, i8** %7, align 8
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  store i8 %238, i8* %243, align 1
  %244 = load i32, i32* %9, align 4
  %245 = sub nsw i32 %244, 4
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %12, align 4
  %247 = ashr i32 %246, 24
  %248 = and i32 %247, 255
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %7, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 0
  store i8 %249, i8* %251, align 1
  %252 = load i32, i32* %12, align 4
  %253 = ashr i32 %252, 16
  %254 = and i32 %253, 255
  %255 = trunc i32 %254 to i8
  %256 = load i8*, i8** %7, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 1
  store i8 %255, i8* %257, align 1
  %258 = load i32, i32* %12, align 4
  %259 = ashr i32 %258, 8
  %260 = and i32 %259, 255
  %261 = trunc i32 %260 to i8
  %262 = load i8*, i8** %7, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 2
  store i8 %261, i8* %263, align 1
  %264 = load i32, i32* %12, align 4
  %265 = and i32 %264, 255
  %266 = trunc i32 %265 to i8
  %267 = load i8*, i8** %7, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 3
  store i8 %266, i8* %268, align 1
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @min(i32 %269, i32 %270)
  store i32 %271, i32* %12, align 4
  %272 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %273 = load i8*, i8** %7, align 8
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* @SDEBUG_MAX_TGTPGS_ARR_SZ, align 4
  %276 = call i32 @min(i32 %274, i32 %275)
  %277 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %272, i8* %273, i32 %276)
  store i32 %277, i32* %10, align 4
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 @kfree(i8* %278)
  %280 = load i32, i32* %10, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %105, %55
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
