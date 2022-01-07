; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_GetPhyParams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_GetPhyParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.IO_REQUEST_INFO = type { i32, i32 }
%struct.RAID_CONTEXT = type { i32, i32 }
%struct.MR_FW_RAID_MAP_ALL = type { i32 }
%struct.MR_LD_RAID = type { i64, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LSI_INVADER = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LSI_FURY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SPAN_INVALID = common dso_local global i32 0, align 4
@MR_PD_INVALID = common dso_local global i32 0, align 4
@REGION_TYPE_UNUSED = common dso_local global i64 0, align 8
@REGION_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_SPAN_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MR_GetPhyParams(%struct.megasas_instance* %0, i32 %1, i32 %2, i32 %3, %struct.IO_REQUEST_INFO* %4, %struct.RAID_CONTEXT* %5, %struct.MR_FW_RAID_MAP_ALL* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.megasas_instance*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.IO_REQUEST_INFO*, align 8
  %14 = alloca %struct.RAID_CONTEXT*, align 8
  %15 = alloca %struct.MR_FW_RAID_MAP_ALL*, align 8
  %16 = alloca %struct.MR_LD_RAID*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.IO_REQUEST_INFO* %4, %struct.IO_REQUEST_INFO** %13, align 8
  store %struct.RAID_CONTEXT* %5, %struct.RAID_CONTEXT** %14, align 8
  store %struct.MR_FW_RAID_MAP_ALL* %6, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %32 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i32 %30, %struct.MR_FW_RAID_MAP_ALL* %31)
  store %struct.MR_LD_RAID* %32, %struct.MR_LD_RAID** %16, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %34 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %35 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %34, i32 0, i32 0
  store i32* %35, i32** %24, align 8
  %36 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %37 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %36, i32 0, i32 1
  store i32* %37, i32** %25, align 8
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %39 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI_DEVICE_ID_LSI_INVADER, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %7
  %46 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %47 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCI_DEVICE_ID_LSI_FURY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %7
  store i32 1, i32* %23, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %57 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @mega_div64_32(i32 %55, i64 %58)
  store i32 %59, i32* %21, align 4
  %60 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %61 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %64, label %110

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %67 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @mega_mod64(i32 %65, i64 %68)
  store i32 %69, i32* %26, align 4
  %70 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %71 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %8, align 4
  br label %233

76:                                               ; preds = %64
  %77 = load i32, i32* %21, align 4
  %78 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %79 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @mega_mod64(i32 %77, i64 %80)
  store i32 %81, i32* %27, align 4
  %82 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %83 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = load i32, i32* %27, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %85, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %28, align 4
  %90 = load i32, i32* %28, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %26, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %29, align 4
  %94 = load i32, i32* %29, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %97 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %76
  %101 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %102 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %29, align 4
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %29, align 4
  br label %108

108:                                              ; preds = %100, %76
  %109 = load i32, i32* %29, align 4
  store i32 %109, i32* %19, align 4
  br label %126

110:                                              ; preds = %54
  %111 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %112 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %8, align 4
  br label %233

117:                                              ; preds = %110
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %121 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @mega_mod64(i32 %119, i64 %122)
  %124 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %125 = call i32 @MR_LdDataArmGet(i32 %118, i32 %123, %struct.MR_FW_RAID_MAP_ALL* %124)
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %117, %108
  %127 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %128 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  store i32 0, i32* %20, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %134 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %132, %135
  %137 = load i32*, i32** %24, align 8
  store i32 %136, i32* %137, align 4
  br label %151

138:                                              ; preds = %126
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i32*, i32** %24, align 8
  %142 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %143 = call i64 @MR_GetSpanBlock(i32 %139, i32 %140, i32* %141, %struct.MR_FW_RAID_MAP_ALL* %142)
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* @SPAN_INVALID, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @FALSE, align 4
  store i32 %149, i32* %8, align 4
  br label %233

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %131
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %155 = call i32 @MR_LdSpanArrayGet(i32 %152, i32 %153, %struct.MR_FW_RAID_MAP_ALL* %154)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %159 = call i32 @MR_ArPdGet(i32 %156, i32 %157, %struct.MR_FW_RAID_MAP_ALL* %158)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @MR_PD_INVALID, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %151
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %166 = call i32 @MR_PdDevHandleGet(i32 %164, %struct.MR_FW_RAID_MAP_ALL* %165)
  %167 = load i32*, i32** %25, align 8
  store i32 %166, i32* %167, align 4
  br label %213

168:                                              ; preds = %151
  %169 = load i32, i32* @MR_PD_INVALID, align 4
  %170 = load i32*, i32** %25, align 8
  store i32 %169, i32* %170, align 4
  %171 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %172 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp sge i32 %173, 5
  br i1 %174, label %175, label %191

175:                                              ; preds = %168
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %23, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %183 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @REGION_TYPE_UNUSED, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181, %175
  %188 = load i32, i32* @REGION_TYPE_EXCLUSIVE, align 4
  %189 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %190 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  br label %212

191:                                              ; preds = %181, %178, %168
  %192 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %193 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %211

196:                                              ; preds = %191
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %19, align 4
  %199 = add nsw i32 %198, 1
  %200 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %201 = call i32 @MR_ArPdGet(i32 %197, i32 %199, %struct.MR_FW_RAID_MAP_ALL* %200)
  store i32 %201, i32* %17, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* @MR_PD_INVALID, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %196
  %206 = load i32, i32* %17, align 4
  %207 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %208 = call i32 @MR_PdDevHandleGet(i32 %206, %struct.MR_FW_RAID_MAP_ALL* %207)
  %209 = load i32*, i32** %25, align 8
  store i32 %208, i32* %209, align 4
  br label %210

210:                                              ; preds = %205, %196
  br label %211

211:                                              ; preds = %210, %191
  br label %212

212:                                              ; preds = %211, %187
  br label %213

213:                                              ; preds = %212, %163
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %20, align 4
  %217 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %218 = call %struct.TYPE_4__* @MR_LdSpanPtrGet(i32 %215, i32 %216, %struct.MR_FW_RAID_MAP_ALL* %217)
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %214, %220
  %222 = load i32*, i32** %24, align 8
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %221
  store i32 %224, i32* %222, align 4
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %227 = shl i32 %225, %226
  %228 = load i32, i32* %19, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %231 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %22, align 4
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %213, %148, %115, %74
  %234 = load i32, i32* %8, align 4
  ret i32 %234
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i32 @mega_div64_32(i32, i64) #1

declare dso_local i32 @mega_mod64(i32, i64) #1

declare dso_local i32 @MR_LdDataArmGet(i32, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @MR_GetSpanBlock(i32, i32, i32*, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_LdSpanArrayGet(i32, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_ArPdGet(i32, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_PdDevHandleGet(i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local %struct.TYPE_4__* @MR_LdSpanPtrGet(i32, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
