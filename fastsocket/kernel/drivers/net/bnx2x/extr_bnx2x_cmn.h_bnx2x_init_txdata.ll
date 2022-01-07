; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_init_txdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_init_txdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_fp_txdata = type { i32, i32, i32, %struct.bnx2x_fastpath*, i32* }
%struct.bnx2x_fastpath = type { i32 }

@MAX_TX_AVAIL = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"created tx data cid %d, txq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fp_txdata*, i32, i32, i32*, %struct.bnx2x_fastpath*)* @bnx2x_init_txdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_txdata(%struct.bnx2x* %0, %struct.bnx2x_fp_txdata* %1, i32 %2, i32 %3, i32* %4, %struct.bnx2x_fastpath* %5) #0 {
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_fp_txdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bnx2x_fastpath*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_fp_txdata* %1, %struct.bnx2x_fp_txdata** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.bnx2x_fastpath* %5, %struct.bnx2x_fastpath** %12, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %8, align 8
  %15 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %8, align 8
  %18 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %20, i32 0, i32 4
  store i32* %19, i32** %21, align 8
  %22 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %12, align 8
  %23 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %8, align 8
  %24 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %23, i32 0, i32 3
  store %struct.bnx2x_fastpath* %22, %struct.bnx2x_fastpath** %24, align 8
  %25 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %12, align 8
  %26 = call i64 @IS_FCOE_FP(%struct.bnx2x_fastpath* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @MAX_TX_AVAIL, align 4
  br label %34

30:                                               ; preds = %6
  %31 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i32 [ %29, %28 ], [ %33, %30 ]
  %36 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %8, align 8
  %37 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %39 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %8, align 8
  %40 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %8, align 8
  %43 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @DP(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  ret void
}

declare dso_local i64 @IS_FCOE_FP(%struct.bnx2x_fastpath*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
