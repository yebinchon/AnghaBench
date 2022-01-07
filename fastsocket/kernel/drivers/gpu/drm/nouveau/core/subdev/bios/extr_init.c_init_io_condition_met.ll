; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io_condition_met.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io_condition_met.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"\09[0x%02x] (0x%04x[0x%02x] & 0x%02x) == 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32)* @init_io_condition_met to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_io_condition_met(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvbios_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_bios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 0
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %13, align 8
  store %struct.nouveau_bios* %14, %struct.nouveau_bios** %6, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %16 = call i64 @init_io_condition_table(%struct.nvbios_init* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %2
  %20 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 5
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = add nsw i64 %25, 0
  %27 = call i64 @nv_ro16(%struct.nouveau_bios* %20, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 5
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = add nsw i64 %33, 2
  %35 = call i32 @nv_ro08(%struct.nouveau_bios* %28, i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 5
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = add nsw i64 %41, 3
  %43 = call i32 @nv_ro08(%struct.nouveau_bios* %36, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 5
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = add nsw i64 %49, 4
  %51 = call i32 @nv_ro08(%struct.nouveau_bios* %44, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @trace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @init_rdvgai(%struct.nvbios_init* %58, i64 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @init_io_condition_table(%struct.nvbios_init*) #1

declare dso_local i64 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
