; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_xlat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"INIT_XLAT\09R[0x%06x] &= 0x%08x |= (X%02x((R[0x%06x] %s 0x%02x) & 0x%02x) << 0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_xlat(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %13, align 8
  store %struct.nouveau_bios* %14, %struct.nouveau_bios** %3, align 8
  %15 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @nv_ro32(%struct.nouveau_bios* %15, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %22 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %23 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 5
  %26 = call i32 @nv_ro08(%struct.nouveau_bios* %21, i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 6
  %32 = call i32 @nv_ro08(%struct.nouveau_bios* %27, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %34 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %35 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 7
  %38 = call i32 @nv_ro08(%struct.nouveau_bios* %33, i64 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %40 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %41 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 8
  %44 = call i32 @nv_ro32(%struct.nouveau_bios* %39, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %46 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %47 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 12
  %50 = call i32 @nv_ro32(%struct.nouveau_bios* %45, i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 16
  %56 = call i32 @nv_ro08(%struct.nouveau_bios* %51, i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 128
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %1
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 256, %70
  br label %74

72:                                               ; preds = %1
  %73 = load i32, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %71, %69 ], [ %73, %72 ]
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @trace(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %60, i8* %65, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %80 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 17
  store i64 %82, i64* %80, align 8
  %83 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @init_rd32(%struct.nvbios_init* %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @init_shift(i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %11, align 4
  %90 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @init_xlat_(%struct.nvbios_init* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 %93, %94
  store i32 %95, i32* %11, align 4
  %96 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @init_mask(%struct.nvbios_init* %96, i32 %97, i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @init_shift(i32, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_xlat_(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
