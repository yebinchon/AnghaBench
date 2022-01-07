; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_config_color_patterns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_config_color_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_col_pat = type { i32, i32, i32, i32 }

@COLPTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccdc_col_pat*, %struct.ccdc_col_pat*)* @ccdc_config_color_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_color_patterns(%struct.ccdc_col_pat* %0, %struct.ccdc_col_pat* %1) #0 {
  %3 = alloca %struct.ccdc_col_pat*, align 8
  %4 = alloca %struct.ccdc_col_pat*, align 8
  %5 = alloca i32, align 4
  store %struct.ccdc_col_pat* %0, %struct.ccdc_col_pat** %3, align 8
  store %struct.ccdc_col_pat* %1, %struct.ccdc_col_pat** %4, align 8
  %6 = load %struct.ccdc_col_pat*, %struct.ccdc_col_pat** %3, align 8
  %7 = getelementptr inbounds %struct.ccdc_col_pat, %struct.ccdc_col_pat* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ccdc_col_pat*, %struct.ccdc_col_pat** %3, align 8
  %10 = getelementptr inbounds %struct.ccdc_col_pat, %struct.ccdc_col_pat* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 2
  %13 = or i32 %8, %12
  %14 = load %struct.ccdc_col_pat*, %struct.ccdc_col_pat** %3, align 8
  %15 = getelementptr inbounds %struct.ccdc_col_pat, %struct.ccdc_col_pat* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 4
  %18 = or i32 %13, %17
  %19 = load %struct.ccdc_col_pat*, %struct.ccdc_col_pat** %3, align 8
  %20 = getelementptr inbounds %struct.ccdc_col_pat, %struct.ccdc_col_pat* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 6
  %23 = or i32 %18, %22
  %24 = load %struct.ccdc_col_pat*, %struct.ccdc_col_pat** %4, align 8
  %25 = getelementptr inbounds %struct.ccdc_col_pat, %struct.ccdc_col_pat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %23, %27
  %29 = load %struct.ccdc_col_pat*, %struct.ccdc_col_pat** %4, align 8
  %30 = getelementptr inbounds %struct.ccdc_col_pat, %struct.ccdc_col_pat* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 10
  %33 = or i32 %28, %32
  %34 = load %struct.ccdc_col_pat*, %struct.ccdc_col_pat** %4, align 8
  %35 = getelementptr inbounds %struct.ccdc_col_pat, %struct.ccdc_col_pat* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 12
  %38 = or i32 %33, %37
  %39 = load %struct.ccdc_col_pat*, %struct.ccdc_col_pat** %4, align 8
  %40 = getelementptr inbounds %struct.ccdc_col_pat, %struct.ccdc_col_pat* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 14
  %43 = or i32 %38, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @COLPTN, align 4
  %46 = call i32 @regw(i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
