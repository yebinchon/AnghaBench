; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_spanset_get_phy_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_spanset_get_phy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.IO_REQUEST_INFO = type { i64, i32, i32, i32 }
%struct.RAID_CONTEXT = type { i32, i32 }
%struct.MR_FW_RAID_MAP_ALL = type { i32 }
%struct.MR_LD_RAID = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LSI_INVADER = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LSI_FURY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MR_PD_INVALID = common dso_local global i64 0, align 8
@REGION_TYPE_UNUSED = common dso_local global i64 0, align 8
@REGION_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_SPAN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i64, i32, i64, %struct.IO_REQUEST_INFO*, %struct.RAID_CONTEXT*, %struct.MR_FW_RAID_MAP_ALL*)* @mr_spanset_get_phy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mr_spanset_get_phy_params(%struct.megasas_instance* %0, i64 %1, i32 %2, i64 %3, %struct.IO_REQUEST_INFO* %4, %struct.RAID_CONTEXT* %5, %struct.MR_FW_RAID_MAP_ALL* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.megasas_instance*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.IO_REQUEST_INFO*, align 8
  %14 = alloca %struct.RAID_CONTEXT*, align 8
  %15 = alloca %struct.MR_FW_RAID_MAP_ALL*, align 8
  %16 = alloca %struct.MR_LD_RAID*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store %struct.IO_REQUEST_INFO* %4, %struct.IO_REQUEST_INFO** %13, align 8
  store %struct.RAID_CONTEXT* %5, %struct.RAID_CONTEXT** %14, align 8
  store %struct.MR_FW_RAID_MAP_ALL* %6, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %32 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %30, %struct.MR_FW_RAID_MAP_ALL* %31)
  store %struct.MR_LD_RAID* %32, %struct.MR_LD_RAID** %16, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %34 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %35 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %34, i32 0, i32 3
  store i32* %35, i32** %24, align 8
  %36 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %37 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %36, i32 0, i32 0
  store i64* %37, i64** %25, align 8
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
  %55 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %56 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %21, align 4
  %58 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %13, align 8
  %59 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %20, align 4
  %61 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %62 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %109

65:                                               ; preds = %54
  %66 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %70 = call i64 @get_arm_from_strip(%struct.megasas_instance* %66, i64 %67, i32 %68, %struct.MR_FW_RAID_MAP_ALL* %69)
  store i64 %70, i64* %26, align 8
  %71 = load i64, i64* %26, align 8
  %72 = icmp eq i64 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %8, align 4
  br label %205

75:                                               ; preds = %65
  %76 = load i32, i32* %21, align 4
  %77 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i32, i32* %20, align 4
  %80 = call i64 @SPAN_ROW_SIZE(%struct.MR_FW_RAID_MAP_ALL* %77, i64 %78, i32 %79)
  %81 = call i64 @mega_mod64(i32 %76, i64 %80)
  store i64 %81, i64* %27, align 8
  %82 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %20, align 4
  %85 = call i64 @SPAN_ROW_SIZE(%struct.MR_FW_RAID_MAP_ALL* %82, i64 %83, i32 %84)
  %86 = sub i64 %85, 1
  %87 = load i64, i64* %27, align 8
  %88 = sub i64 %86, %87
  store i64 %88, i64* %28, align 8
  %89 = load i64, i64* %28, align 8
  %90 = add i64 %89, 1
  %91 = load i64, i64* %26, align 8
  %92 = add i64 %90, %91
  store i64 %92, i64* %29, align 8
  %93 = load i64, i64* %29, align 8
  %94 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i32, i32* %20, align 4
  %97 = call i64 @SPAN_ROW_SIZE(%struct.MR_FW_RAID_MAP_ALL* %94, i64 %95, i32 %96)
  %98 = icmp uge i64 %93, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %75
  %100 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i32, i32* %20, align 4
  %103 = call i64 @SPAN_ROW_SIZE(%struct.MR_FW_RAID_MAP_ALL* %100, i64 %101, i32 %102)
  %104 = load i64, i64* %29, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %29, align 8
  br label %106

