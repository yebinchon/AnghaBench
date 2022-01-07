; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_tmds_info_from_combios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_tmds_info_from_combios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder_int_tmds = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }

@COMBIOS_DFP_INFO_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DFP table revision: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TMDS PLL From COMBIOS %u %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"No TMDS info found in BIOS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_legacy_get_tmds_info_from_combios(%struct.radeon_encoder* %0, %struct.radeon_encoder_int_tmds* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.radeon_encoder_int_tmds*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %4, align 8
  store %struct.radeon_encoder_int_tmds* %1, %struct.radeon_encoder_int_tmds** %5, align 8
  %13 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = load i32, i32* @COMBIOS_DFP_INFO_TABLE, align 4
  %22 = call i64 @combios_get_table_offset(%struct.drm_device* %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %172

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @RBIOS8(i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %96

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, 5
  %35 = call i32 @RBIOS8(i64 %34)
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 4, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %32
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %92, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 10
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = add nsw i64 %50, 8
  %52 = call i8* @RBIOS32(i64 %51)
  %53 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i8* %52, i8** %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %61, 10
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = add nsw i64 %64, 16
  %66 = call i8* @RBIOS16(i64 %65)
  %67 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i8* %66, i8** %73, align 8
  %74 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %75 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* %90)
  br label %92

92:                                               ; preds = %45
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %41

95:                                               ; preds = %41
  br label %171

96:                                               ; preds = %25
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %170

99:                                               ; preds = %96
  store i32 0, i32* %12, align 4
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %100, 5
  %102 = call i32 @RBIOS8(i64 %101)
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %104, 4
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 4, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %99
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %166, %107
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %169

112:                                              ; preds = %108
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = add nsw i64 %116, 8
  %118 = call i8* @RBIOS32(i64 %117)
  %119 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %120 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i8* %118, i8** %125, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = add nsw i64 %129, 16
  %131 = call i8* @RBIOS16(i64 %130)
  %132 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %133 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store i8* %131, i8** %138, align 8
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %112
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 10
  store i32 %143, i32* %12, align 4
  br label %147

144:                                              ; preds = %112
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 6
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %149 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %158 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %156, i8* %164)
  br label %166

166:                                              ; preds = %147
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %108

169:                                              ; preds = %108
  br label %170

170:                                              ; preds = %169, %96
  br label %171

171:                                              ; preds = %170, %95
  br label %174

172:                                              ; preds = %2
  %173 = call i32 @DRM_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %175

174:                                              ; preds = %171
  store i32 1, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %172
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i8* @RBIOS32(i64) #1

declare dso_local i8* @RBIOS16(i64) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
