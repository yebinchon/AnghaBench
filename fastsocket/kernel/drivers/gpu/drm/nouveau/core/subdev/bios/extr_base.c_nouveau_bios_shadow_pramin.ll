; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_base.c_nouveau_bios_shadow_pramin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_base.c_nouveau_bios_shadow_pramin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32, i64 }
%struct.nouveau_device = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bios*)* @nouveau_bios_shadow_pramin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bios_shadow_pramin(%struct.nouveau_bios* %0) #0 {
  %2 = alloca %struct.nouveau_bios*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %2, align 8
  %7 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %8 = call %struct.nouveau_device* @nv_device(%struct.nouveau_bios* %7)
  store %struct.nouveau_device* %8, %struct.nouveau_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NV_50, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %16 = call i32 @nv_rd32(%struct.nouveau_bios* %15, i32 6397700)
  %17 = and i32 %16, -256
  %18 = shl i32 %17, 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %23 = call i32 @nv_rd32(%struct.nouveau_bios* %22, i32 5888)
  %24 = shl i32 %23, 16
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 983040
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %14
  %28 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 16
  %31 = call i32 @nv_mask(%struct.nouveau_bios* %28, i32 5888, i32 -1, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %34 = call i32 @nv_rd08(%struct.nouveau_bios* %33, i32 7340032)
  %35 = icmp ne i32 %34, 85
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %38 = call i32 @nv_rd08(%struct.nouveau_bios* %37, i32 7340033)
  %39 = icmp ne i32 %38, 170
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  br label %84

41:                                               ; preds = %36
  %42 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %43 = call i32 @nv_rd08(%struct.nouveau_bios* %42, i32 7340034)
  %44 = mul nsw i32 %43, 512
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %46 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %48 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %84

52:                                               ; preds = %41
  %53 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %54 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i64 @kmalloc(i32 %55, i32 %56)
  %58 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %59 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %61 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %68 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 7340032, %75
  %77 = call i32 @nv_rd08(%struct.nouveau_bios* %74, i32 %76)
  %78 = call i32 @nv_wo08(%struct.nouveau_bios* %72, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %65

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %52
  br label %84

84:                                               ; preds = %83, %51, %40
  %85 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %86 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NV_50, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @nv_wr32(%struct.nouveau_bios* %91, i32 5888, i32 %92)
  br label %94

94:                                               ; preds = %90, %84
  ret void
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_bios*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_bios*, i32) #1

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
