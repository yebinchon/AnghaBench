; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_idx_addr_latched.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_idx_addr_latched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"INDEX_ADDRESS_LATCHED\09R[0x%06x] : R[0x%06x]\0A\09CTRL &= 0x%08x |= 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\09[0x%02x] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_idx_addr_latched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_idx_addr_latched(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 1
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  store %struct.nouveau_bios* %13, %struct.nouveau_bios** %3, align 8
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @nv_ro32(%struct.nouveau_bios* %14, i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 5
  %25 = call i32 @nv_ro32(%struct.nouveau_bios* %20, i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %27 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %28 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 9
  %31 = call i32 @nv_ro32(%struct.nouveau_bios* %26, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 13
  %37 = call i32 @nv_ro32(%struct.nouveau_bios* %32, i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %39 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %40 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 17
  %43 = call i32 @nv_ro08(%struct.nouveau_bios* %38, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %50 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 18
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %57, %1
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %59 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %60 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 0
  %63 = call i32 @nv_ro08(%struct.nouveau_bios* %58, i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %65 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %66 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  %69 = call i32 @nv_ro08(%struct.nouveau_bios* %64, i64 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %74 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 2
  store i64 %76, i64* %74, align 8
  %77 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @init_wr32(%struct.nvbios_init* %77, i32 %78, i32 %79)
  %81 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %6, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @init_mask(%struct.nvbios_init* %81, i32 %82, i32 %84, i32 %87)
  br label %53

89:                                               ; preds = %53
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, ...) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
