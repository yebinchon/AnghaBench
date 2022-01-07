; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_prog_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_prog_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32 }
%struct.nouveau_clock = type { i32 (%struct.nouveau_clock*, i32, i32)* }

@.str = private unnamed_addr constant [36 x i8] c"failed to prog pll 0x%08x to %dkHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*, i32, i32)* @init_prog_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_prog_pll(%struct.nvbios_init* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvbios_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_clock*, align 8
  %8 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %10 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_clock* @nouveau_clock(i32 %11)
  store %struct.nouveau_clock* %12, %struct.nouveau_clock** %7, align 8
  %13 = load %struct.nouveau_clock*, %struct.nouveau_clock** %7, align 8
  %14 = icmp ne %struct.nouveau_clock* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.nouveau_clock*, %struct.nouveau_clock** %7, align 8
  %17 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %16, i32 0, i32 0
  %18 = load i32 (%struct.nouveau_clock*, i32, i32)*, i32 (%struct.nouveau_clock*, i32, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.nouveau_clock*, i32, i32)* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %22 = call i64 @init_exec(%struct.nvbios_init* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.nouveau_clock*, %struct.nouveau_clock** %7, align 8
  %26 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %25, i32 0, i32 0
  %27 = load i32 (%struct.nouveau_clock*, i32, i32)*, i32 (%struct.nouveau_clock*, i32, i32)** %26, align 8
  %28 = load %struct.nouveau_clock*, %struct.nouveau_clock** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %27(%struct.nouveau_clock* %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %24
  br label %39

39:                                               ; preds = %38, %20, %15, %3
  ret void
}

declare dso_local %struct.nouveau_clock* @nouveau_clock(i32) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
