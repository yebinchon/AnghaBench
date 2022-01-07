; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32 }

@VMXNET3_MIN_MTU = common dso_local global i32 0, align 4
@VMXNET3_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VMXNET3_STATE_BIT_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"failed to re-create rx queues,  error %d. Closing it.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to re-activate, error %d. Closing it\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vmxnet3_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmxnet3_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.vmxnet3_adapter* %9, %struct.vmxnet3_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VMXNET3_MIN_MTU, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VMXNET3_MAX_MTU, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %87

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 1500
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %41, %31
  %36 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %37 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %37, i32 0, i32 0
  %39 = call i64 @test_and_set_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @msleep(i32 1)
  br label %35

43:                                               ; preds = %35
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i64 @netif_running(%struct.net_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %49 = call i32 @vmxnet3_quiesce_dev(%struct.vmxnet3_adapter* %48)
  %50 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %51 = call i32 @vmxnet3_reset_dev(%struct.vmxnet3_adapter* %50)
  %52 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %53 = call i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter* %52)
  %54 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %55 = call i32 @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter* %54)
  %56 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %57 = call i32 @vmxnet3_rq_create_all(%struct.vmxnet3_adapter* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @netdev_err(%struct.net_device* %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %75

64:                                               ; preds = %47
  %65 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %66 = call i32 @vmxnet3_activate_dev(%struct.vmxnet3_adapter* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @netdev_err(%struct.net_device* %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %75

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %43
  br label %75

75:                                               ; preds = %74, %69, %60
  %76 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %77 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %77, i32 0, i32 0
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %84 = call i32 @vmxnet3_force_close(%struct.vmxnet3_adapter* %83)
  br label %85

85:                                               ; preds = %82, %75
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %28, %17
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @vmxnet3_quiesce_dev(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_reset_dev(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_create_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @vmxnet3_activate_dev(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vmxnet3_force_close(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
