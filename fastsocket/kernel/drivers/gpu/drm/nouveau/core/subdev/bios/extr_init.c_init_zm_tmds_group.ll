; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_zm_tmds_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_zm_tmds_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"TMDS_ZM_GROUP\09T[0x%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\09[0x%02x] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_zm_tmds_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zm_tmds_group(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @init_tmds_reg(%struct.nvbios_init* %24, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 3
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %37, %1
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %39 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %40 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 0
  %43 = call i32 @nv_ro08(%struct.nouveau_bios* %38, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %45 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %46 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @nv_ro08(%struct.nouveau_bios* %44, i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %54 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 2
  store i64 %56, i64* %54, align 8
  %57 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @init_wr32(%struct.nvbios_init* %57, i64 %59, i32 %60)
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @init_wr32(%struct.nvbios_init* %62, i64 %64, i32 %65)
  br label %33

67:                                               ; preds = %33
  ret void
}

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i64 @init_tmds_reg(%struct.nvbios_init*, i32) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
