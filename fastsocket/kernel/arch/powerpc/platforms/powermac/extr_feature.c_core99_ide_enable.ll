; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_ide_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_ide_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@macio_unknown = common dso_local global i32 0, align 4
@KEYLARGO_FCR1 = common dso_local global i32 0, align 4
@KL1_EIDE0_ENABLE = common dso_local global i32 0, align 4
@KL1_EIDE1_ENABLE = common dso_local global i32 0, align 4
@KL1_UIDE_ENABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_ide_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_ide_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  switch i64 %8, label %34 [
    i64 0, label %9
    i64 1, label %16
    i64 2, label %23
    i64 3, label %30
  ]

9:                                                ; preds = %3
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load i32, i32* @macio_unknown, align 4
  %12 = load i32, i32* @KEYLARGO_FCR1, align 4
  %13 = load i32, i32* @KL1_EIDE0_ENABLE, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @simple_feature_tweak(%struct.device_node* %10, i32 %11, i32 %12, i32 %13, i64 %14)
  store i64 %15, i64* %4, align 8
  br label %37

16:                                               ; preds = %3
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = load i32, i32* @macio_unknown, align 4
  %19 = load i32, i32* @KEYLARGO_FCR1, align 4
  %20 = load i32, i32* @KL1_EIDE1_ENABLE, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @simple_feature_tweak(%struct.device_node* %17, i32 %18, i32 %19, i32 %20, i64 %21)
  store i64 %22, i64* %4, align 8
  br label %37

23:                                               ; preds = %3
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = load i32, i32* @macio_unknown, align 4
  %26 = load i32, i32* @KEYLARGO_FCR1, align 4
  %27 = load i32, i32* @KL1_UIDE_ENABLE, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @simple_feature_tweak(%struct.device_node* %24, i32 %25, i32 %26, i32 %27, i64 %28)
  store i64 %29, i64* %4, align 8
  br label %37

30:                                               ; preds = %3
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @core99_ata100_enable(%struct.device_node* %31, i64 %32)
  store i64 %33, i64* %4, align 8
  br label %37

34:                                               ; preds = %3
  %35 = load i64, i64* @ENODEV, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %34, %30, %23, %16, %9
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @simple_feature_tweak(%struct.device_node*, i32, i32, i32, i64) #1

declare dso_local i64 @core99_ata100_enable(%struct.device_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
