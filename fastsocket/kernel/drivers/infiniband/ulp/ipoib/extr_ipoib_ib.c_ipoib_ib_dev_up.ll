; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PKEY is not assigned.\0A\00", align 1
@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_up(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @ipoib_pkey_dev_check_presence(%struct.net_device* %7)
  %9 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %16 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @ipoib_mcast_start_thread(%struct.net_device* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_pkey_dev_check_presence(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_mcast_start_thread(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
