; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_zm_reg_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_zm_reg_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ZM_REG_SEQUENCE\090x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\09\09R[0x%06x] = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_zm_reg_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zm_reg_sequence(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %7 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %7, i32 0, i32 1
  %9 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  store %struct.nouveau_bios* %9, %struct.nouveau_bios** %3, align 8
  %10 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @nv_ro32(%struct.nouveau_bios* %10, i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %17 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %18 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 5
  %21 = call i32 @nv_ro08(%struct.nouveau_bios* %16, i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 6
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %32, %1
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %34 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %35 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @nv_ro32(%struct.nouveau_bios* %33, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %42 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 4
  store i64 %44, i64* %42, align 8
  %45 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @init_wr32(%struct.nvbios_init* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %4, align 4
  br label %28

51:                                               ; preds = %28
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
