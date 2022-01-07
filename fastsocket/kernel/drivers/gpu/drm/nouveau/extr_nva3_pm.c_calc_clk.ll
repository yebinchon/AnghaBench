; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_calc_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_calc_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.creg = type { i32, i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_pll = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"no clock for 0x%04x/0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"bad freq %02x: %d %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32, %struct.creg*)* @calc_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_clk(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, %struct.creg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.creg*, align 8
  %12 = alloca %struct.nouveau_drm*, align 8
  %13 = alloca %struct.nouveau_device*, align 8
  %14 = alloca %struct.nouveau_bios*, align 8
  %15 = alloca %struct.nvbios_pll, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.creg* %4, %struct.creg** %11, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %24)
  store %struct.nouveau_drm* %25, %struct.nouveau_drm** %12, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %27 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %26)
  store %struct.nouveau_device* %27, %struct.nouveau_device** %13, align 8
  %28 = load %struct.nouveau_device*, %struct.nouveau_device** %13, align 8
  %29 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %28)
  store %struct.nouveau_bios* %29, %struct.nouveau_bios** %14, align 8
  %30 = load %struct.creg*, %struct.creg** %11, align 8
  %31 = getelementptr inbounds %struct.creg, %struct.creg* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.creg*, %struct.creg** %11, align 8
  %33 = getelementptr inbounds %struct.creg, %struct.creg* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %5
  %37 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @NV_DEBUG(%struct.nouveau_drm* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  store i32 0, i32* %6, align 4
  br label %149

41:                                               ; preds = %5
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %55 [
    i32 27000, label %43
    i32 100000, label %47
    i32 108000, label %51
  ]

43:                                               ; preds = %41
  %44 = load %struct.creg*, %struct.creg** %11, align 8
  %45 = getelementptr inbounds %struct.creg, %struct.creg* %44, i32 0, i32 1
  store i32 256, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %6, align 4
  br label %149

47:                                               ; preds = %41
  %48 = load %struct.creg*, %struct.creg** %11, align 8
  %49 = getelementptr inbounds %struct.creg, %struct.creg* %48, i32 0, i32 1
  store i32 8448, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %6, align 4
  br label %149

51:                                               ; preds = %41
  %52 = load %struct.creg*, %struct.creg** %11, align 8
  %53 = getelementptr inbounds %struct.creg, %struct.creg* %52, i32 0, i32 1
  store i32 8512, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %6, align 4
  br label %149

55:                                               ; preds = %41
  %56 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @read_vco(%struct.drm_device* %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = mul nsw i32 %59, 2
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %61, 2999
  %63 = sdiv i32 %60, %62
  %64 = call i32 @min(i32 %63, i32 65)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp sgt i32 %65, 4
  br i1 %66, label %67, label %92

67:                                               ; preds = %55
  %68 = load i32, i32* %17, align 4
  %69 = mul nsw i32 %68, 2
  %70 = load i32, i32* %18, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %16, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32, i32* %22, align 4
  %79 = icmp sge i32 %78, -2000
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* %22, align 4
  %82 = icmp slt i32 %81, 3000
  br i1 %82, label %83, label %91

83:                                               ; preds = %80, %67
  %84 = load i32, i32* %18, align 4
  %85 = sub nsw i32 %84, 2
  %86 = shl i32 %85, 16
  %87 = or i32 %86, 12544
  %88 = load %struct.creg*, %struct.creg** %11, align 8
  %89 = getelementptr inbounds %struct.creg, %struct.creg* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %6, align 4
  br label %149

91:                                               ; preds = %80, %77
  br label %92

92:                                               ; preds = %91, %55
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @NV_ERROR(%struct.nouveau_drm* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* @ERANGE, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %149

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.nouveau_bios*, %struct.nouveau_bios** %14, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @nvbios_pll_parse(%struct.nouveau_bios* %105, i32 %106, %struct.nvbios_pll* %15)
  store i32 %107, i32* %23, align 4
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %23, align 4
  store i32 %111, i32* %6, align 4
  br label %149

112:                                              ; preds = %104
  %113 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 16
  %116 = call i32 @read_clk(%struct.drm_device* %113, i32 %115, i32 1)
  %117 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %15, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %15, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %6, align 4
  br label %149

124:                                              ; preds = %112
  %125 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @nva3_calc_pll(%struct.drm_device* %125, %struct.nvbios_pll* %15, i32 %126, i32* %20, i32* null, i32* %21, i32* %19)
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load %struct.nouveau_device*, %struct.nouveau_device** %13, align 8
  %132 = load i32, i32* %8, align 4
  %133 = mul nsw i32 %132, 4
  %134 = add nsw i32 16672, %133
  %135 = call i32 @nv_rd32(%struct.nouveau_device* %131, i32 %134)
  %136 = load %struct.creg*, %struct.creg** %11, align 8
  %137 = getelementptr inbounds %struct.creg, %struct.creg* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %19, align 4
  %139 = shl i32 %138, 16
  %140 = load i32, i32* %20, align 4
  %141 = shl i32 %140, 8
  %142 = or i32 %139, %141
  %143 = load i32, i32* %21, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.creg*, %struct.creg** %11, align 8
  %146 = getelementptr inbounds %struct.creg, %struct.creg* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %130, %124
  %148 = load i32, i32* %23, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %121, %110, %95, %83, %51, %47, %43, %36
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @read_vco(%struct.drm_device*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32, i32, i32) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @read_clk(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nva3_calc_pll(%struct.drm_device*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
