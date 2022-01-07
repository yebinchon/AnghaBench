; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_post_receive_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_post_receive_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_recv_wr = type { i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"post srq failed for buf %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ipoib_cm_post_receive_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_post_receive_srq(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IPOIB_OP_CM, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IPOIB_OP_RECV, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %49, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %20
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %29 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %40, i32* %48, align 4
  br label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %54 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %58 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = call i32 @ib_post_srq_recv(i32 %56, %struct.TYPE_8__* %59, %struct.ib_recv_wr** %6)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %52
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %71 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv* %69, i32 %74, i32* %83)
  %85 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %86 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @dev_kfree_skb_any(i32* %93)
  %95 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %96 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %64, %52
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ib_post_srq_recv(i32, %struct.TYPE_8__*, %struct.ib_recv_wr**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv*, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
