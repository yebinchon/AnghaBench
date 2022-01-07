; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32, %struct.sh_eth_cpu_data* }
%struct.sh_eth_cpu_data = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EESR = common dso_local global i32 0, align 4
@EESR_FRC = common dso_local global i32 0, align 4
@EESR_RMAF = common dso_local global i32 0, align 4
@EESR_RRF = common dso_local global i32 0, align 4
@EESR_RTLF = common dso_local global i32 0, align 4
@EESR_RTSF = common dso_local global i32 0, align 4
@EESR_PRE = common dso_local global i32 0, align 4
@EESR_CERF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_eth_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sh_eth_private*, align 8
  %7 = alloca %struct.sh_eth_cpu_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %13)
  store %struct.sh_eth_private* %14, %struct.sh_eth_private** %6, align 8
  %15 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %16 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %15, i32 0, i32 1
  %17 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %16, align 8
  store %struct.sh_eth_cpu_data* %17, %struct.sh_eth_cpu_data** %7, align 8
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %23 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EESR, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @ctrl_inl(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @EESR_FRC, align 4
  %31 = load i32, i32* @EESR_RMAF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @EESR_RRF, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @EESR_RTLF, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @EESR_RTSF, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @EESR_PRE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EESR_CERF, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %44 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  %47 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %48 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = and i32 %29, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %2
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EESR, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @ctrl_outl(i32 %54, i32 %57)
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %8, align 4
  br label %61

60:                                               ; preds = %2
  br label %105

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @EESR_FRC, align 4
  %64 = load i32, i32* @EESR_RMAF, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @EESR_RRF, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @EESR_RTLF, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @EESR_RTSF, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @EESR_PRE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @EESR_CERF, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %62, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %61
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call i32 @sh_eth_rx(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %78, %61
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %84 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = call i32 @sh_eth_txfree(%struct.net_device* %89)
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @netif_wake_queue(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %96 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @sh_eth_error(%struct.net_device* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %93
  br label %105

105:                                              ; preds = %104, %60
  %106 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %107 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ctrl_inl(i32) #1

declare dso_local i32 @ctrl_outl(i32, i32) #1

declare dso_local i32 @sh_eth_rx(%struct.net_device*) #1

declare dso_local i32 @sh_eth_txfree(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @sh_eth_error(%struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
