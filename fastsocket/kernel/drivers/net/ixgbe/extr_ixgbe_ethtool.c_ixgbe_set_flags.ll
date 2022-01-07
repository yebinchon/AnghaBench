; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IXGBE_FLAG2_RSC_CAPABLE = common dso_local global i32 0, align 4
@ETH_FLAG_LRO = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSC_ENABLED = common dso_local global i32 0, align 4
@IXGBE_MAX_RSC_INT_RATE = common dso_local global i64 0, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"rx-usecs set too low, not enabling RSC.\0A\00", align 1
@IXGBE_FLAG_FDIR_PERFECT_CAPABLE = common dso_local global i32 0, align 4
@ETH_FLAG_NTUPLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgbe_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_flags(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ethtool_op_set_flags(%struct.net_device* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %151

18:                                               ; preds = %2
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IXGBE_FLAG2_RSC_CAPABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ETH_FLAG_LRO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = icmp ne i32 %32, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ETH_FLAG_LRO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IXGBE_MAX_RSC_INT_RATE, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %48
  %60 = load i32, i32* @probe, align 4
  %61 = call i32 @e_info(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %79

62:                                               ; preds = %53, %43
  %63 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = xor i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %77 [
    i32 128, label %73
    i32 129, label %76
  ]

73:                                               ; preds = %62
  %74 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %75 = call i32 @ixgbe_set_rsc(%struct.ixgbe_adapter* %74)
  br label %78

76:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  br label %78

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %76, %73
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79, %25, %18
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %82 = call i32 @ixgbe_adapter_fdir_capable(%struct.ixgbe_adapter* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %144

85:                                               ; preds = %80
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %87 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @ETH_FLAG_NTUPLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  store i32 1, i32* %7, align 4
  br label %109

109:                                              ; preds = %97, %92
  br label %143

110:                                              ; preds = %85
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @ETH_FLAG_NTUPLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %142, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %119 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %115
  %129 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %130 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %137 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %138 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %128, %115
  store i32 1, i32* %7, align 4
  br label %142

142:                                              ; preds = %141, %110
  br label %143

143:                                              ; preds = %142, %109
  br label %144

144:                                              ; preds = %143, %84
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.net_device*, %struct.net_device** %4, align 8
  %149 = call i32 @ixgbe_do_reset(%struct.net_device* %148)
  br label %150

150:                                              ; preds = %147, %144
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %16
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_op_set_flags(%struct.net_device*, i32) #1

declare dso_local i32 @e_info(i32, i8*) #1

declare dso_local i32 @ixgbe_set_rsc(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_adapter_fdir_capable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_do_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
