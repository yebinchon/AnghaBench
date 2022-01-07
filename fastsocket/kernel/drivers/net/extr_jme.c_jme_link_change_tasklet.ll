; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_link_change_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_link_change_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i64, i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Get link change lock failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Waiting link change lock.\0A\00", align 1
@JME_FLAG_POLL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Allocating resources for RX error, Device STOPPED!\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Allocating resources for TX error, Device STOPPED!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @jme_link_change_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_link_change_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.jme_adapter*
  store %struct.jme_adapter* %7, %struct.jme_adapter** %3, align 8
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %8, i32 0, i32 7
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  br label %11

11:                                               ; preds = %31, %1
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 1
  %14 = call i32 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %22 = call i32 @msg_intr(%struct.jme_adapter* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %28, %17
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %24, i32 0, i32 1
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %30 = call i32 @msg_intr(%struct.jme_adapter* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %23

31:                                               ; preds = %23
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i64 @jme_check_link(%struct.net_device* %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %164

45:                                               ; preds = %36, %32
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netif_stop_queue(%struct.net_device* %51)
  %53 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %54 = call i64 @jme_pseudo_hotplug_enabled(%struct.jme_adapter* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %58 = call i32 @jme_stop_shutdown_timer(%struct.jme_adapter* %57)
  br label %59

59:                                               ; preds = %56, %45
  %60 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %61 = call i32 @jme_stop_pcc_timer(%struct.jme_adapter* %60)
  %62 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %62, i32 0, i32 4
  %64 = call i32 @tasklet_disable(i32* %63)
  %65 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %65, i32 0, i32 3
  %67 = call i32 @tasklet_disable(i32* %66)
  %68 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %68, i32 0, i32 2
  %70 = call i32 @tasklet_disable(i32* %69)
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i64 @netif_carrier_ok(%struct.net_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %59
  %75 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %76 = call i32 @jme_reset_ghc_speed(%struct.jme_adapter* %75)
  %77 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %78 = call i32 @jme_disable_rx_engine(%struct.jme_adapter* %77)
  %79 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %80 = call i32 @jme_disable_tx_engine(%struct.jme_adapter* %79)
  %81 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %82 = call i32 @jme_reset_mac_processor(%struct.jme_adapter* %81)
  %83 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %84 = call i32 @jme_free_rx_resources(%struct.jme_adapter* %83)
  %85 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %86 = call i32 @jme_free_tx_resources(%struct.jme_adapter* %85)
  %87 = load i32, i32* @JME_FLAG_POLL, align 4
  %88 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %88, i32 0, i32 5
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %94 = call i32 @jme_polling_mode(%struct.jme_adapter* %93)
  br label %95

95:                                               ; preds = %92, %74
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = call i32 @netif_carrier_off(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %95, %59
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i64 @jme_check_link(%struct.net_device* %99, i32 0)
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = call i64 @netif_carrier_ok(%struct.net_device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %98
  %105 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %106 = call i32 @jme_setup_rx_resources(%struct.jme_adapter* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @jeprintk(i32 %112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %154

114:                                              ; preds = %104
  %115 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %116 = call i32 @jme_setup_tx_resources(%struct.jme_adapter* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @jeprintk(i32 %122, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %151

124:                                              ; preds = %114
  %125 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %126 = call i32 @jme_enable_rx_engine(%struct.jme_adapter* %125)
  %127 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %128 = call i32 @jme_enable_tx_engine(%struct.jme_adapter* %127)
  %129 = load %struct.net_device*, %struct.net_device** %4, align 8
  %130 = call i32 @netif_start_queue(%struct.net_device* %129)
  %131 = load i32, i32* @JME_FLAG_POLL, align 4
  %132 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %132, i32 0, i32 5
  %134 = call i64 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %138 = call i32 @jme_interrupt_mode(%struct.jme_adapter* %137)
  br label %139

139:                                              ; preds = %136, %124
  %140 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %141 = call i32 @jme_start_pcc_timer(%struct.jme_adapter* %140)
  br label %150

142:                                              ; preds = %98
  %143 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %144 = call i64 @jme_pseudo_hotplug_enabled(%struct.jme_adapter* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %148 = call i32 @jme_start_shutdown_timer(%struct.jme_adapter* %147)
  br label %149

149:                                              ; preds = %146, %142
  br label %150

150:                                              ; preds = %149, %139
  br label %154

151:                                              ; preds = %119
  %152 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %153 = call i32 @jme_free_rx_resources(%struct.jme_adapter* %152)
  br label %154

154:                                              ; preds = %151, %150, %109
  %155 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %155, i32 0, i32 4
  %157 = call i32 @tasklet_enable(i32* %156)
  %158 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %158, i32 0, i32 3
  %160 = call i32 @tasklet_hi_enable(i32* %159)
  %161 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %161, i32 0, i32 2
  %163 = call i32 @tasklet_hi_enable(i32* %162)
  br label %164

164:                                              ; preds = %154, %44
  %165 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %165, i32 0, i32 1
  %167 = call i32 @atomic_inc(i32* %166)
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @msg_intr(%struct.jme_adapter*, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @jme_check_link(%struct.net_device*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @jme_pseudo_hotplug_enabled(%struct.jme_adapter*) #1

declare dso_local i32 @jme_stop_shutdown_timer(%struct.jme_adapter*) #1

declare dso_local i32 @jme_stop_pcc_timer(%struct.jme_adapter*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @jme_reset_ghc_speed(%struct.jme_adapter*) #1

declare dso_local i32 @jme_disable_rx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @jme_disable_tx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @jme_reset_mac_processor(%struct.jme_adapter*) #1

declare dso_local i32 @jme_free_rx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jme_free_tx_resources(%struct.jme_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jme_polling_mode(%struct.jme_adapter*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @jme_setup_rx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jeprintk(i32, i8*) #1

declare dso_local i32 @jme_setup_tx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jme_enable_rx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @jme_enable_tx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @jme_interrupt_mode(%struct.jme_adapter*) #1

declare dso_local i32 @jme_start_pcc_timer(%struct.jme_adapter*) #1

declare dso_local i32 @jme_start_shutdown_timer(%struct.jme_adapter*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @tasklet_hi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
