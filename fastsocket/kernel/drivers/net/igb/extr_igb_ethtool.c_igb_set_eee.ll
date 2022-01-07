; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64, i64, i64, i64 }
%struct.igb_adapter = type { %struct.TYPE_8__*, %struct.e1000_hw }
%struct.TYPE_8__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@e1000_i350 = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Setting EEE Advertisement is not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Setting EEE options are not supported with EEE disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @igb_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.ethtool_eee, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.igb_adapter* %11, %struct.igb_adapter** %6, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 1
  store %struct.e1000_hw* %13, %struct.e1000_hw** %7, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_i350, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_media_type_copper, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %2
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %136

30:                                               ; preds = %20
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @igb_get_eee(%struct.net_device* %31, %struct.ethtool_eee* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %136

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %136

56:                                               ; preds = %41
  %57 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %136

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %136

84:                                               ; preds = %69
  br label %99

85:                                               ; preds = %37
  %86 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %136

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %84
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = icmp ne i32 %104, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %99
  %113 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %124 = call i32 @igb_set_eee_i350(%struct.e1000_hw* %123)
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = call i64 @netif_running(%struct.net_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %130 = call i32 @igb_reinit_locked(%struct.igb_adapter* %129)
  br label %134

131:                                              ; preds = %112
  %132 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %133 = call i32 @igb_reset(%struct.igb_adapter* %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %99
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %90, %76, %61, %48, %35, %27
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_get_eee(%struct.net_device*, %struct.ethtool_eee*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @igb_set_eee_i350(%struct.e1000_hw*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @igb_reinit_locked(%struct.igb_adapter*) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
