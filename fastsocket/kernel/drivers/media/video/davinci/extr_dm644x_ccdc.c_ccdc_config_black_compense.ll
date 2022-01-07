; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_config_black_compense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_config_black_compense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_black_compensation = type { i32, i32, i32, i32 }

@CCDC_BLK_COMP_MASK = common dso_local global i32 0, align 4
@CCDC_BLK_COMP_GB_COMP_SHIFT = common dso_local global i32 0, align 4
@CCDC_BLK_COMP_GR_COMP_SHIFT = common dso_local global i32 0, align 4
@CCDC_BLK_COMP_R_COMP_SHIFT = common dso_local global i32 0, align 4
@CCDC_BLKCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccdc_black_compensation*)* @ccdc_config_black_compense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_black_compense(%struct.ccdc_black_compensation* %0) #0 {
  %2 = alloca %struct.ccdc_black_compensation*, align 8
  %3 = alloca i32, align 4
  store %struct.ccdc_black_compensation* %0, %struct.ccdc_black_compensation** %2, align 8
  %4 = load %struct.ccdc_black_compensation*, %struct.ccdc_black_compensation** %2, align 8
  %5 = getelementptr inbounds %struct.ccdc_black_compensation, %struct.ccdc_black_compensation* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CCDC_BLK_COMP_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load %struct.ccdc_black_compensation*, %struct.ccdc_black_compensation** %2, align 8
  %10 = getelementptr inbounds %struct.ccdc_black_compensation, %struct.ccdc_black_compensation* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CCDC_BLK_COMP_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @CCDC_BLK_COMP_GB_COMP_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %8, %15
  %17 = load %struct.ccdc_black_compensation*, %struct.ccdc_black_compensation** %2, align 8
  %18 = getelementptr inbounds %struct.ccdc_black_compensation, %struct.ccdc_black_compensation* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CCDC_BLK_COMP_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @CCDC_BLK_COMP_GR_COMP_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %16, %23
  %25 = load %struct.ccdc_black_compensation*, %struct.ccdc_black_compensation** %2, align 8
  %26 = getelementptr inbounds %struct.ccdc_black_compensation, %struct.ccdc_black_compensation* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CCDC_BLK_COMP_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CCDC_BLK_COMP_R_COMP_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %24, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @CCDC_BLKCMP, align 4
  %35 = call i32 @regw(i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
