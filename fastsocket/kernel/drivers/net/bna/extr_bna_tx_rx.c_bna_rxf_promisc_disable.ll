; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_promisc_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_promisc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bna* }
%struct.bna = type { i32 }

@BNA_RXMODE_PROMISC = common dso_local global i32 0, align 4
@BFI_INVALID_RID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_promisc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_promisc_disable(%struct.bna_rxf* %0) #0 {
  %2 = alloca %struct.bna_rxf*, align 8
  %3 = alloca %struct.bna*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %2, align 8
  %5 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %6 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.bna*, %struct.bna** %8, align 8
  store %struct.bna* %9, %struct.bna** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %11 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %14 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_promisc_disable(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %20 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %1
  br label %63

26:                                               ; preds = %18
  %27 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %28 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @is_promisc_enable(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %37 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %40 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @promisc_inactive(i32 %38, i32 %41)
  %43 = load i32, i32* @BFI_INVALID_RID, align 4
  %44 = load %struct.bna*, %struct.bna** %3, align 8
  %45 = getelementptr inbounds %struct.bna, %struct.bna* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %62

46:                                               ; preds = %26
  %47 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %48 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %55 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %58 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @promisc_disable(i32 %56, i32 %59)
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %53, %46
  br label %62

62:                                               ; preds = %61, %35
  br label %63

63:                                               ; preds = %62, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @is_promisc_disable(i32, i32) #1

declare dso_local i64 @is_promisc_enable(i32, i32) #1

declare dso_local i32 @promisc_inactive(i32, i32) #1

declare dso_local i32 @promisc_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
