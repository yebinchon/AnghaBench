; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_update_phystatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_update_phystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i32, i64, i64, i64, i64, %struct.TYPE_2__*, i64, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@EMAC_MACCONTROL = common dso_local global i32 0, align 4
@EMAC_MACCONTROL_FULLDUPLEXEN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@EMAC_VERSION_2 = common dso_local global i64 0, align 8
@EMAC_DM646X_MACCONTORL_GIG = common dso_local global i32 0, align 4
@EMAC_DM646X_MACCONTORL_GIGFORCE = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@EMAC_MACCONTROL_RMIISPEED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_priv*)* @emac_update_phystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_update_phystatus(%struct.emac_priv* %0) #0 {
  %2 = alloca %struct.emac_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %2, align 8
  %7 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %7, i32 0, i32 7
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load i32, i32* @EMAC_MACCONTROL, align 4
  %11 = call i32 @emac_read(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @EMAC_MACCONTROL_FULLDUPLEXEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @DUPLEX_FULL, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @DUPLEX_HALF, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %24 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %29 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load i64, i64* @DUPLEX_FULL, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %38 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %48 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* @DUPLEX_FULL, align 8
  %50 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %51 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @EMAC_MACCONTROL_FULLDUPLEXEN, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %45
  %60 = load i32, i32* @EMAC_MACCONTROL_FULLDUPLEXEN, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64, %41, %36
  %66 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %67 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SPEED_1000, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %73 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EMAC_VERSION_2, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32, i32* @EMAC_MACCONTROL, align 4
  %79 = call i32 @emac_read(i32 %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* @EMAC_DM646X_MACCONTORL_GIG, align 4
  %81 = load i32, i32* @EMAC_DM646X_MACCONTORL_GIGFORCE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %112

85:                                               ; preds = %71, %65
  %86 = load i32, i32* @EMAC_DM646X_MACCONTORL_GIGFORCE, align 4
  %87 = load i32, i32* @EMAC_DM646X_MACCONTORL_GIG, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %3, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %93 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %98 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SPEED_100, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @EMAC_MACCONTROL_RMIISPEED_MASK, align 4
  %104 = load i32, i32* %3, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %3, align 4
  br label %111

106:                                              ; preds = %96, %85
  %107 = load i32, i32* @EMAC_MACCONTROL_RMIISPEED_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %102
  br label %112

112:                                              ; preds = %111, %77
  %113 = load i32, i32* @EMAC_MACCONTROL, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @emac_write(i32 %113, i32 %114)
  %116 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %117 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %112
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = call i64 @netif_carrier_ok(%struct.net_device* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load %struct.net_device*, %struct.net_device** %6, align 8
  %126 = call i32 @netif_carrier_on(%struct.net_device* %125)
  br label %127

127:                                              ; preds = %124, %120
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = call i64 @netif_running(%struct.net_device* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load %struct.net_device*, %struct.net_device** %6, align 8
  %133 = call i64 @netif_queue_stopped(%struct.net_device* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = call i32 @netif_wake_queue(%struct.net_device* %136)
  br label %138

138:                                              ; preds = %135, %131, %127
  br label %154

139:                                              ; preds = %112
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = call i64 @netif_carrier_ok(%struct.net_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.net_device*, %struct.net_device** %6, align 8
  %145 = call i32 @netif_carrier_off(%struct.net_device* %144)
  br label %146

146:                                              ; preds = %143, %139
  %147 = load %struct.net_device*, %struct.net_device** %6, align 8
  %148 = call i64 @netif_queue_stopped(%struct.net_device* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load %struct.net_device*, %struct.net_device** %6, align 8
  %152 = call i32 @netif_stop_queue(%struct.net_device* %151)
  br label %153

153:                                              ; preds = %150, %146
  br label %154

154:                                              ; preds = %153, %138
  ret void
}

declare dso_local i32 @emac_read(i32) #1

declare dso_local i32 @emac_write(i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
