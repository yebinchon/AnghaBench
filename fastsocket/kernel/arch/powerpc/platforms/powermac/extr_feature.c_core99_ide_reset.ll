; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_ide_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_ide_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@macio_unknown = common dso_local global i32 0, align 4
@KEYLARGO_FCR1 = common dso_local global i32 0, align 4
@KL1_EIDE0_RESET_N = common dso_local global i32 0, align 4
@KL1_EIDE1_RESET_N = common dso_local global i32 0, align 4
@KL1_UIDE_RESET_N = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_ide_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_ide_reset(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  switch i64 %8, label %39 [
    i64 0, label %9
    i64 1, label %19
    i64 2, label %29
  ]

9:                                                ; preds = %3
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load i32, i32* @macio_unknown, align 4
  %12 = load i32, i32* @KEYLARGO_FCR1, align 4
  %13 = load i32, i32* @KL1_EIDE0_RESET_N, align 4
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @simple_feature_tweak(%struct.device_node* %10, i32 %11, i32 %12, i32 %13, i32 %17)
  store i64 %18, i64* %4, align 8
  br label %42

19:                                               ; preds = %3
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = load i32, i32* @macio_unknown, align 4
  %22 = load i32, i32* @KEYLARGO_FCR1, align 4
  %23 = load i32, i32* @KL1_EIDE1_RESET_N, align 4
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @simple_feature_tweak(%struct.device_node* %20, i32 %21, i32 %22, i32 %23, i32 %27)
  store i64 %28, i64* %4, align 8
  br label %42

29:                                               ; preds = %3
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = load i32, i32* @macio_unknown, align 4
  %32 = load i32, i32* @KEYLARGO_FCR1, align 4
  %33 = load i32, i32* @KL1_UIDE_RESET_N, align 4
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @simple_feature_tweak(%struct.device_node* %30, i32 %31, i32 %32, i32 %33, i32 %37)
  store i64 %38, i64* %4, align 8
  br label %42

39:                                               ; preds = %3
  %40 = load i64, i64* @ENODEV, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %39, %29, %19, %9
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i64 @simple_feature_tweak(%struct.device_node*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
