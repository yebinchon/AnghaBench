; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_ram_restrict_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_ram_restrict_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"RAM_RESTRICT_PLL\090x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%dkHz *\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%dkHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_ram_restrict_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ram_restrict_pll(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
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
  %17 = call i64 @nv_ro08(%struct.nouveau_bios* %12, i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %19 = call i64 @init_ram_restrict_group_count(%struct.nvbios_init* %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %21 = call i64 @init_ram_restrict(%struct.nvbios_init* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 2
  store i64 %27, i64* %25, align 8
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %56, %1
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %34 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %35 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @nv_ro32(%struct.nouveau_bios* %33, i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @init_prog_pll(%struct.nvbios_init* %44, i64 %45, i64 %46)
  br label %51

48:                                               ; preds = %32
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @trace(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 4
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %28

59:                                               ; preds = %28
  ret void
}

declare dso_local i64 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i64 @init_ram_restrict_group_count(%struct.nvbios_init*) #1

declare dso_local i64 @init_ram_restrict(%struct.nvbios_init*) #1

declare dso_local i32 @trace(i8*, i64) #1

declare dso_local i64 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @init_prog_pll(%struct.nvbios_init*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
