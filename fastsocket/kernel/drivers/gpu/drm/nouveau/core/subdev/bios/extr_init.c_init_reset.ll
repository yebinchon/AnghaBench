; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"RESET\09R[0x%08x] = 0x%08x, 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_reset(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %8 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %8, i32 0, i32 1
  %10 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  store %struct.nouveau_bios* %10, %struct.nouveau_bios** %3, align 8
  %11 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i32 @nv_ro32(%struct.nouveau_bios* %11, i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 5
  %22 = call i32 @nv_ro32(%struct.nouveau_bios* %17, i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 9
  %28 = call i32 @nv_ro32(%struct.nouveau_bios* %23, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 13
  store i64 %36, i64* %34, align 8
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = call i32 @init_exec_force(%struct.nvbios_init* %37, i32 1)
  %39 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %40 = call i32 @init_mask(%struct.nvbios_init* %39, i32 6220, i32 3840, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @init_wr32(%struct.nvbios_init* %41, i32 %42, i32 %43)
  %45 = call i32 @udelay(i32 10)
  %46 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @init_wr32(%struct.nvbios_init* %46, i32 %47, i32 %48)
  %50 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @init_wr32(%struct.nvbios_init* %50, i32 6220, i32 %51)
  %53 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %54 = call i32 @init_mask(%struct.nvbios_init* %53, i32 6224, i32 1, i32 0)
  %55 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %56 = call i32 @init_exec_force(%struct.nvbios_init* %55, i32 0)
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
