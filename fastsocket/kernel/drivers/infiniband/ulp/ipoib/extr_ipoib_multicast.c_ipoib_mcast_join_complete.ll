; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { i32, %struct.ipoib_mcast* }
%struct.ipoib_mcast = type { i32, i32, %struct.TYPE_4__, i32, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.ipoib_mcast* }

@.str = private unnamed_addr constant [38 x i8] c"join completion for %pI6 (status %d)\0A\00", align 1
@ENETRESET = common dso_local global i32 0, align 4
@mcast_mutex = common dso_local global i32 0, align 4
@IPOIB_MCAST_RUN = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"multicast join failed for %pI6, status %d\0A\00", align 1
@IPOIB_MAX_BACKOFF_SECONDS = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_sa_multicast*)* @ipoib_mcast_join_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_join_complete(i32 %0, %struct.ib_sa_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_multicast*, align 8
  %6 = alloca %struct.ipoib_mcast*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_multicast* %1, %struct.ib_sa_multicast** %5, align 8
  %9 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %10 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %9, i32 0, i32 1
  %11 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  store %struct.ipoib_mcast* %11, %struct.ipoib_mcast** %6, align 8
  %12 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %13 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ipoib_dev_priv* %16, %struct.ipoib_dev_priv** %8, align 8
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %18 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %19 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ENETRESET, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %35 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %36 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %35, i32 0, i32 0
  %37 = call i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast* %34, i32* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %38
  %42 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %43 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = call i32 @mutex_lock(i32* @mcast_mutex)
  %45 = load i32, i32* @IPOIB_MCAST_RUN, align 4
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 2
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @ipoib_workqueue, align 4
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %53 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %52, i32 0, i32 1
  %54 = call i32 @queue_delayed_work(i32 %51, i32* %53, i32 0)
  br label %55

55:                                               ; preds = %50, %41
  %56 = call i32 @mutex_unlock(i32* @mcast_mutex)
  %57 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %59 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %58, i32 0, i32 4
  %60 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %59, align 8
  %61 = icmp eq %struct.ipoib_mcast* %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @ipoib_workqueue, align 4
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 3
  %66 = call i32 @queue_work(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %55
  store i32 0, i32* %3, align 4
  br label %147

68:                                               ; preds = %38
  %69 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %70 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = icmp slt i32 %71, 20
  br i1 %73, label %74, label %103

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %79, %74
  %85 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %86 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %87 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %102

93:                                               ; preds = %79
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %95 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %96 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %93, %84
  br label %103

103:                                              ; preds = %102, %68
  %104 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %105 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %106, 2
  store i32 %107, i32* %105, align 8
  %108 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %109 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %103
  %114 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %115 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %116 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %113, %103
  %118 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %119 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %120 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %119, i32 0, i32 1
  %121 = call i32 @test_and_clear_bit(i32 %118, i32* %120)
  store i32 %121, i32* %4, align 4
  %122 = call i32 @mutex_lock(i32* @mcast_mutex)
  %123 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %124 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %123, i32 0, i32 0
  %125 = call i32 @spin_lock_irq(i32* %124)
  %126 = load i32, i32* @IPOIB_MCAST_RUN, align 4
  %127 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %128 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %127, i32 0, i32 2
  %129 = call i64 @test_bit(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %117
  %132 = load i32, i32* @ipoib_workqueue, align 4
  %133 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %134 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %133, i32 0, i32 1
  %135 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %136 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @HZ, align 4
  %139 = mul nsw i32 %137, %138
  %140 = call i32 @queue_delayed_work(i32 %132, i32* %134, i32 %139)
  br label %141

141:                                              ; preds = %131, %117
  %142 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %143 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock_irq(i32* %143)
  %145 = call i32 @mutex_unlock(i32* @mcast_mutex)
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %141, %67, %29
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
