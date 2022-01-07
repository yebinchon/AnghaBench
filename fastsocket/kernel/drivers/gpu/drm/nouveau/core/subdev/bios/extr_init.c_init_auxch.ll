; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_auxch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_auxch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"AUXCH\09AUX[0x%08x] 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\09AUX[0x%08x] &= 0x%02x |= 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_auxch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_auxch(%struct.nvbios_init* %0) #0 {
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
  %22 = call i32 @nv_ro08(%struct.nouveau_bios* %17, i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %27 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 6
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %34, %1
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 0
  %40 = call i32 @nv_ro08(%struct.nouveau_bios* %35, i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %42 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %43 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = call i32 @nv_ro08(%struct.nouveau_bios* %41, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @init_rdauxr(%struct.nvbios_init* %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @init_wrauxr(%struct.nvbios_init* %56, i32 %57, i32 %60)
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 2
  store i64 %65, i64* %63, align 8
  br label %30

66:                                               ; preds = %30
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, ...) #1

declare dso_local i32 @init_rdauxr(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_wrauxr(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
