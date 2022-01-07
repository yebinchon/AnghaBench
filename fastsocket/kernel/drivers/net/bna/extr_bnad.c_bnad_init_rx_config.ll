; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_init_rx_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_init_rx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32 }
%struct.bna_rx_config = type { i32, i8*, i32, i32, i32, %struct.TYPE_2__, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BNA_RX_T_REGULAR = common dso_local global i32 0, align 4
@BNA_STATUS_T_ENABLED = common dso_local global i8* null, align 8
@BFI_ENET_RSS_IPV6 = common dso_local global i32 0, align 4
@BFI_ENET_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@BFI_ENET_RSS_IPV4 = common dso_local global i32 0, align 4
@BFI_ENET_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i8* null, align 8
@BNA_RXP_SLR = common dso_local global i32 0, align 4
@BFI_SMALL_RXBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_rx_config*)* @bnad_init_rx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_init_rx_config(%struct.bnad* %0, %struct.bna_rx_config* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_rx_config*, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_rx_config* %1, %struct.bna_rx_config** %4, align 8
  %5 = load i32, i32* @BNA_RX_T_REGULAR, align 4
  %6 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %7 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %6, i32 0, i32 8
  store i32 %5, i32* %7, align 4
  %8 = load %struct.bnad*, %struct.bnad** %3, align 8
  %9 = getelementptr inbounds %struct.bnad, %struct.bnad* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %12 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bnad*, %struct.bnad** %3, align 8
  %14 = getelementptr inbounds %struct.bnad, %struct.bnad* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %17 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bnad*, %struct.bnad** %3, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %48

22:                                               ; preds = %2
  %23 = load i8*, i8** @BNA_STATUS_T_ENABLED, align 8
  %24 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %25 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @BFI_ENET_RSS_IPV6, align 4
  %27 = load i32, i32* @BFI_ENET_RSS_IPV6_TCP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BFI_ENET_RSS_IPV4, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @BFI_ENET_RSS_IPV4_TCP, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %34 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.bnad*, %struct.bnad** %3, align 8
  %37 = getelementptr inbounds %struct.bnad, %struct.bnad* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %41 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %44 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @get_random_bytes(i32 %46, i32 4)
  br label %55

48:                                               ; preds = %2
  %49 = load i8*, i8** @BNA_STATUS_T_DISABLED, align 8
  %50 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %51 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %53 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %52, i32 0, i32 5
  %54 = call i32 @memset(%struct.TYPE_2__* %53, i32 0, i32 12)
  br label %55

55:                                               ; preds = %48, %22
  %56 = load i32, i32* @BNA_RXP_SLR, align 4
  %57 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %58 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bnad*, %struct.bnad** %3, align 8
  %60 = getelementptr inbounds %struct.bnad, %struct.bnad* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %63 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @BFI_SMALL_RXBUF_SIZE, align 4
  %65 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %66 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** @BNA_STATUS_T_ENABLED, align 8
  %68 = load %struct.bna_rx_config*, %struct.bna_rx_config** %4, align 8
  %69 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  ret void
}

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
