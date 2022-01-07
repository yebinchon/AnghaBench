; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_configure_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_configure_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32, %struct.nouveau_bios* }
%struct.nouveau_bios = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"CONFIGURE_CLK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_configure_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_configure_clk(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %6 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 1
  %8 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  store %struct.nouveau_bios* %8, %struct.nouveau_bios** %3, align 8
  %9 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %11 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %21 = call i32 @init_done(%struct.nvbios_init* %20)
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %24 = call i32 @init_exec_force(%struct.nvbios_init* %23, i32 1)
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %26 = call i32 @init_configure_mem_clk(%struct.nvbios_init* %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i32 @nv_ro16(%struct.nouveau_bios* %27, i32 %29)
  %31 = mul nsw i32 %30, 10
  store i32 %31, i32* %5, align 4
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @init_prog_pll(%struct.nvbios_init* %32, i32 6817024, i32 %33)
  %35 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 2
  %38 = call i32 @nv_ro16(%struct.nouveau_bios* %35, i32 %37)
  %39 = mul nsw i32 %38, 10
  store i32 %39, i32* %5, align 4
  %40 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @nv_ro08(%struct.nouveau_bios* %40, i32 %41)
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %22
  %49 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @init_prog_pll(%struct.nvbios_init* %49, i32 6817028, i32 %50)
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = call i32 @init_exec_force(%struct.nvbios_init* %52, i32 0)
  br label %54

54:                                               ; preds = %48, %19
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_done(%struct.nvbios_init*) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_configure_mem_clk(%struct.nvbios_init*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @init_prog_pll(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