106:                                              ; preds = %99, %75
  %107 = load i64, i64* %29, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %19, align 4
  br label %116

109:                                              ; preds = %54
  %110 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %115 = call i32 @get_arm(%struct.megasas_instance* %110, i64 %111, i32 %112, i32 %113, %struct.MR_FW_RAID_MAP_ALL* %114)
  store i32 %115, i32* %19, align 4
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %19, align 4
  %118 = icmp eq i32 %117, 255
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %8, align 4
  br label %205

121:                                              ; preds = %116
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %125 = call i64 @MR_LdSpanArrayGet(i64 %122, i32 %123, %struct.MR_FW_RAID_MAP_ALL* %124)
  store i64 %125, i64* %18, align 8
  %126 = load i64, i64* %18, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %129 = call i64 @MR_ArPdGet(i64 %126, i32 %127, %struct.MR_FW_RAID_MAP_ALL* %128)
  store i64 %129, i64* %17, align 8
  %130 = load i64, i64* %17, align 8
  %131 = load i64, i64* @MR_PD_INVALID, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load i64, i64* %17, align 8
  %135 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %136 = call i64 @MR_PdDevHandleGet(i64 %134, %struct.MR_FW_RAID_MAP_ALL* %135)
  %137 = load i64*, i64** %25, align 8
  store i64 %136, i64* %137, align 8
  br label %183

138:                                              ; preds = %121
  %139 = load i64, i64* @MR_PD_INVALID, align 8
  %140 = load i64*, i64** %25, align 8
  store i64 %139, i64* %140, align 8
  %141 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %142 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sge i32 %143, 5
  br i1 %144, label %145, label %161

145:                                              ; preds = %138
  %146 = load i32, i32* %23, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* %23, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %153 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @REGION_TYPE_UNUSED, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151, %145
  %158 = load i32, i32* @REGION_TYPE_EXCLUSIVE, align 4
  %159 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %160 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %182

161:                                              ; preds = %151, %148, %138
  %162 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %16, align 8
  %163 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %181

166:                                              ; preds = %161
  %167 = load i64, i64* %18, align 8
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 1
  %170 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %171 = call i64 @MR_ArPdGet(i64 %167, i32 %169, %struct.MR_FW_RAID_MAP_ALL* %170)
  store i64 %171, i64* %17, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* @MR_PD_INVALID, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load i64, i64* %17, align 8
  %177 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %178 = call i64 @MR_PdDevHandleGet(i64 %176, %struct.MR_FW_RAID_MAP_ALL* %177)
  %179 = load i64*, i64** %25, align 8
  store i64 %178, i64* %179, align 8
  br label %180

180:                                              ; preds = %175, %166
  br label %181

181:                                              ; preds = %180, %161
  br label %182

182:                                              ; preds = %181, %157
  br label %183

183:                                              ; preds = %182, %133
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* %10, align 8
  %186 = load i32, i32* %20, align 4
  %187 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %15, align 8
  %188 = call %struct.TYPE_4__* @MR_LdSpanPtrGet(i64 %185, i32 %186, %struct.MR_FW_RAID_MAP_ALL* %187)
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add i64 %184, %190
  %192 = load i32*, i32** %24, align 8
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, %191
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 4
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %199 = shl i32 %197, %198
  %200 = load i32, i32* %19, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.RAID_CONTEXT*, %struct.RAID_CONTEXT** %14, align 8
  %203 = getelementptr inbounds %struct.RAID_CONTEXT, %struct.RAID_CONTEXT* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %22, align 4
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %183, %119, %73
  %206 = load i32, i32* %8, align 4
  ret i32 %206
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @get_arm_from_strip(%struct.megasas_instance*, i64, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @mega_mod64(i32, i64) #1

declare dso_local i64 @SPAN_ROW_SIZE(%struct.MR_FW_RAID_MAP_ALL*, i64, i32) #1

declare dso_local i32 @get_arm(%struct.megasas_instance*, i64, i32, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @MR_LdSpanArrayGet(i64, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @MR_ArPdGet(i64, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @MR_PdDevHandleGet(i64, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local %struct.TYPE_4__* @MR_LdSpanPtrGet(i64, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
