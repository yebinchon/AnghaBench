; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_fixup_align.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_fixup_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i64, i32 }

@NV_50 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bo*, i32, i32*, i32*)* @nouveau_bo_fixup_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bo_fixup_align(%struct.nouveau_bo* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nouveau_drm*, align 8
  %10 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_drm* @nouveau_bdev(i32 %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %9, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %9, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nouveau_device* @nv_device(i32 %18)
  store %struct.nouveau_device* %19, %struct.nouveau_device** %10, align 8
  %20 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %21 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NV_50, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %95

25:                                               ; preds = %4
  %26 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %27 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %94

30:                                               ; preds = %25
  %31 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %32 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 64
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  store i32 65536, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %40 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 64, %41
  %43 = call i32 @roundup(i32 %38, i32 %42)
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %93

45:                                               ; preds = %30
  %46 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %47 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  store i32 32768, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %55 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 64, %56
  %58 = call i32 @roundup(i32 %53, i32 %57)
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %92

60:                                               ; preds = %45
  %61 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %62 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 32
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32*, i32** %7, align 8
  store i32 16384, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %70 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 64, %71
  %73 = call i32 @roundup(i32 %68, i32 %72)
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  br label %91

75:                                               ; preds = %60
  %76 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %77 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 16
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  store i32 16384, i32* %81, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %85 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 32, %86
  %88 = call i32 @roundup(i32 %83, i32 %87)
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %80, %75
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %50
  br label %93

93:                                               ; preds = %92, %35
  br label %94

94:                                               ; preds = %93, %25
  br label %112

95:                                               ; preds = %4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %99 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 1, %100
  %102 = call i32 @roundup(i32 %97, i32 %101)
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %105 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 1, %106
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @max(i32 %107, i32 %109)
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %95, %94
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = call i32 @roundup(i32 %114, i32 %115)
  %117 = load i32*, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
