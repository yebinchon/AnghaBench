; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_report_luns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.sdebug_dev_info = type { i32 }
%struct.scsi_lun = type { i32* }

@SDEBUG_RLUN_ARR_SZ = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@scsi_debug_max_luns = common dso_local global i32 0, align 4
@scsi_debug_no_lun_0 = common dso_local global i64 0, align 8
@SAM2_LUN_ADDRESS_METHOD = common dso_local global i32 0, align 4
@SAM2_WLUN_REPORT_LUNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_report_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_report_luns(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.scsi_lun*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* @SDEBUG_RLUN_ARR_SZ, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 9
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 8
  %42 = add nsw i32 %36, %41
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 7
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 16
  %48 = add nsw i32 %42, %47
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 6
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 24
  %54 = add nsw i32 %48, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %60, label %57

57:                                               ; preds = %2
  %58 = load i32, i32* %15, align 4
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %57, %2
  %61 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %62 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %63 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %64 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %61, i32 %62, i32 %63, i32 0)
  %65 = load i32, i32* @check_condition_result, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %213

66:                                               ; preds = %57
  %67 = load i32, i32* @SDEBUG_RLUN_ARR_SZ, align 4
  %68 = call i32 @memset(i8* %32, i32 0, i32 %67)
  %69 = load i32, i32* @scsi_debug_max_luns, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 1, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %83

73:                                               ; preds = %66
  %74 = load i64, i64* @scsi_debug_no_lun_0, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %76, %73
  br label %83

83:                                               ; preds = %82, %72
  %84 = load i32, i32* %15, align 4
  %85 = icmp sgt i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 8, %92
  %94 = lshr i64 %93, 8
  %95 = and i64 %94, 255
  %96 = trunc i64 %95 to i8
  %97 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %96, i8* %97, align 2
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 8, %99
  %101 = and i64 %100, 255
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 %102, i8* %103, align 1
  %104 = load i32, i32* @SDEBUG_RLUN_ARR_SZ, align 4
  %105 = sub nsw i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = udiv i64 %106, 8
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @min(i32 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %83
  store i32 0, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %114, %83
  %117 = getelementptr inbounds i8, i8* %32, i64 8
  %118 = bitcast i8* %117 to %struct.scsi_lun*
  store %struct.scsi_lun* %118, %struct.scsi_lun** %16, align 8
  %119 = load i32, i32* @SDEBUG_RLUN_ARR_SZ, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %32, i64 %120
  store i8* %121, i8** %19, align 8
  store i32 0, i32* %8, align 4
  %122 = load i64, i64* @scsi_debug_no_lun_0, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %168, %116
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load %struct.scsi_lun*, %struct.scsi_lun** %16, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %131, i64 %133
  %135 = bitcast %struct.scsi_lun* %134 to i8*
  %136 = load i8*, i8** %19, align 8
  %137 = icmp ult i8* %135, %136
  br label %138

138:                                              ; preds = %130, %126
  %139 = phi i1 [ false, %126 ], [ %137, %130 ]
  br i1 %139, label %140, label %173

140:                                              ; preds = %138
  %141 = load i32, i32* %13, align 4
  %142 = ashr i32 %141, 8
  %143 = and i32 %142, 63
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @SAM2_LUN_ADDRESS_METHOD, align 4
  %149 = shl i32 %148, 6
  %150 = or i32 %147, %149
  %151 = load %struct.scsi_lun*, %struct.scsi_lun** %16, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %151, i64 %153
  %155 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %150, i32* %157, align 4
  br label %158

158:                                              ; preds = %146, %140
  %159 = load i32, i32* %13, align 4
  %160 = and i32 %159, 255
  %161 = load %struct.scsi_lun*, %struct.scsi_lun** %16, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %161, i64 %163
  %165 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %160, i32* %167, align 4
  br label %168

168:                                              ; preds = %158
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %126

173:                                              ; preds = %138
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %173
  %177 = load i32, i32* @SAM2_WLUN_REPORT_LUNS, align 4
  %178 = ashr i32 %177, 8
  %179 = and i32 %178, 255
  %180 = load %struct.scsi_lun*, %struct.scsi_lun** %16, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %180, i64 %182
  %184 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 %179, i32* %186, align 4
  %187 = load i32, i32* @SAM2_WLUN_REPORT_LUNS, align 4
  %188 = and i32 %187, 255
  %189 = load %struct.scsi_lun*, %struct.scsi_lun** %16, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %189, i64 %191
  %193 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 %188, i32* %195, align 4
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %176, %173
  %199 = load %struct.scsi_lun*, %struct.scsi_lun** %16, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %199, i64 %201
  %203 = bitcast %struct.scsi_lun* %202 to i8*
  %204 = ptrtoint i8* %203 to i64
  %205 = ptrtoint i8* %32 to i64
  %206 = sub i64 %204, %205
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %6, align 4
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @SDEBUG_RLUN_ARR_SZ, align 4
  %211 = call i32 @min(i32 %209, i32 %210)
  %212 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %208, i8* %32, i32 %211)
  store i32 %212, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %213

213:                                              ; preds = %198, %60
  %214 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mk_sense_buffer(%struct.sdebug_dev_info*, i32, i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
