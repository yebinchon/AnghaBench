; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io_flag_condition_met.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io_flag_condition_met.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32)* @init_io_flag_condition_met to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_io_flag_condition_met(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvbios_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %17, align 8
  store %struct.nouveau_bios* %18, %struct.nouveau_bios** %6, align 8
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %20 = call i32 @init_io_flag_condition_table(%struct.nvbios_init* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %2
  %24 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 9
  %28 = add nsw i32 %25, %27
  %29 = add nsw i32 %28, 0
  %30 = call i32 @nv_ro16(%struct.nouveau_bios* %24, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 9
  %35 = add nsw i32 %32, %34
  %36 = add nsw i32 %35, 2
  %37 = call i32 @nv_ro08(%struct.nouveau_bios* %31, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 9
  %42 = add nsw i32 %39, %41
  %43 = add nsw i32 %42, 3
  %44 = call i32 @nv_ro08(%struct.nouveau_bios* %38, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 9
  %49 = add nsw i32 %46, %48
  %50 = add nsw i32 %49, 4
  %51 = call i32 @nv_ro08(%struct.nouveau_bios* %45, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 9
  %56 = add nsw i32 %53, %55
  %57 = add nsw i32 %56, 5
  %58 = call i32 @nv_ro16(%struct.nouveau_bios* %52, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 9
  %63 = add nsw i32 %60, %62
  %64 = add nsw i32 %63, 7
  %65 = call i32 @nv_ro08(%struct.nouveau_bios* %59, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, 9
  %70 = add nsw i32 %67, %69
  %71 = add nsw i32 %70, 8
  %72 = call i32 @nv_ro08(%struct.nouveau_bios* %66, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @init_rdvgai(%struct.nvbios_init* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = ashr i32 %78, %79
  store i32 %80, i32* %15, align 4
  %81 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @nv_ro08(%struct.nouveau_bios* %81, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @init_io_flag_condition_table(%struct.nvbios_init*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
