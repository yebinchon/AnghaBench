; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_up_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"link_config FAILED %d\0A\00", align 1
@IXGBE_EICR = common dso_local global i32 0, align 4
@IXGBE_FLAG_FAN_FAIL_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP1 = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Fan has stopped, replace the adapter\0A\00", align 1
@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT_PFRSTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_up_complete(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 5
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = call i32 @ixgbe_get_hw_control(%struct.ixgbe_adapter* %9)
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = call i32 @ixgbe_setup_gpie(%struct.ixgbe_adapter* %11)
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = call i32 @ixgbe_configure_msix(%struct.ixgbe_adapter* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %24 = call i32 @ixgbe_configure_msi_and_legacy(%struct.ixgbe_adapter* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %29, align 8
  %31 = icmp ne i32 (%struct.ixgbe_hw.0*)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %36, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = bitcast %struct.ixgbe_hw* %38 to %struct.ixgbe_hw.0*
  %40 = call i32 %37(%struct.ixgbe_hw.0* %39)
  br label %41

41:                                               ; preds = %32, %25
  %42 = load i32, i32* @__IXGBE_DOWN, align 4
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 4
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %47 = call i32 @ixgbe_napi_enable_all(%struct.ixgbe_adapter* %46)
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = call i64 @ixgbe_is_sfp(%struct.ixgbe_hw* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %53 = call i32 @ixgbe_sfp_link_config(%struct.ixgbe_adapter* %52)
  br label %64

54:                                               ; preds = %41
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = call i32 @ixgbe_non_sfp_link_config(%struct.ixgbe_hw* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @probe, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @e_err(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %51
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = load i32, i32* @IXGBE_EICR, align 4
  %67 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %65, i32 %66)
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %69 = call i32 @ixgbe_irq_enable(%struct.ixgbe_adapter* %68, i32 1, i32 1)
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IXGBE_FLAG_FAN_FAIL_CAPABLE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %64
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = load i32, i32* @IXGBE_ESDP, align 4
  %79 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @IXGBE_ESDP_SDP1, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @drv, align 4
  %86 = call i32 @e_crit(i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %76
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @netif_tx_start_all_queues(i32 %91)
  %93 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @jiffies, align 4
  %99 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 1
  %103 = load i32, i32* @jiffies, align 4
  %104 = call i32 @mod_timer(i32* %102, i32 %103)
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %107 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %105, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @IXGBE_CTRL_EXT_PFRSTD, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %112 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %111, i32 %112, i32 %113)
  ret void
}

declare dso_local i32 @ixgbe_get_hw_control(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_setup_gpie(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_msix(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_msi_and_legacy(%struct.ixgbe_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_napi_enable_all(%struct.ixgbe_adapter*) #1

declare dso_local i64 @ixgbe_is_sfp(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_sfp_link_config(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_non_sfp_link_config(%struct.ixgbe_hw*) #1

declare dso_local i32 @e_err(i32, i8*, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_irq_enable(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @e_crit(i32, i8*) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
