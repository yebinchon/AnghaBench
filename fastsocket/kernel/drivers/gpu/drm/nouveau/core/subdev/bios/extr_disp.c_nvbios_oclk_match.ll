; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_disp.c_nvbios_oclk_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_disp.c_nvbios_oclk_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_oclk_match(%struct.nouveau_bios* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %24, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 10
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 0
  %17 = call i32 @nv_ro16(%struct.nouveau_bios* %14, i32 %16)
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i32 @nv_ro16(%struct.nouveau_bios* %20, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, i32* %6, align 4
  br label %8

27:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
