; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_read_pll_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_read_pll_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@clk_src_crystal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ref: bad pll 0x%06x\0A\00", align 1
@clk_src_href = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @read_pll_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll_src(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %15)
  store %struct.nouveau_device* %16, %struct.nouveau_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %17)
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load i32, i32* @clk_src_crystal, align 4
  %21 = call i32 @read_clk(%struct.drm_device* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %23 = call i32 @nv_rd32(%struct.nouveau_device* %22, i32 57740)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %25 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_2__* @nv_device(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %144 [
    i32 80, label %30
    i32 160, label %30
    i32 132, label %75
    i32 134, label %75
    i32 146, label %75
    i32 148, label %87
    i32 150, label %87
    i32 152, label %87
  ]

30:                                               ; preds = %2, %2
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %47 [
    i32 16416, label %32
    i32 16424, label %32
    i32 16392, label %39
    i32 16432, label %46
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %14, align 4
  br label %51

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %14, align 4
  br label %51

46:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %51

47:                                               ; preds = %30
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @NV_ERROR(%struct.nouveau_drm* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %3, align 4
  br label %158

51:                                               ; preds = %46, %39, %32
  %52 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %53 = load i32, i32* %14, align 4
  %54 = mul nsw i32 %53, 12
  %55 = add nsw i32 59420, %54
  %56 = call i32 @nv_rd32(%struct.nouveau_device* %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 16777216
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 458752
  %66 = ashr i32 %65, 16
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 65280
  %69 = ashr i32 %68, 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 255
  %73 = ashr i32 %72, 0
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %146

75:                                               ; preds = %2, %2, %2
  %76 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %77 = call i32 @nv_rd32(%struct.nouveau_device* %76, i32 59420)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 458752
  %80 = ashr i32 %79, 16
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 65280
  %83 = ashr i32 %82, 8
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 255
  %86 = ashr i32 %85, 0
  store i32 %86, i32* %13, align 4
  br label %146

87:                                               ; preds = %2, %2, %2
  %88 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %89 = call i32 @nv_rd32(%struct.nouveau_device* %88, i32 49232)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %5, align 4
  switch i32 %90, label %104 [
    i32 16416, label %91
    i32 16392, label %95
    i32 16424, label %99
    i32 16432, label %103
  ]

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 3
  %94 = ashr i32 %93, 0
  store i32 %94, i32* %10, align 4
  br label %108

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 12
  %98 = ashr i32 %97, 2
  store i32 %98, i32* %10, align 4
  br label %108

99:                                               ; preds = %87
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 6144
  %102 = ashr i32 %101, 11
  store i32 %102, i32* %10, align 4
  br label %108

103:                                              ; preds = %87
  store i32 3, i32* %10, align 4
  br label %108

104:                                              ; preds = %87
  %105 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @NV_ERROR(%struct.nouveau_drm* %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %106)
  store i32 0, i32* %3, align 4
  br label %158

108:                                              ; preds = %103, %99, %95, %91
  %109 = load i32, i32* %10, align 4
  switch i32 %109, label %120 [
    i32 0, label %110
    i32 1, label %111
    i32 2, label %115
    i32 3, label %119
  ]

110:                                              ; preds = %108
  store i32 1, i32* %14, align 4
  br label %120

111:                                              ; preds = %108
  %112 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %113 = load i32, i32* @clk_src_crystal, align 4
  %114 = call i32 @read_clk(%struct.drm_device* %112, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %158

115:                                              ; preds = %108
  %116 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %117 = load i32, i32* @clk_src_href, align 4
  %118 = call i32 @read_clk(%struct.drm_device* %116, i32 %117)
  store i32 %118, i32* %3, align 4
  br label %158

119:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %108, %119, %110
  %121 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %122 = load i32, i32* %14, align 4
  %123 = mul nsw i32 %122, 40
  %124 = add nsw i32 59420, %123
  %125 = call i32 @nv_rd32(%struct.nouveau_device* %121, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %127 = load i32, i32* %14, align 4
  %128 = mul nsw i32 %127, 40
  %129 = add nsw i32 59428, %128
  %130 = call i32 @nv_rd32(%struct.nouveau_device* %126, i32 %129)
  %131 = ashr i32 %130, 16
  %132 = and i32 %131, 7
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, 458752
  %135 = ashr i32 %134, 16
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, 65280
  %140 = ashr i32 %139, 8
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 255
  %143 = ashr i32 %142, 0
  store i32 %143, i32* %13, align 4
  br label %146

144:                                              ; preds = %2
  %145 = call i32 @BUG_ON(i32 1)
  br label %146

146:                                              ; preds = %144, %120, %75, %51
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %12, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, i32* %13, align 4
  %154 = sdiv i32 %152, %153
  %155 = load i32, i32* %11, align 4
  %156 = ashr i32 %154, %155
  store i32 %156, i32* %3, align 4
  br label %158

157:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %149, %115, %111, %104, %47
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @read_clk(%struct.drm_device*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
