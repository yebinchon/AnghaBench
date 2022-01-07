; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_perf.c_nvbios_perf_fan_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_perf.c_nvbios_perf_fan_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nvbios_perf_fan = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_perf_fan_parse(%struct.nouveau_bios* %0, %struct.nvbios_perf_fan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_bios*, align 8
  %5 = alloca %struct.nvbios_perf_fan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %4, align 8
  store %struct.nvbios_perf_fan* %1, %struct.nvbios_perf_fan** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %12 = call i64 @perf_table(%struct.nouveau_bios* %11, i32* %6, i32* %7, i32* %8, i32* %9)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 32
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 64
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 6
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %29, 6
  %31 = call i32 @nv_ro16(%struct.nouveau_bios* %28, i64 %30)
  %32 = load %struct.nvbios_perf_fan*, %struct.nvbios_perf_fan** %5, align 8
  %33 = getelementptr inbounds %struct.nvbios_perf_fan, %struct.nvbios_perf_fan* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %24, %21, %18
  %35 = load %struct.nvbios_perf_fan*, %struct.nvbios_perf_fan** %5, align 8
  %36 = getelementptr inbounds %struct.nvbios_perf_fan, %struct.nvbios_perf_fan* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %27
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @perf_table(%struct.nouveau_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
