; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_index_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_index_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"INDEX_IO\09I[0x%04x][0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_index_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_index_io(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %17 = call i8* @nv_ro16(%struct.nouveau_bios* %12, i64 %16)
  store i8* %17, i8** %4, align 8
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %20 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 3
  %23 = call i8* @nv_ro16(%struct.nouveau_bios* %18, i64 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %26 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %27 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 4
  %30 = call i32 @nv_ro08(%struct.nouveau_bios* %25, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 5
  %36 = call i32 @nv_ro08(%struct.nouveau_bios* %31, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @trace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %43 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 6
  store i64 %45, i64* %43, align 8
  %46 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @init_rdvgai(%struct.nvbios_init* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @init_wrvgai(%struct.nvbios_init* %52, i8* %53, i32 %54, i32 %57)
  ret void
}

declare dso_local i8* @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i8*, i32) #1

declare dso_local i32 @init_wrvgai(%struct.nvbios_init*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
