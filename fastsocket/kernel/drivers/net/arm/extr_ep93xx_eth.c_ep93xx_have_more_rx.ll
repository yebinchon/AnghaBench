; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_have_more_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_have_more_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep93xx_rstat* }
%struct.ep93xx_rstat = type { i32, i32 }

@RSTAT0_RFP = common dso_local global i32 0, align 4
@RSTAT1_RFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_priv*)* @ep93xx_have_more_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_have_more_rx(%struct.ep93xx_priv* %0) #0 {
  %2 = alloca %struct.ep93xx_priv*, align 8
  %3 = alloca %struct.ep93xx_rstat*, align 8
  store %struct.ep93xx_priv* %0, %struct.ep93xx_priv** %2, align 8
  %4 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ep93xx_rstat*, %struct.ep93xx_rstat** %7, align 8
  %9 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ep93xx_rstat, %struct.ep93xx_rstat* %8, i64 %12
  store %struct.ep93xx_rstat* %13, %struct.ep93xx_rstat** %3, align 8
  %14 = load %struct.ep93xx_rstat*, %struct.ep93xx_rstat** %3, align 8
  %15 = getelementptr inbounds %struct.ep93xx_rstat, %struct.ep93xx_rstat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RSTAT0_RFP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.ep93xx_rstat*, %struct.ep93xx_rstat** %3, align 8
  %22 = getelementptr inbounds %struct.ep93xx_rstat, %struct.ep93xx_rstat* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RSTAT1_RFP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %20, %1
  %28 = phi i1 [ false, %1 ], [ %26, %20 ]
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
