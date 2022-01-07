; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_condition_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_condition_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"CONDITION_TIME\090x%02x 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_condition_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_condition_time(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
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
  %15 = call i64 @nv_ro08(%struct.nouveau_bios* %10, i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %17 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %18 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 2
  %21 = call i64 @nv_ro08(%struct.nouveau_bios* %16, i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %23, 50
  %25 = call i64 @min(i32 %24, i32 100)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 3
  store i64 %32, i64* %30, align 8
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = call i32 @init_exec(%struct.nvbios_init* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %53

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %6, align 8
  %41 = icmp ne i64 %39, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @init_condition_met(%struct.nvbios_init* %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %53

48:                                               ; preds = %42
  %49 = call i32 @mdelay(i32 20)
  br label %38

50:                                               ; preds = %38
  %51 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %52 = call i32 @init_exec_set(%struct.nvbios_init* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %47, %36
  ret void
}

declare dso_local i64 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @trace(i8*, i64, i64) #1

declare dso_local i32 @init_exec(%struct.nvbios_init*) #1

declare dso_local i64 @init_condition_met(%struct.nvbios_init*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @init_exec_set(%struct.nvbios_init*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
