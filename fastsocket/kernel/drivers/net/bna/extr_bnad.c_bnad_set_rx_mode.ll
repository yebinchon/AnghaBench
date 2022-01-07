; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@BNAD_CF_PROMISC = common dso_local global i32 0, align 4
@BNAD_RXMODE_PROMISC_DEFAULT = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BNAD_CF_ALLMULTI = common dso_local global i32 0, align 4
@BNA_RXMODE_ALLMULTI = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@bnad_bcast_addr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.bnad* @netdev_priv(%struct.net_device* %9)
  store %struct.bnad* %10, %struct.bnad** %3, align 8
  %11 = load %struct.bnad*, %struct.bnad** %3, align 8
  %12 = getelementptr inbounds %struct.bnad, %struct.bnad* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %1
  %22 = load %struct.bnad*, %struct.bnad** %3, align 8
  %23 = getelementptr inbounds %struct.bnad, %struct.bnad* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BNAD_CF_PROMISC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @BNAD_RXMODE_PROMISC_DEFAULT, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @BNAD_RXMODE_PROMISC_DEFAULT, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @BNAD_CF_PROMISC, align 4
  %32 = load %struct.bnad*, %struct.bnad** %3, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %28, %21
  br label %55

37:                                               ; preds = %1
  %38 = load %struct.bnad*, %struct.bnad** %3, align 8
  %39 = getelementptr inbounds %struct.bnad, %struct.bnad* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BNAD_CF_PROMISC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32, i32* @BNAD_RXMODE_PROMISC_DEFAULT, align 4
  %46 = xor i32 %45, -1
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @BNAD_RXMODE_PROMISC_DEFAULT, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @BNAD_CF_PROMISC, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.bnad*, %struct.bnad** %3, align 8
  %51 = getelementptr inbounds %struct.bnad, %struct.bnad* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %44, %37
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_ALLMULTI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %55
  %63 = load %struct.bnad*, %struct.bnad** %3, align 8
  %64 = getelementptr inbounds %struct.bnad, %struct.bnad* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %77 = load %struct.bnad*, %struct.bnad** %3, align 8
  %78 = getelementptr inbounds %struct.bnad, %struct.bnad* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %69, %62
  br label %104

82:                                               ; preds = %55
  %83 = load %struct.bnad*, %struct.bnad** %3, align 8
  %84 = getelementptr inbounds %struct.bnad, %struct.bnad* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.bnad*, %struct.bnad** %3, align 8
  %100 = getelementptr inbounds %struct.bnad, %struct.bnad* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %89, %82
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.bnad*, %struct.bnad** %3, align 8
  %106 = getelementptr inbounds %struct.bnad, %struct.bnad* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %161

113:                                              ; preds = %104
  %114 = load %struct.bnad*, %struct.bnad** %3, align 8
  %115 = getelementptr inbounds %struct.bnad, %struct.bnad* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @bna_rx_mode_set(i32* %119, i32 %120, i32 %121, i32* null)
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = call i32 @netdev_mc_empty(%struct.net_device* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %160, label %126

126:                                              ; preds = %113
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = call i32 @netdev_mc_count(%struct.net_device* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* @ETH_ALEN, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* @GFP_ATOMIC, align 4
  %134 = call i32* @kzalloc(i32 %132, i32 %133)
  store i32* %134, i32** %7, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %126
  br label %161

138:                                              ; preds = %126
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32*, i32** @bnad_bcast_addr, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* @ETH_ALEN, align 4
  %144 = call i32 @memcpy(i32* %140, i32* %142, i32 %143)
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @bnad_netdev_mc_list_get(%struct.net_device* %145, i32* %146)
  %148 = load %struct.bnad*, %struct.bnad** %3, align 8
  %149 = getelementptr inbounds %struct.bnad, %struct.bnad* %148, i32 0, i32 2
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @bna_rx_mcast_listset(i32* %153, i32 %155, i32* %156, i32* null)
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @kfree(i32* %158)
  br label %160

160:                                              ; preds = %138, %113
  br label %161

161:                                              ; preds = %160, %137, %112
  %162 = load %struct.bnad*, %struct.bnad** %3, align 8
  %163 = getelementptr inbounds %struct.bnad, %struct.bnad* %162, i32 0, i32 1
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  ret void
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_rx_mode_set(i32*, i32, i32, i32*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bnad_netdev_mc_list_get(%struct.net_device*, i32*) #1

declare dso_local i32 @bna_rx_mcast_listset(i32*, i32, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
