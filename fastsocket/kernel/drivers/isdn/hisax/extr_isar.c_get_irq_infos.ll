; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_get_irq_infos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_get_irq_infos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32)* }
%struct.isar_reg = type { i32, i32, i32 }

@ISAR_IIS = common dso_local global i32 0, align 4
@ISAR_CTRL_H = common dso_local global i32 0, align 4
@ISAR_CTRL_L = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, %struct.isar_reg*)* @get_irq_infos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_irq_infos(%struct.IsdnCardState* %0, %struct.isar_reg* %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca %struct.isar_reg*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store %struct.isar_reg* %1, %struct.isar_reg** %4, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 1
  %7 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %6, align 8
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %9 = load i32, i32* @ISAR_IIS, align 4
  %10 = call i32 %7(%struct.IsdnCardState* %8, i32 1, i32 %9)
  %11 = load %struct.isar_reg*, %struct.isar_reg** %4, align 8
  %12 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 1
  %15 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %14, align 8
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %17 = load i32, i32* @ISAR_CTRL_H, align 4
  %18 = call i32 %15(%struct.IsdnCardState* %16, i32 1, i32 %17)
  %19 = load %struct.isar_reg*, %struct.isar_reg** %4, align 8
  %20 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %22 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %21, i32 0, i32 1
  %23 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %22, align 8
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %25 = load i32, i32* @ISAR_CTRL_L, align 4
  %26 = call i32 %23(%struct.IsdnCardState* %24, i32 1, i32 %25)
  %27 = load %struct.isar_reg*, %struct.isar_reg** %4, align 8
  %28 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
