; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_hpd_set_polarity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_hpd_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@DC_HPD1_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPDx_INT_POLARITY = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD3_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD4_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD5_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD6_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECT1_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECTx_INT_POLARITY = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECT2_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECT3_INT_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hpd_set_polarity(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @r600_hpd_sense(%struct.radeon_device* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %125

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %123 [
    i32 133, label %15
    i32 132, label %33
    i32 131, label %51
    i32 130, label %69
    i32 129, label %87
    i32 128, label %105
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @DC_HPD1_INT_CONTROL, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* @DC_HPD1_INT_CONTROL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  br label %124

33:                                               ; preds = %13
  %34 = load i32, i32* @DC_HPD2_INT_CONTROL, align 4
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %33
  %44 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* @DC_HPD2_INT_CONTROL, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @WREG32(i32 %48, i32 %49)
  br label %124

51:                                               ; preds = %13
  %52 = load i32, i32* @DC_HPD3_INT_CONTROL, align 4
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* @DC_HPD3_INT_CONTROL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  br label %124

69:                                               ; preds = %13
  %70 = load i32, i32* @DC_HPD4_INT_CONTROL, align 4
  %71 = call i32 @RREG32(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %83

79:                                               ; preds = %69
  %80 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* @DC_HPD4_INT_CONTROL, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  br label %124

87:                                               ; preds = %13
  %88 = load i32, i32* @DC_HPD5_INT_CONTROL, align 4
  %89 = call i32 @RREG32(i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %101

97:                                               ; preds = %87
  %98 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* @DC_HPD5_INT_CONTROL, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @WREG32(i32 %102, i32 %103)
  br label %124

105:                                              ; preds = %13
  %106 = load i32, i32* @DC_HPD6_INT_CONTROL, align 4
  %107 = call i32 @RREG32(i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %119

115:                                              ; preds = %105
  %116 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* @DC_HPD6_INT_CONTROL, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @WREG32(i32 %120, i32 %121)
  br label %124

123:                                              ; preds = %13
  br label %124

124:                                              ; preds = %123, %119, %101, %83, %65, %47, %29
  br label %183

125:                                              ; preds = %2
  %126 = load i32, i32* %4, align 4
  switch i32 %126, label %181 [
    i32 133, label %127
    i32 132, label %145
    i32 131, label %163
  ]

127:                                              ; preds = %125
  %128 = load i32, i32* @DC_HOT_PLUG_DETECT1_INT_CONTROL, align 4
  %129 = call i32 @RREG32(i32 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %5, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %5, align 4
  br label %141

137:                                              ; preds = %127
  %138 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* @DC_HOT_PLUG_DETECT1_INT_CONTROL, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @WREG32(i32 %142, i32 %143)
  br label %182

145:                                              ; preds = %125
  %146 = load i32, i32* @DC_HOT_PLUG_DETECT2_INT_CONTROL, align 4
  %147 = call i32 @RREG32(i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %5, align 4
  br label %159

155:                                              ; preds = %145
  %156 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* @DC_HOT_PLUG_DETECT2_INT_CONTROL, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @WREG32(i32 %160, i32 %161)
  br label %182

163:                                              ; preds = %125
  %164 = load i32, i32* @DC_HOT_PLUG_DETECT3_INT_CONTROL, align 4
  %165 = call i32 @RREG32(i32 %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %5, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %5, align 4
  br label %177

173:                                              ; preds = %163
  %174 = load i32, i32* @DC_HOT_PLUG_DETECTx_INT_POLARITY, align 4
  %175 = load i32, i32* %5, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %173, %168
  %178 = load i32, i32* @DC_HOT_PLUG_DETECT3_INT_CONTROL, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @WREG32(i32 %178, i32 %179)
  br label %182

181:                                              ; preds = %125
  br label %182

182:                                              ; preds = %181, %177, %159, %141
  br label %183

183:                                              ; preds = %182, %124
  ret void
}

declare dso_local i32 @r600_hpd_sense(%struct.radeon_device*, i32) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
