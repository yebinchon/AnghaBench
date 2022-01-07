; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_pll.c_pll_map_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_pll.c_pll_map_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.pll_mapping = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i64, i64*, i32*, i32*)* @pll_map_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_map_reg(%struct.nouveau_bios* %0, i64 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_bios*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pll_mapping*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @pll_limits_table(%struct.nouveau_bios* %17, i32* %18, i32* %13, i32* %14, i32* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %49, %27
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %14, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 3
  %39 = call i64 @nv_ro32(%struct.nouveau_bios* %36, i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 0
  %46 = call i64 @nv_ro08(%struct.nouveau_bios* %43, i32 %45)
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %6, align 4
  br label %120

49:                                               ; preds = %35
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %15, align 4
  br label %31

54:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %120

55:                                               ; preds = %23, %5
  %56 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %57 = call %struct.pll_mapping* @pll_map(%struct.nouveau_bios* %56)
  store %struct.pll_mapping* %57, %struct.pll_mapping** %12, align 8
  br label %58

58:                                               ; preds = %116, %55
  %59 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %60 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %119

63:                                               ; preds = %58
  %64 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %65 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %63
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 32
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %15, align 4
  store i32 %76, i32* %16, align 4
  %77 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %78 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %95, %73
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %14, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @nv_ro32(%struct.nouveau_bios* %86, i32 %87)
  %89 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %90 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %6, align 4
  br label %120

95:                                               ; preds = %85
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %15, align 4
  br label %81

100:                                              ; preds = %81
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %6, align 4
  br label %120

102:                                              ; preds = %69, %63
  %103 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %104 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %110 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %9, align 8
  store i64 %111, i64* %112, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %120

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %118 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %117, i32 1
  store %struct.pll_mapping* %118, %struct.pll_mapping** %12, align 8
  br label %58

119:                                              ; preds = %58
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %108, %100, %93, %54, %42
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @pll_limits_table(%struct.nouveau_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @nv_ro32(%struct.nouveau_bios*, i32) #1

declare dso_local i64 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local %struct.pll_mapping* @pll_map(%struct.nouveau_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
