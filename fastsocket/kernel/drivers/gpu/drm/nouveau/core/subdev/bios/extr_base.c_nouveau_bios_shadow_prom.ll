; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_base.c_nouveau_bios_shadow_prom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_base.c_nouveau_bios_shadow_prom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32, i64 }
%struct.nouveau_device = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bios*)* @nouveau_bios_shadow_prom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bios_shadow_prom(%struct.nouveau_bios* %0) #0 {
  %2 = alloca %struct.nouveau_bios*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %2, align 8
  %8 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %9 = call %struct.nouveau_device* @nv_device(%struct.nouveau_bios* %8)
  store %struct.nouveau_device* %9, %struct.nouveau_device** %3, align 8
  %10 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NV_50, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 557136, i32* %4, align 4
  br label %17

16:                                               ; preds = %1
  store i32 6224, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @nv_mask(%struct.nouveau_bios* %18, i32 %19, i32 1, i32 0)
  store i32 %20, i32* %5, align 4
  store i32 16, i32* %7, align 4
  br label %21

21:                                               ; preds = %27, %17
  %22 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %23 = call i32 @nv_rd08(%struct.nouveau_bios* %22, i32 3145728)
  %24 = icmp eq i32 %23, 85
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %31

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %21, label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %36 = call i32 @nv_rd08(%struct.nouveau_bios* %35, i32 3145729)
  %37 = icmp ne i32 %36, 170
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  br label %113

39:                                               ; preds = %34
  %40 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %41 = call i32 @nv_rd08(%struct.nouveau_bios* %40, i32 3145752)
  %42 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %43 = call i32 @nv_rd08(%struct.nouveau_bios* %42, i32 3145753)
  %44 = shl i32 %43, 8
  %45 = or i32 %41, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 3145728, %47
  %49 = call i32 @nv_rd08(%struct.nouveau_bios* %46, i32 %48)
  %50 = icmp ne i32 %49, 80
  br i1 %50, label %69, label %51

51:                                               ; preds = %39
  %52 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 3145729, %53
  %55 = call i32 @nv_rd08(%struct.nouveau_bios* %52, i32 %54)
  %56 = icmp ne i32 %55, 67
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 3145730, %59
  %61 = call i32 @nv_rd08(%struct.nouveau_bios* %58, i32 %60)
  %62 = icmp ne i32 %61, 73
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 3145731, %65
  %67 = call i32 @nv_rd08(%struct.nouveau_bios* %64, i32 %66)
  %68 = icmp ne i32 %67, 82
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %57, %51, %39
  br label %113

70:                                               ; preds = %63
  %71 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %72 = call i32 @nv_rd08(%struct.nouveau_bios* %71, i32 3145730)
  %73 = mul nsw i32 %72, 512
  %74 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %75 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %77 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %113

81:                                               ; preds = %70
  %82 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %83 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i64 @kmalloc(i32 %84, i32 %85)
  %87 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %88 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %90 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %97 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 3145728, %104
  %106 = call i32 @nv_rd08(%struct.nouveau_bios* %103, i32 %105)
  %107 = call i32 @nv_wo08(%struct.nouveau_bios* %101, i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %94

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %81
  br label %113

113:                                              ; preds = %112, %80, %69, %38
  %114 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @nv_wr32(%struct.nouveau_bios* %114, i32 %115, i32 %116)
  ret void
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_bios*) #1

declare dso_local i32 @nv_mask(%struct.nouveau_bios*, i32, i32, i32) #1

declare dso_local i32 @nv_rd08(%struct.nouveau_bios*, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @nv_wo08(%struct.nouveau_bios*, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_bios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
