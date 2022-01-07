; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_post_receive_nonsrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_post_receive_nonsrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_cm_rx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.ib_recv_wr = type { i32 }
%struct.ib_sge = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@IPOIB_CM_RX_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"post recv failed for buf %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ipoib_cm_rx*, %struct.ib_recv_wr*, %struct.ib_sge*, i32)* @ipoib_cm_post_receive_nonsrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_post_receive_nonsrq(%struct.net_device* %0, %struct.ipoib_cm_rx* %1, %struct.ib_recv_wr* %2, %struct.ib_sge* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ipoib_cm_rx*, align 8
  %8 = alloca %struct.ib_recv_wr*, align 8
  %9 = alloca %struct.ib_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipoib_dev_priv*, align 8
  %12 = alloca %struct.ib_recv_wr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.ipoib_cm_rx* %1, %struct.ipoib_cm_rx** %7, align 8
  store %struct.ib_recv_wr* %2, %struct.ib_recv_wr** %8, align 8
  store %struct.ib_sge* %3, %struct.ib_sge** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ipoib_dev_priv* %16, %struct.ipoib_dev_priv** %11, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @IPOIB_OP_CM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IPOIB_OP_RECV, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %23 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %46, %5
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @IPOIB_CM_RX_SG, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %30 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_sge*, %struct.ib_sge** %9, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %41, i64 %43
  %45 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %51 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %54 = call i32 @ib_post_recv(i32 %52, %struct.ib_recv_wr* %53, %struct.ib_recv_wr** %12)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %49
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %64 = load i32, i32* @IPOIB_CM_RX_SG, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %67 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv* %63, i32 %65, i32* %73)
  %75 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %76 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @dev_kfree_skb_any(i32* %82)
  %84 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %85 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %58, %49
  %92 = load i32, i32* %14, align 4
  ret i32 %92
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

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
