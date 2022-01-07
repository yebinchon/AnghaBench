; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_bfi_rss_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_bfi_rss_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32, i32 }
%struct.TYPE_8__ = type { %struct.bfi_enet_rss_cfg_req }
%struct.bfi_enet_rss_cfg_req = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32, i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_RSS_CFG_REQ = common dso_local global i32 0, align 4
@BFI_ENET_RSS_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*)* @bna_bfi_rss_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_rss_cfg(%struct.bna_rxf* %0) #0 {
  %2 = alloca %struct.bna_rxf*, align 8
  %3 = alloca %struct.bfi_enet_rss_cfg_req*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %2, align 8
  %5 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %6 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store %struct.bfi_enet_rss_cfg_req* %7, %struct.bfi_enet_rss_cfg_req** %3, align 8
  %8 = load %struct.bfi_enet_rss_cfg_req*, %struct.bfi_enet_rss_cfg_req** %3, align 8
  %9 = getelementptr inbounds %struct.bfi_enet_rss_cfg_req, %struct.bfi_enet_rss_cfg_req* %8, i32 0, i32 0
  %10 = load i32, i32* @BFI_MC_ENET, align 4
  %11 = load i32, i32* @BFI_ENET_H2I_RSS_CFG_REQ, align 4
  %12 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %13 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bfi_msgq_mhdr_set(i32 %18, i32 %10, i32 %11, i32 0, i32 %16)
  %20 = call i32 @bfi_msgq_num_cmd_entries(i32 24)
  %21 = call i32 @htons(i32 %20)
  %22 = load %struct.bfi_enet_rss_cfg_req*, %struct.bfi_enet_rss_cfg_req** %3, align 8
  %23 = getelementptr inbounds %struct.bfi_enet_rss_cfg_req, %struct.bfi_enet_rss_cfg_req* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %26 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bfi_enet_rss_cfg_req*, %struct.bfi_enet_rss_cfg_req** %3, align 8
  %30 = getelementptr inbounds %struct.bfi_enet_rss_cfg_req, %struct.bfi_enet_rss_cfg_req* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %33 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bfi_enet_rss_cfg_req*, %struct.bfi_enet_rss_cfg_req** %3, align 8
  %37 = getelementptr inbounds %struct.bfi_enet_rss_cfg_req, %struct.bfi_enet_rss_cfg_req* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %60, %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @BFI_ENET_RSS_KEY_LEN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %45 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @htonl(i32 %51)
  %53 = load %struct.bfi_enet_rss_cfg_req*, %struct.bfi_enet_rss_cfg_req** %3, align 8
  %54 = getelementptr inbounds %struct.bfi_enet_rss_cfg_req, %struct.bfi_enet_rss_cfg_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %65 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %64, i32 0, i32 0
  %66 = load %struct.bfi_enet_rss_cfg_req*, %struct.bfi_enet_rss_cfg_req** %3, align 8
  %67 = getelementptr inbounds %struct.bfi_enet_rss_cfg_req, %struct.bfi_enet_rss_cfg_req* %66, i32 0, i32 0
  %68 = call i32 @bfa_msgq_cmd_set(i32* %65, i32* null, i32* null, i32 24, %struct.TYPE_13__* %67)
  %69 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %70 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %76 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %75, i32 0, i32 0
  %77 = call i32 @bfa_msgq_cmd_post(i32* %74, i32* %76)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i32, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
