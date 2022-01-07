; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_config_black_compense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_config_black_compense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_black_compensation = type { i32, i32, i32, i32 }

@CCDC_BLK_COMP_MASK = common dso_local global i32 0, align 4
@CCDC_BLK_COMP_GB_COMP_SHIFT = common dso_local global i32 0, align 4
@BLKCMP1 = common dso_local global i32 0, align 4
@CCDC_BLK_COMP_GR_COMP_SHIFT = common dso_local global i32 0, align 4
@CCDC_BLK_COMP_R_COMP_SHIFT = common dso_local global i32 0, align 4
@BLKCMP0 = common dso_local global i32 0, align 4
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
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @BLKCMP1, align 4
  %19 = call i32 @regw(i32 %17, i32 %18)
  %20 = load %struct.ccdc_black_compensation*, %struct.ccdc_black_compensation** %2, align 8
  %21 = getelementptr inbounds %struct.ccdc_black_compensation, %struct.ccdc_black_compensation* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CCDC_BLK_COMP_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @CCDC_BLK_COMP_GR_COMP_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.ccdc_black_compensation*, %struct.ccdc_black_compensation** %2, align 8
  %28 = getelementptr inbounds %struct.ccdc_black_compensation, %struct.ccdc_black_compensation* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CCDC_BLK_COMP_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @CCDC_BLK_COMP_R_COMP_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %26, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @BLKCMP0, align 4
  %37 = call i32 @regw(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
