; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_rlc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_rlc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RLC_HB_CNTL = common dso_local global i32 0, align 4
@CHIP_ARUBA = common dso_local global i64 0, align 8
@TN_RLC_SAVE_AND_RESTORE_BASE = common dso_local global i32 0, align 4
@TN_RLC_CLEAR_STATE_RESTORE_BASE = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@RLC_HB_BASE = common dso_local global i32 0, align 4
@RLC_HB_RPTR = common dso_local global i32 0, align 4
@RLC_HB_WPTR = common dso_local global i32 0, align 4
@CHIP_CAICOS = common dso_local global i64 0, align 8
@RLC_HB_WPTR_LSB_ADDR = common dso_local global i32 0, align 4
@RLC_HB_WPTR_MSB_ADDR = common dso_local global i32 0, align 4
@RLC_MC_CNTL = common dso_local global i32 0, align 4
@RLC_UCODE_CNTL = common dso_local global i32 0, align 4
@ARUBA_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@RLC_UCODE_ADDR = common dso_local global i32 0, align 4
@RLC_UCODE_DATA = common dso_local global i32 0, align 4
@CAYMAN_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@CHIP_CEDAR = common dso_local global i64 0, align 8
@EVERGREEN_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_rlc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_rlc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %199

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i32 @r600_rlc_stop(%struct.radeon_device* %14)
  %16 = load i32, i32* @RLC_HB_CNTL, align 4
  %17 = call i32 @WREG32(i32 %16, i32 0)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_ARUBA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %13
  %24 = load i32, i32* @TN_RLC_SAVE_AND_RESTORE_BASE, align 4
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 8
  %30 = call i32 @WREG32(i32 %24, i32 %29)
  %31 = load i32, i32* @TN_RLC_CLEAR_STATE_RESTORE_BASE, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = call i32 @WREG32(i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %23, %13
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_CAYMAN, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @RLC_HB_BASE, align 4
  %46 = call i32 @WREG32(i32 %45, i32 0)
  %47 = load i32, i32* @RLC_HB_RPTR, align 4
  %48 = call i32 @WREG32(i32 %47, i32 0)
  %49 = load i32, i32* @RLC_HB_WPTR, align 4
  %50 = call i32 @WREG32(i32 %49, i32 0)
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHIP_CAICOS, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* @RLC_HB_WPTR_LSB_ADDR, align 4
  %59 = call i32 @WREG32(i32 %58, i32 0)
  %60 = load i32, i32* @RLC_HB_WPTR_MSB_ADDR, align 4
  %61 = call i32 @WREG32(i32 %60, i32 0)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i32, i32* @RLC_MC_CNTL, align 4
  %64 = call i32 @WREG32(i32 %63, i32 0)
  %65 = load i32, i32* @RLC_UCODE_CNTL, align 4
  %66 = call i32 @WREG32(i32 %65, i32 0)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %5, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHIP_ARUBA, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @ARUBA_RLC_UCODE_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  %87 = load i32, i32* @RLC_UCODE_DATA, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %5, align 8
  %90 = ptrtoint i32* %88 to i32
  %91 = call i32 @be32_to_cpup(i32 %90)
  %92 = call i32 @WREG32(i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %79

96:                                               ; preds = %79
  br label %194

97:                                               ; preds = %62
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CHIP_CAYMAN, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %118, %103
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @CAYMAN_RLC_UCODE_SIZE, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @WREG32(i32 %109, i32 %110)
  %112 = load i32, i32* @RLC_UCODE_DATA, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %5, align 8
  %115 = ptrtoint i32* %113 to i32
  %116 = call i32 @be32_to_cpup(i32 %115)
  %117 = call i32 @WREG32(i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %104

121:                                              ; preds = %104
  br label %193

122:                                              ; preds = %97
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CHIP_CEDAR, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %143, %128
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @EVERGREEN_RLC_UCODE_SIZE, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @WREG32(i32 %134, i32 %135)
  %137 = load i32, i32* @RLC_UCODE_DATA, align 4
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %5, align 8
  %140 = ptrtoint i32* %138 to i32
  %141 = call i32 @be32_to_cpup(i32 %140)
  %142 = call i32 @WREG32(i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %129

146:                                              ; preds = %129
  br label %192

147:                                              ; preds = %122
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CHIP_RV770, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %168, %153
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @R700_RLC_UCODE_SIZE, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @WREG32(i32 %159, i32 %160)
  %162 = load i32, i32* @RLC_UCODE_DATA, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %5, align 8
  %165 = ptrtoint i32* %163 to i32
  %166 = call i32 @be32_to_cpup(i32 %165)
  %167 = call i32 @WREG32(i32 %162, i32 %166)
  br label %168

168:                                              ; preds = %158
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %154

171:                                              ; preds = %154
  br label %191

172:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %187, %172
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @RLC_UCODE_SIZE, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @WREG32(i32 %178, i32 %179)
  %181 = load i32, i32* @RLC_UCODE_DATA, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %5, align 8
  %184 = ptrtoint i32* %182 to i32
  %185 = call i32 @be32_to_cpup(i32 %184)
  %186 = call i32 @WREG32(i32 %181, i32 %185)
  br label %187

187:                                              ; preds = %177
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %173

190:                                              ; preds = %173
  br label %191

191:                                              ; preds = %190, %171
  br label %192

192:                                              ; preds = %191, %146
  br label %193

193:                                              ; preds = %192, %121
  br label %194

194:                                              ; preds = %193, %96
  %195 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %196 = call i32 @WREG32(i32 %195, i32 0)
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = call i32 @r600_rlc_start(%struct.radeon_device* %197)
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %194, %10
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @r600_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @r600_rlc_start(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
