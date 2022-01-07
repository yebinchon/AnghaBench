; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_configure_preinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_configure_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32, %struct.nouveau_bios* }
%struct.nouveau_bios = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"CONFIGURE_PREINIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_configure_preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_configure_preinit(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %5 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %6 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 1
  %7 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  store %struct.nouveau_bios* %7, %struct.nouveau_bios** %3, align 8
  %8 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %10 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %20 = call i32 @init_done(%struct.nvbios_init* %19)
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %23 = call i32 @init_exec_force(%struct.nvbios_init* %22, i32 1)
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = call i32 @init_rd32(%struct.nvbios_init* %24, i32 1052672)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 2
  %28 = and i32 %27, 240
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 64
  %31 = ashr i32 %30, 6
  %32 = or i32 %28, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @init_wrvgai(%struct.nvbios_init* %33, i32 980, i32 60, i32 %34)
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = call i32 @init_exec_force(%struct.nvbios_init* %36, i32 0)
  br label %38

38:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_done(%struct.nvbios_init*) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_wrvgai(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
