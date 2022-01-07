; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_dev_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_dev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [31 x i8] c"Cleanup ipoib connected mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ib_destroy_srq failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_cm_dev_cleanup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %3, align 8
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %15 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @ib_destroy_srq(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %13
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %47

37:                                               ; preds = %27
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ipoib_cm_free_rx_ring(%struct.net_device* %38, i32* %42)
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %37, %36, %12
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @ib_destroy_srq(i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @ipoib_cm_free_rx_ring(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
