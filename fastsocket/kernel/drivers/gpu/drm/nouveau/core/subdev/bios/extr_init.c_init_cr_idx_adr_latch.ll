; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_cr_idx_adr_latch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_cr_idx_adr_latch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"CR_INDEX_ADDR C[%02x] C[%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\09\09[0x%02x] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_cr_idx_adr_latch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cr_idx_adr_latch(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %10 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %11 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 1
  %12 = load %struct.nouveau_bios*, %struct.nouveau_bios** %11, align 8
  store %struct.nouveau_bios* %12, %struct.nouveau_bios** %3, align 8
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %14 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %15 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i32 @nv_ro08(%struct.nouveau_bios* %13, i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %20 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %21 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @nv_ro08(%struct.nouveau_bios* %19, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %26 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %27 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 3
  %30 = call i32 @nv_ro08(%struct.nouveau_bios* %25, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 4
  %36 = call i32 @nv_ro08(%struct.nouveau_bios* %31, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %41 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 5
  store i64 %43, i64* %41, align 8
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @init_rdvgai(%struct.nvbios_init* %44, i32 980, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %51, %1
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %53 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %54 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @nv_ro08(%struct.nouveau_bios* %52, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %61 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  %68 = call i32 @init_wrvgai(%struct.nvbios_init* %64, i32 980, i32 %65, i32 %66)
  %69 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @init_wrvgai(%struct.nvbios_init* %69, i32 980, i32 %70, i32 %71)
  br label %47

73:                                               ; preds = %47
  %74 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @init_wrvgai(%struct.nvbios_init* %74, i32 980, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_wrvgai(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
