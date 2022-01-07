; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_isr_extra.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_isr_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IR_RX_FREE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"RX_FREE_0\0A\00", align 1
@IR_LNKCHG0 = common dso_local global i32 0, align 4
@IR_PCIE_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: PCI-E Link Fault\0A\00", align 1
@IR_PCIE_TOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: PCI-E Time Out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*, i32)* @bdx_isr_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_isr_extra(%struct.bdx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IR_RX_FREE_0, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %11 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %12 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %11, i32 0, i32 1
  %13 = call i32 @bdx_rx_alloc_skbs(%struct.bdx_priv* %10, i32* %12)
  %14 = call i32 @DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IR_LNKCHG0, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %22 = call i32 @bdx_link_changed(%struct.bdx_priv* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IR_PCIE_LINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %30 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IR_PCIE_TOUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %42 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @bdx_rx_alloc_skbs(%struct.bdx_priv*, i32*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @bdx_link_changed(%struct.bdx_priv*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
