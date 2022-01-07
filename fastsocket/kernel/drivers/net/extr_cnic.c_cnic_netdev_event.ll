; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_netdev_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.cnic_dev = type { %struct.cnic_local*, i32 }
%struct.cnic_local = type { i32 }

@NETDEV_REGISTER = common dso_local global i64 0, align 8
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@NETDEV_UP = common dso_local global i64 0, align 8
@NETDEV_GOING_DOWN = common dso_local global i64 0, align 8
@cnic_dev_lock = common dso_local global i32 0, align 4
@VLAN_TAG_PRESENT = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cnic_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cnic_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cnic_local*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.cnic_dev* @cnic_from_netdev(%struct.net_device* %15)
  store %struct.cnic_dev* %16, %struct.cnic_dev** %8, align 8
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %18 = icmp ne %struct.cnic_dev* %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @NETDEV_REGISTER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23, %19
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call %struct.cnic_dev* @is_cnic_dev(%struct.net_device* %28)
  store %struct.cnic_dev* %29, %struct.cnic_dev** %8, align 8
  %30 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %31 = icmp ne %struct.cnic_dev* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  %33 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %34 = call i32 @cnic_hold(%struct.cnic_dev* %33)
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %23, %3
  %37 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %38 = icmp ne %struct.cnic_dev* %37, null
  br i1 %38, label %39, label %114

39:                                               ; preds = %36
  %40 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %41 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %40, i32 0, i32 0
  %42 = load %struct.cnic_local*, %struct.cnic_local** %41, align 8
  store %struct.cnic_local* %42, %struct.cnic_local** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %47 = call i32 @cnic_ulp_init(%struct.cnic_dev* %46)
  br label %56

48:                                               ; preds = %39
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %54 = call i32 @cnic_ulp_exit(%struct.cnic_dev* %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @NETDEV_UP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = call i64 @netif_running(%struct.net_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63, %56
  %68 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %69 = call i64 @cnic_register_netdev(%struct.cnic_dev* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %73 = call i32 @cnic_put(%struct.cnic_dev* %72)
  br label %139

74:                                               ; preds = %67
  %75 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %76 = call i32 @cnic_start_hw(%struct.cnic_dev* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %80 = call i32 @cnic_ulp_start(%struct.cnic_dev* %79)
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %63, %60
  %83 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @cnic_rcv_netevent(%struct.cnic_local* %83, i64 %84, i32 0)
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @NETDEV_GOING_DOWN, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %91 = call i32 @cnic_ulp_stop(%struct.cnic_dev* %90)
  %92 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %93 = call i32 @cnic_stop_hw(%struct.cnic_dev* %92)
  %94 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %95 = call i32 @cnic_unregister_netdev(%struct.cnic_dev* %94)
  br label %111

96:                                               ; preds = %82
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = call i32 @write_lock(i32* @cnic_dev_lock)
  %102 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %103 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %102, i32 0, i32 1
  %104 = call i32 @list_del_init(i32* %103)
  %105 = call i32 @write_unlock(i32* @cnic_dev_lock)
  %106 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %107 = call i32 @cnic_put(%struct.cnic_dev* %106)
  %108 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %109 = call i32 @cnic_free_dev(%struct.cnic_dev* %108)
  br label %139

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %113 = call i32 @cnic_put(%struct.cnic_dev* %112)
  br label %138

114:                                              ; preds = %36
  %115 = load %struct.net_device*, %struct.net_device** %7, align 8
  %116 = call i32 @cnic_get_vlan(%struct.net_device* %115, %struct.net_device** %11)
  store i32 %116, i32* %12, align 4
  %117 = load %struct.net_device*, %struct.net_device** %11, align 8
  %118 = icmp ne %struct.net_device* %117, null
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %11, align 8
  %121 = call %struct.cnic_dev* @cnic_from_netdev(%struct.net_device* %120)
  store %struct.cnic_dev* %121, %struct.cnic_dev** %8, align 8
  %122 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %123 = icmp ne %struct.cnic_dev* %122, null
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i32, i32* @VLAN_TAG_PRESENT, align 4
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  %128 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %129 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %128, i32 0, i32 0
  %130 = load %struct.cnic_local*, %struct.cnic_local** %129, align 8
  %131 = load i64, i64* %5, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @cnic_rcv_netevent(%struct.cnic_local* %130, i64 %131, i32 %132)
  %134 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %135 = call i32 @cnic_put(%struct.cnic_dev* %134)
  br label %136

136:                                              ; preds = %124, %119
  br label %137

137:                                              ; preds = %136, %114
  br label %138

138:                                              ; preds = %137, %111
  br label %139

139:                                              ; preds = %138, %100, %71
  %140 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %140
}

declare dso_local %struct.cnic_dev* @cnic_from_netdev(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local %struct.cnic_dev* @is_cnic_dev(%struct.net_device*) #1

declare dso_local i32 @cnic_hold(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_ulp_init(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_ulp_exit(%struct.cnic_dev*) #1

declare dso_local i64 @cnic_register_netdev(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_put(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_start_hw(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_ulp_start(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_rcv_netevent(%struct.cnic_local*, i64, i32) #1

declare dso_local i32 @cnic_ulp_stop(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_stop_hw(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_unregister_netdev(%struct.cnic_dev*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @cnic_free_dev(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_get_vlan(%struct.net_device*, %struct.net_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
