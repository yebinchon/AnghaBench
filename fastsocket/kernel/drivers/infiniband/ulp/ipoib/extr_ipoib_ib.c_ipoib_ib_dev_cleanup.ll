; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"cleaning up ib_dev\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_ib_dev_cleanup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.ipoib_dev_priv* %5, %struct.ipoib_dev_priv** %3, align 8
  %6 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %7 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @ipoib_mcast_stop_thread(%struct.net_device* %8, i32 1)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @ipoib_mcast_dev_flush(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @ipoib_transport_dev_cleanup(%struct.net_device* %12)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @ipoib_mcast_stop_thread(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_mcast_dev_flush(%struct.net_device*) #1

declare dso_local i32 @ipoib_transport_dev_cleanup(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
