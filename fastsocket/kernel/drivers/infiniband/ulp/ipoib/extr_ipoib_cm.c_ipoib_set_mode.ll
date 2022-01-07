; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@IPOIB_FLAG_ADMIN_CM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"enabling connected mode will cause multicast packet drops\0A\00", align 1
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@IB_SEND_IP_CSUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"datagram\0A\00", align 1
@IPOIB_FLAG_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@IB_DEVICE_UD_TSO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_set_mode(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @IPOIB_CM_SUPPORTED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @IPOIB_FLAG_ADMIN_CM, align 4
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 3
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %24 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %26 = load i32, i32* @NETIF_F_SG, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @NETIF_F_TSO, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = call i32 (...) @rtnl_unlock()
  %36 = load i32, i32* @IB_SEND_IP_CSUM, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @ipoib_flush_paths(%struct.net_device* %43)
  %45 = call i32 (...) @rtnl_lock()
  store i32 0, i32* %3, align 4
  br label %105

46:                                               ; preds = %14, %2
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %102, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @IPOIB_FLAG_ADMIN_CM, align 4
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %53 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %52, i32 0, i32 3
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = load i32, i32* @IPOIB_FLAG_CSUM, align 4
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 3
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %50
  %61 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %62 = load i32, i32* @NETIF_F_SG, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @NETIF_F_GRO, align 4
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %70 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IB_DEVICE_UD_TSO, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %60
  %82 = load i32, i32* @NETIF_F_TSO, align 4
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %60
  br label %88

88:                                               ; preds = %87, %50
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %91 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @min(i32 %92, i32 %95)
  %97 = call i32 @dev_set_mtu(%struct.net_device* %89, i32 %96)
  %98 = call i32 (...) @rtnl_unlock()
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @ipoib_flush_paths(%struct.net_device* %99)
  %101 = call i32 (...) @rtnl_lock()
  store i32 0, i32* %3, align 4
  br label %105

102:                                              ; preds = %46
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %88, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @IPOIB_CM_SUPPORTED(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ipoib_flush_paths(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
