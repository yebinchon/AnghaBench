; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_parse_mmio_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_parse_mmio_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@RADEON_CLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@RADEON_MC_BUSY = common dso_local global i32 0, align 4
@RADEON_MC_STATUS = common dso_local global i32 0, align 4
@RADEON_MC_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @combios_parse_mmio_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combios_parse_mmio_table(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %135

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %133, %17
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @RBIOS16(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %134

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @RBIOS16(i32 %23)
  %25 = and i32 %24, 57344
  %26 = ashr i32 %25, 13
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @RBIOS16(i32 %27)
  %29 = and i32 %28, 8191
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %132 [
    i32 0, label %33
    i32 1, label %41
    i32 2, label %49
    i32 3, label %69
    i32 4, label %89
    i32 5, label %96
  ]

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @RBIOS32(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @WREG32(i32 %38, i32 %39)
  br label %133

41:                                               ; preds = %22
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @RBIOS32(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @WREG32(i32 %46, i32 %47)
  br label %133

49:                                               ; preds = %22
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @RBIOS32(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @RBIOS32(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  br label %133

69:                                               ; preds = %22
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @RBIOS32(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @RBIOS32(i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @RREG32(i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @WREG32(i32 %86, i32 %87)
  br label %133

89:                                               ; preds = %22
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @RBIOS16(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @udelay(i32 %94)
  br label %133

96:                                               ; preds = %22
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @RBIOS16(i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %7, align 4
  switch i32 %101, label %130 [
    i32 8, label %102
    i32 9, label %116
  ]

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %114, %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %8, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load i32, i32* @RADEON_CLK_PWRMGT_CNTL, align 4
  %109 = call i32 @RREG32_PLL(i32 %108)
  %110 = load i32, i32* @RADEON_MC_BUSY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  br label %115

114:                                              ; preds = %107
  br label %103

115:                                              ; preds = %113, %103
  br label %131

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %128, %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %8, align 4
  %120 = icmp ne i32 %118, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i32, i32* @RADEON_MC_STATUS, align 4
  %123 = call i32 @RREG32(i32 %122)
  %124 = load i32, i32* @RADEON_MC_IDLE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %129

128:                                              ; preds = %121
  br label %117

129:                                              ; preds = %127, %117
  br label %131

130:                                              ; preds = %96
  br label %131

131:                                              ; preds = %130, %129, %115
  br label %133

132:                                              ; preds = %22
  br label %133

133:                                              ; preds = %132, %131, %89, %69, %49, %41, %33
  br label %18

134:                                              ; preds = %18
  br label %135

135:                                              ; preds = %134, %2
  ret void
}

declare dso_local i32 @RBIOS16(i32) #1

declare dso_local i32 @RBIOS32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RREG32_PLL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
