; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_at32psif.c_psif_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_at32psif.c_psif_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.psif* }
%struct.psif = type { i32, i64 }

@IDR = common dso_local global i32 0, align 4
@CR = common dso_local global i32 0, align 4
@CR_TXDIS = common dso_local global i32 0, align 4
@CR_RXDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @psif_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psif_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.psif*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 0
  %6 = load %struct.psif*, %struct.psif** %5, align 8
  store %struct.psif* %6, %struct.psif** %3, align 8
  %7 = load %struct.psif*, %struct.psif** %3, align 8
  %8 = getelementptr inbounds %struct.psif, %struct.psif* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.psif*, %struct.psif** %3, align 8
  %10 = load i32, i32* @IDR, align 4
  %11 = call i32 @psif_writel(%struct.psif* %9, i32 %10, i64 -1)
  %12 = load %struct.psif*, %struct.psif** %3, align 8
  %13 = load i32, i32* @CR, align 4
  %14 = load i32, i32* @CR_TXDIS, align 4
  %15 = call i64 @PSIF_BIT(i32 %14)
  %16 = load i32, i32* @CR_RXDIS, align 4
  %17 = call i64 @PSIF_BIT(i32 %16)
  %18 = or i64 %15, %17
  %19 = call i32 @psif_writel(%struct.psif* %12, i32 %13, i64 %18)
  %20 = load %struct.psif*, %struct.psif** %3, align 8
  %21 = getelementptr inbounds %struct.psif, %struct.psif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_disable(i32 %22)
  ret void
}

declare dso_local i32 @psif_writel(%struct.psif*, i32, i64) #1

declare dso_local i64 @PSIF_BIT(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
