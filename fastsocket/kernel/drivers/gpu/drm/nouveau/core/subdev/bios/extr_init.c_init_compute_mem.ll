; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_compute_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_compute_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32, i32 }
%struct.nouveau_devinit = type { i32 (%struct.nouveau_devinit*)* }

@.str = private unnamed_addr constant [13 x i8] c"COMPUTE_MEM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_compute_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_compute_mem(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_devinit*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %4 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %5 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.nouveau_devinit* @nouveau_devinit(i32 %6)
  store %struct.nouveau_devinit* %7, %struct.nouveau_devinit** %3, align 8
  %8 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %10 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %14 = call i32 @init_exec_force(%struct.nvbios_init* %13, i32 1)
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = call i64 @init_exec(%struct.nvbios_init* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_devinit, %struct.nouveau_devinit* %19, i32 0, i32 0
  %21 = load i32 (%struct.nouveau_devinit*)*, i32 (%struct.nouveau_devinit*)** %20, align 8
  %22 = icmp ne i32 (%struct.nouveau_devinit*)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %3, align 8
  %25 = getelementptr inbounds %struct.nouveau_devinit, %struct.nouveau_devinit* %24, i32 0, i32 0
  %26 = load i32 (%struct.nouveau_devinit*)*, i32 (%struct.nouveau_devinit*)** %25, align 8
  %27 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %3, align 8
  %28 = call i32 %26(%struct.nouveau_devinit* %27)
  br label %29

29:                                               ; preds = %23, %18, %1
  %30 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %31 = call i32 @init_exec_force(%struct.nvbios_init* %30, i32 0)
  ret void
}

declare dso_local %struct.nouveau_devinit* @nouveau_devinit(i32) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
