; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_macro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"MACRO\090x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\09\09R[0x%06x] = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_macro(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
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
  %16 = call i32 @nv_ro08(%struct.nouveau_bios* %11, i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %20 = call i64 @init_macro_table(%struct.nvbios_init* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %1
  %24 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = add nsw i64 %29, 0
  %31 = call i32 @nv_ro32(%struct.nouveau_bios* %24, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = add nsw i64 %37, 4
  %39 = call i32 @nv_ro32(%struct.nouveau_bios* %32, i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @init_wr32(%struct.nvbios_init* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %23, %1
  %48 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %49 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 2
  store i64 %51, i64* %49, align 8
  ret void
}

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i64 @init_macro_table(%struct.nvbios_init*) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
