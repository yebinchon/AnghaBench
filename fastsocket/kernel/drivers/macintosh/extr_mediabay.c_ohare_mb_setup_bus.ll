; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_mediabay.c_ohare_mb_setup_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_mediabay.c_ohare_mb_setup_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_bay_info = type { i32 }

@OHARE_FCR = common dso_local global i32 0, align 4
@OH_BAY_FLOPPY_ENABLE = common dso_local global i32 0, align 4
@OH_FLOPPY_ENABLE = common dso_local global i32 0, align 4
@OH_IDE1_RESET_N = common dso_local global i32 0, align 4
@OH_BAY_IDE_ENABLE = common dso_local global i32 0, align 4
@OH_BAY_PCI_ENABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_bay_info*, i32)* @ohare_mb_setup_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohare_mb_setup_bus(%struct.media_bay_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_bay_info*, align 8
  %5 = alloca i32, align 4
  store %struct.media_bay_info* %0, %struct.media_bay_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %30 [
    i32 130, label %7
    i32 129, label %7
    i32 131, label %16
    i32 128, label %25
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %9 = load i32, i32* @OHARE_FCR, align 4
  %10 = load i32, i32* @OH_BAY_FLOPPY_ENABLE, align 4
  %11 = call i32 @MB_BIS(%struct.media_bay_info* %8, i32 %9, i32 %10)
  %12 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %13 = load i32, i32* @OHARE_FCR, align 4
  %14 = load i32, i32* @OH_FLOPPY_ENABLE, align 4
  %15 = call i32 @MB_BIS(%struct.media_bay_info* %12, i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %18 = load i32, i32* @OHARE_FCR, align 4
  %19 = load i32, i32* @OH_IDE1_RESET_N, align 4
  %20 = call i32 @MB_BIC(%struct.media_bay_info* %17, i32 %18, i32 %19)
  %21 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %22 = load i32, i32* @OHARE_FCR, align 4
  %23 = load i32, i32* @OH_BAY_IDE_ENABLE, align 4
  %24 = call i32 @MB_BIS(%struct.media_bay_info* %21, i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %27 = load i32, i32* @OHARE_FCR, align 4
  %28 = load i32, i32* @OH_BAY_PCI_ENABLE, align 4
  %29 = call i32 @MB_BIS(%struct.media_bay_info* %26, i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %25, %16, %7
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @MB_BIS(%struct.media_bay_info*, i32, i32) #1

declare dso_local i32 @MB_BIC(%struct.media_bay_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
