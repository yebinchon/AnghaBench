; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_ohare_ide_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_ohare_ide_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@macio_ohare = common dso_local global i32 0, align 4
@OHARE_FCR = common dso_local global i32 0, align 4
@OH_IOBUS_ENABLE = common dso_local global i32 0, align 4
@OH_IDE0_ENABLE = common dso_local global i32 0, align 4
@OH_BAY_IDE_ENABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @ohare_ide_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ohare_ide_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  switch i64 %8, label %32 [
    i64 0, label %9
    i64 1, label %25
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = load i32, i32* @macio_ohare, align 4
  %15 = load i32, i32* @OHARE_FCR, align 4
  %16 = load i32, i32* @OH_IOBUS_ENABLE, align 4
  %17 = call i64 @simple_feature_tweak(%struct.device_node* %13, i32 %14, i32 %15, i32 %16, i64 1)
  br label %18

18:                                               ; preds = %12, %9
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = load i32, i32* @macio_ohare, align 4
  %21 = load i32, i32* @OHARE_FCR, align 4
  %22 = load i32, i32* @OH_IDE0_ENABLE, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @simple_feature_tweak(%struct.device_node* %19, i32 %20, i32 %21, i32 %22, i64 %23)
  store i64 %24, i64* %4, align 8
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = load i32, i32* @macio_ohare, align 4
  %28 = load i32, i32* @OHARE_FCR, align 4
  %29 = load i32, i32* @OH_BAY_IDE_ENABLE, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @simple_feature_tweak(%struct.device_node* %26, i32 %27, i32 %28, i32 %29, i64 %30)
  store i64 %31, i64* %4, align 8
  br label %35

32:                                               ; preds = %3
  %33 = load i64, i64* @ENODEV, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %32, %25, %18
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i64 @simple_feature_tweak(%struct.device_node*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
