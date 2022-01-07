; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_promisc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_promisc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.bna* }
%struct.bna = type { i32 }

@BNA_RXMODE_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_promisc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_promisc_enable(%struct.bna_rxf* %0) #0 {
  %2 = alloca %struct.bna_rxf*, align 8
  %3 = alloca %struct.bna*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %2, align 8
  %5 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %6 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.bna*, %struct.bna** %8, align 8
  store %struct.bna* %9, %struct.bna** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %11 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %14 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @is_promisc_enable(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %20 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  br label %59

26:                                               ; preds = %18
  %27 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %28 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @is_promisc_disable(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %37 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %40 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @promisc_inactive(i32 %38, i32 %41)
  br label %58

43:                                               ; preds = %26
  %44 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %45 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %48 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @promisc_enable(i32 %46, i32 %49)
  %51 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %52 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bna*, %struct.bna** %3, align 8
  %57 = getelementptr inbounds %struct.bna, %struct.bna* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %43, %35
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @is_promisc_enable(i32, i32) #1

declare dso_local i64 @is_promisc_disable(i32, i32) #1

declare dso_local i32 @promisc_inactive(i32, i32) #1

declare dso_local i32 @promisc_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
