; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv04.c_nv04_fb_vram_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv04.c_nv04_fb_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NV04_PFB_BOOT_0 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT = common dso_local global i32 0, align 4
@NV_MEM_TYPE_SGRAM = common dso_local global i32 0, align 4
@NV_MEM_TYPE_SDRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fb*)* @nv04_fb_vram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_fb_vram_init(%struct.nouveau_fb* %0) #0 {
  %2 = alloca %struct.nouveau_fb*, align 8
  %3 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %2, align 8
  %4 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %5 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %6 = call i32 @nv_rd32(%struct.nouveau_fb* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 256
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 12
  %13 = and i32 %12, 15
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %14, 2
  %16 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %17 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %20 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 1048576
  store i32 %23, i32* %21, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %44 [
    i32 130, label %28
    i32 131, label %32
    i32 128, label %36
    i32 129, label %40
  ]

28:                                               ; preds = %24
  %29 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %30 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 33554432, i32* %31, align 4
  br label %44

32:                                               ; preds = %24
  %33 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %34 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 16777216, i32* %35, align 4
  br label %44

36:                                               ; preds = %24
  %37 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %38 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 8388608, i32* %39, align 4
  br label %44

40:                                               ; preds = %24
  %41 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %42 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 4194304, i32* %43, align 4
  br label %44

44:                                               ; preds = %24, %40, %36, %32, %28
  br label %45

45:                                               ; preds = %44, %10
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 56
  %48 = icmp sle i32 %47, 16
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @NV_MEM_TYPE_SGRAM, align 4
  %51 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %52 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @NV_MEM_TYPE_SDRAM, align 4
  %56 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %57 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %49
  ret i32 0
}

declare dso_local i32 @nv_rd32(%struct.nouveau_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
