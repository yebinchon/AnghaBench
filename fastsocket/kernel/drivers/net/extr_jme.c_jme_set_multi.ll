; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.jme_adapter = type { i32, i32 }

@RXMCS_BRDFRAME = common dso_local global i32 0, align 4
@RXMCS_UNIFRAME = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RXMCS_ALLFRAME = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@RXMCS_ALLMULFRAME = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@RXMCS_MULFRAME = common dso_local global i32 0, align 4
@RXMCS_MULFILTERED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@JME_RXMCHT_LO = common dso_local global i32 0, align 4
@JME_RXMCHT_HI = common dso_local global i32 0, align 4
@JME_RXMCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @jme_set_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_set_multi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_mc_list*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.jme_adapter* %9, %struct.jme_adapter** %3, align 8
  %10 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load i32, i32* @RXMCS_BRDFRAME, align 4
  %15 = load i32, i32* @RXMCS_UNIFRAME, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_PROMISC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @RXMCS_ALLFRAME, align 4
  %29 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %110

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @RXMCS_ALLMULFRAME, align 4
  %42 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %109

46:                                               ; preds = %33
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFF_MULTICAST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %108

53:                                               ; preds = %46
  %54 = load i32, i32* @RXMCS_MULFRAME, align 4
  %55 = load i32, i32* @RXMCS_MULFILTERED, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %5, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = load %struct.dev_mc_list*, %struct.dev_mc_list** %62, align 8
  store %struct.dev_mc_list* %63, %struct.dev_mc_list** %6, align 8
  br label %64

64:                                               ; preds = %91, %53
  %65 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %66 = icmp ne %struct.dev_mc_list* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ false, %64 ], [ %72, %67 ]
  br i1 %74, label %75, label %97

75:                                               ; preds = %73
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %78 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ether_crc(i32 %76, i32 %79)
  %81 = and i32 %80, 63
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 31
  %84 = shl i32 1, %83
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %85, 5
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %95 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %94, i32 0, i32 1
  %96 = load %struct.dev_mc_list*, %struct.dev_mc_list** %95, align 8
  store %struct.dev_mc_list* %96, %struct.dev_mc_list** %6, align 8
  br label %64

97:                                               ; preds = %73
  %98 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %99 = load i32, i32* @JME_RXMCHT_LO, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @jwrite32(%struct.jme_adapter* %98, i32 %99, i32 %101)
  %103 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %104 = load i32, i32* @JME_RXMCHT_HI, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @jwrite32(%struct.jme_adapter* %103, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %97, %46
  br label %109

109:                                              ; preds = %108, %40
  br label %110

110:                                              ; preds = %109, %27
  %111 = call i32 (...) @wmb()
  %112 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %113 = load i32, i32* @JME_RXMCS, align 4
  %114 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @jwrite32(%struct.jme_adapter* %112, i32 %113, i32 %116)
  %118 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock_bh(i32* %119)
  ret void
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ether_crc(i32, i32) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
