; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_configure_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_configure_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32, %struct.nouveau_bios* }
%struct.nouveau_bios = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"CONFIGURE_MEM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_configure_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_configure_mem(%struct.nvbios_init* %0) #0 {
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
  %11 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %23 = call i32 @init_done(%struct.nvbios_init* %22)
  br label %74

24:                                               ; preds = %1
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %26 = call i32 @init_exec_force(%struct.nvbios_init* %25, i32 1)
  %27 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %28 = call i32 @init_configure_mem_clk(%struct.nvbios_init* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %30 = call i32 @bmp_sdr_seq_table(%struct.nouveau_bios* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @nv_ro08(%struct.nouveau_bios* %31, i32 %32)
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %38 = call i32 @bmp_ddr_seq_table(%struct.nouveau_bios* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 6
  store i32 %41, i32* %4, align 4
  %42 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %43 = call i32 @init_rdvgai(%struct.nvbios_init* %42, i32 964, i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, 32
  %47 = call i32 @init_wrvgai(%struct.nvbios_init* %44, i32 964, i32 1, i32 %46)
  br label %48

48:                                               ; preds = %66, %64, %39
  %49 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @nv_ro32(%struct.nouveau_bios* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %56 [
    i32 1049116, label %55
    i32 1049296, label %55
    i32 1049300, label %55
  ]

55:                                               ; preds = %53, %53, %53
  store i32 1, i32* %7, align 4
  br label %66

56:                                               ; preds = %53
  %57 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @nv_ro32(%struct.nouveau_bios* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %48

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %55
  %67 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @init_wr32(%struct.nvbios_init* %67, i32 %68, i32 %69)
  br label %48

71:                                               ; preds = %48
  %72 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %73 = call i32 @init_exec_force(%struct.nvbios_init* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %21
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_done(%struct.nvbios_init*) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_configure_mem_clk(%struct.nvbios_init*) #1

declare dso_local i32 @bmp_sdr_seq_table(%struct.nouveau_bios*) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @bmp_ddr_seq_table(%struct.nouveau_bios*) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_wrvgai(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
