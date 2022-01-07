; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_base.c_nouveau_fb_bios_memtype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_base.c_nouveau_fb_bios_memtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }

@NV_MEM_TYPE_DDR2 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR3 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_GDDR5 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fb_bios_memtype(%struct.nouveau_bios* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca %struct.bit_entry, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %3, align 8
  %12 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %13 = call i32 @nv_rd32(%struct.nouveau_bios* %12, i32 1052672)
  %14 = and i32 %13, 60
  %15 = ashr i32 %14, 2
  store i32 %15, i32* %5, align 4
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %17 = call i32 @bit_entry(%struct.nouveau_bios* %16, i8 signext 77, %struct.bit_entry* %4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %81, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 5
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %29 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 3
  %32 = call i32 @nv_ro16(%struct.nouveau_bios* %28, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 0
  %36 = call i32 @nv_ro08(%struct.nouveau_bios* %33, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @nv_ro08(%struct.nouveau_bios* %37, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 2
  %44 = call i32 @nv_ro08(%struct.nouveau_bios* %41, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 3
  %48 = call i32 @nv_ro08(%struct.nouveau_bios* %45, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %27
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 16
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %11, align 4
  %66 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @nv_ro08(%struct.nouveau_bios* %66, i32 %67)
  %69 = and i32 %68, 15
  switch i32 %69, label %78 [
    i32 0, label %70
    i32 1, label %72
    i32 2, label %74
    i32 3, label %76
  ]

70:                                               ; preds = %58
  %71 = load i32, i32* @NV_MEM_TYPE_DDR2, align 4
  store i32 %71, i32* %2, align 4
  br label %83

72:                                               ; preds = %58
  %73 = load i32, i32* @NV_MEM_TYPE_DDR3, align 4
  store i32 %73, i32* %2, align 4
  br label %83

74:                                               ; preds = %58
  %75 = load i32, i32* @NV_MEM_TYPE_GDDR3, align 4
  store i32 %75, i32* %2, align 4
  br label %83

76:                                               ; preds = %58
  %77 = load i32, i32* @NV_MEM_TYPE_GDDR5, align 4
  store i32 %77, i32* %2, align 4
  br label %83

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %54, %51, %27
  br label %81

81:                                               ; preds = %80, %23, %19, %1
  %82 = load i32, i32* @NV_MEM_TYPE_UNKNOWN, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %76, %74, %72, %70
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @nv_rd32(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @bit_entry(%struct.nouveau_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
