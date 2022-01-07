; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_tmds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_tmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"TMDS\09T[0x%02x][0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_tmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tmds(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %9 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %10 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 1
  %11 = load %struct.nouveau_bios*, %struct.nouveau_bios** %10, align 8
  store %struct.nouveau_bios* %11, %struct.nouveau_bios** %3, align 8
  %12 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %13 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %14 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @nv_ro08(%struct.nouveau_bios* %12, i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %20 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 2
  %23 = call i32 @nv_ro08(%struct.nouveau_bios* %18, i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %26 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 3
  %29 = call i32 @nv_ro08(%struct.nouveau_bios* %24, i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %31 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %32 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = call i32 @nv_ro08(%struct.nouveau_bios* %30, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @init_tmds_reg(%struct.nvbios_init* %36, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 5
  store i64 %47, i64* %45, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %1
  br label %75

51:                                               ; preds = %1
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, 0
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, 65536
  %57 = call i32 @init_wr32(%struct.nvbios_init* %52, i64 %54, i32 %56)
  %58 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %63, 4
  %65 = call i32 @init_rd32(%struct.nvbios_init* %62, i64 %64)
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %65, %66
  %68 = or i32 %61, %67
  %69 = call i32 @init_wr32(%struct.nvbios_init* %58, i64 %60, i32 %68)
  %70 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %71, 0
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @init_wr32(%struct.nvbios_init* %70, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i64 @init_tmds_reg(%struct.nvbios_init*, i32) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i64, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
