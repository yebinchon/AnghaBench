; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_extdev.c_nvbios_extdev_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_extdev.c_nvbios_extdev_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nvbios_extdev_func = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_extdev_find(%struct.nouveau_bios* %0, i32 %1, %struct.nvbios_extdev_func* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvbios_extdev_func*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvbios_extdev_func* %2, %struct.nvbios_extdev_func** %7, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %31, %3
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %14 = load i64, i64* %10, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %10, align 8
  %16 = trunc i64 %14 to i32
  %17 = call i32 @nvbios_extdev_entry(%struct.nouveau_bios* %13, i32 %16, i64* %8, i64* %9)
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.nvbios_extdev_func*, %struct.nvbios_extdev_func** %7, align 8
  %24 = call i32 @extdev_parse_entry(%struct.nouveau_bios* %21, i32 %22, %struct.nvbios_extdev_func* %23)
  %25 = load %struct.nvbios_extdev_func*, %struct.nvbios_extdev_func** %7, align 8
  %26 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %35

31:                                               ; preds = %20
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @nvbios_extdev_entry(%struct.nouveau_bios*, i32, i64*, i64*) #1

declare dso_local i32 @extdev_parse_entry(%struct.nouveau_bios*, i32, %struct.nvbios_extdev_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
