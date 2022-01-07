; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxp_add_rxqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxp_add_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxp = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.bna_rxq*, %struct.bna_rxq* }
%struct.TYPE_5__ = type { %struct.bna_rxq*, %struct.bna_rxq* }
%struct.TYPE_7__ = type { i32*, %struct.bna_rxq* }
%struct.bna_rxq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxp*, %struct.bna_rxq*, %struct.bna_rxq*)* @bna_rxp_add_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxp_add_rxqs(%struct.bna_rxp* %0, %struct.bna_rxq* %1, %struct.bna_rxq* %2) #0 {
  %4 = alloca %struct.bna_rxp*, align 8
  %5 = alloca %struct.bna_rxq*, align 8
  %6 = alloca %struct.bna_rxq*, align 8
  store %struct.bna_rxp* %0, %struct.bna_rxp** %4, align 8
  store %struct.bna_rxq* %1, %struct.bna_rxq** %5, align 8
  store %struct.bna_rxq* %2, %struct.bna_rxq** %6, align 8
  %7 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %8 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %42 [
    i32 129, label %10
    i32 128, label %20
    i32 130, label %31
  ]

10:                                               ; preds = %3
  %11 = load %struct.bna_rxq*, %struct.bna_rxq** %5, align 8
  %12 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %13 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store %struct.bna_rxq* %11, %struct.bna_rxq** %15, align 8
  %16 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %17 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.bna_rxq*, %struct.bna_rxq** %5, align 8
  %22 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %23 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %struct.bna_rxq* %21, %struct.bna_rxq** %25, align 8
  %26 = load %struct.bna_rxq*, %struct.bna_rxq** %6, align 8
  %27 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %28 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.bna_rxq* %26, %struct.bna_rxq** %30, align 8
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.bna_rxq*, %struct.bna_rxq** %5, align 8
  %33 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %34 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store %struct.bna_rxq* %32, %struct.bna_rxq** %36, align 8
  %37 = load %struct.bna_rxq*, %struct.bna_rxq** %6, align 8
  %38 = load %struct.bna_rxp*, %struct.bna_rxp** %4, align 8
  %39 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.bna_rxq* %37, %struct.bna_rxq** %41, align 8
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %31, %20, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
