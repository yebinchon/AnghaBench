; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.efx_nic = type { i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)* }

@EFX_FC_RX = common dso_local global i32 0, align 4
@EFX_FC_TX = common dso_local global i32 0, align 4
@EFX_FC_AUTO = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Flow control unsupported: tx ON rx OFF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Autonegotiation is disabled\0A\00", align 1
@EFX_REV_FALCON_B0 = common dso_local global i64 0, align 8
@RESET_TYPE_INVISIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Unable to advertise requested flow control setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @efx_ethtool_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %11)
  store %struct.efx_nic* %12, %struct.efx_nic** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EFX_FC_RX, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @EFX_FC_TX, align 4
  br label %32

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = or i32 %24, %33
  %35 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EFX_FC_AUTO, align 4
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = or i32 %34, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @EFX_FC_TX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @EFX_FC_RX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %56 = load i32, i32* @drv, align 4
  %57 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @netif_dbg(%struct.efx_nic* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %173

63:                                               ; preds = %49, %42
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @EFX_FC_AUTO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %70 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %68
  %74 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %75 = load i32, i32* @drv, align 4
  %76 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %77 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netif_dbg(%struct.efx_nic* %74, i32 %75, i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %173

82:                                               ; preds = %68, %63
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @EFX_FC_TX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %89 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @EFX_FC_TX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %87, %82
  %96 = phi i1 [ false, %82 ], [ %94, %87 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %99 = call i64 @EFX_WORKAROUND_11482(%struct.efx_nic* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %101
  %105 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %106 = call i64 @efx_nic_rev(%struct.efx_nic* %105)
  %107 = load i64, i64* @EFX_REV_FALCON_B0, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %111 = call i32 @falcon_stop_nic_stats(%struct.efx_nic* %110)
  %112 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %113 = call i32 @falcon_drain_tx_fifo(%struct.efx_nic* %112)
  %114 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %115 = call i32 @falcon_reconfigure_xmac(%struct.efx_nic* %114)
  %116 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %117 = call i32 @falcon_start_nic_stats(%struct.efx_nic* %116)
  br label %122

118:                                              ; preds = %104
  %119 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %120 = load i32, i32* @RESET_TYPE_INVISIBLE, align 4
  %121 = call i32 @efx_schedule_reset(%struct.efx_nic* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %109
  br label %123

123:                                              ; preds = %122, %101, %95
  %124 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %125 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %8, align 8
  %127 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %128 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %7, align 4
  %130 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @efx_link_set_wanted_fc(%struct.efx_nic* %130, i32 %131)
  %133 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %134 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %147, label %138

138:                                              ; preds = %123
  %139 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %140 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = xor i32 %141, %142
  %144 = load i32, i32* @EFX_FC_AUTO, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %138, %123
  %148 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %149 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %148, i32 0, i32 5
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %151, align 8
  %153 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %154 = call i32 %152(%struct.efx_nic* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %159 = load i32, i32* @drv, align 4
  %160 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %161 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @netif_err(%struct.efx_nic* %158, i32 %159, i32 %162, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %173

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164, %138
  %166 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %167 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %166, i32 0, i32 3
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %169, align 8
  %171 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %172 = call i32 %170(%struct.efx_nic* %171)
  br label %173

173:                                              ; preds = %165, %157, %73, %54
  %174 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %175 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %174, i32 0, i32 2
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i32, i32* %10, align 4
  ret i32 %177
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i64 @EFX_WORKAROUND_11482(%struct.efx_nic*) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @falcon_stop_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @falcon_drain_tx_fifo(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reconfigure_xmac(%struct.efx_nic*) #1

declare dso_local i32 @falcon_start_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_link_set_wanted_fc(%struct.efx_nic*, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
