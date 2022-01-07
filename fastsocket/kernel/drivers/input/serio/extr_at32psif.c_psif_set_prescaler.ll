; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_at32psif.c_psif_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_at32psif.c_psif_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PSIF_PSR_PRSCV_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"pclk too fast, prescaler set to max\0A\00", align 1
@PSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psif*)* @psif_set_prescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psif_set_prescaler(%struct.psif* %0) #0 {
  %2 = alloca %struct.psif*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.psif* %0, %struct.psif** %2, align 8
  %5 = load %struct.psif*, %struct.psif** %2, align 8
  %6 = getelementptr inbounds %struct.psif, %struct.psif* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @clk_get_rate(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = udiv i64 %9, 1000000
  %11 = mul i64 100, %10
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @PSIF_PSR_PRSCV_SIZE, align 4
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %12, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @PSIF_PSR_PRSCV_SIZE, align 4
  %20 = shl i32 1, %19
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %3, align 8
  %23 = load %struct.psif*, %struct.psif** %2, align 8
  %24 = getelementptr inbounds %struct.psif, %struct.psif* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %18, %1
  %29 = load %struct.psif*, %struct.psif** %2, align 8
  %30 = getelementptr inbounds %struct.psif, %struct.psif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clk_enable(i32 %31)
  %33 = load %struct.psif*, %struct.psif** %2, align 8
  %34 = load i32, i32* @PSR, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @psif_writel(%struct.psif* %33, i32 %34, i64 %35)
  %37 = load %struct.psif*, %struct.psif** %2, align 8
  %38 = getelementptr inbounds %struct.psif, %struct.psif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_disable(i32 %39)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @psif_writel(%struct.psif*, i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
