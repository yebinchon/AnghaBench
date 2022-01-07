; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_set_max_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_set_max_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to setup interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to setup mbx interrupt\0A\00", align 1
@NETDEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_set_max_rss(%struct.qlcnic_adapter* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %9, align 8
  %13 = call i32 (...) @rtnl_lock()
  %14 = load %struct.net_device*, %struct.net_device** %9, align 8
  %15 = call i32 @netif_device_detach(%struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = call i64 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = call i32 @__qlcnic_down(%struct.qlcnic_adapter* %20, %struct.net_device* %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %25 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %24)
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %27 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %31 = call i32 @qlcnic_83xx_enable_mbx_poll(%struct.qlcnic_adapter* %30)
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %33 = call i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter* %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %36 = call i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter* %35)
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @qlcnic_setup_intr(%struct.qlcnic_adapter* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %102

53:                                               ; preds = %34
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %55 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %59 = call i32 @qlcnic_83xx_register_nic_idc_func(%struct.qlcnic_adapter* %58, i32 1)
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %61 = call i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %63 = call i32 @qlcnic_83xx_disable_mbx_poll(%struct.qlcnic_adapter* %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %97

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.net_device*, %struct.net_device** %9, align 8
  %75 = call i64 @netif_running(%struct.net_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %79 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %97

83:                                               ; preds = %77
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %85 = load %struct.net_device*, %struct.net_device** %9, align 8
  %86 = call i32 @__qlcnic_up(%struct.qlcnic_adapter* %84, %struct.net_device* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %97

90:                                               ; preds = %83
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = load i32, i32* @NETDEV_UP, align 4
  %93 = call i32 @qlcnic_restore_indev_addr(%struct.net_device* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %73
  %95 = load i64, i64* %7, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %94, %89, %82, %66
  %98 = load %struct.net_device*, %struct.net_device** %9, align 8
  %99 = call i32 @netif_device_attach(%struct.net_device* %98)
  %100 = call i32 (...) @rtnl_unlock()
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %42
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_enable_mbx_poll(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_setup_intr(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_83xx_register_nic_idc_func(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_disable_mbx_poll(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_attach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @__qlcnic_up(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_restore_indev_addr(%struct.net_device*, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
