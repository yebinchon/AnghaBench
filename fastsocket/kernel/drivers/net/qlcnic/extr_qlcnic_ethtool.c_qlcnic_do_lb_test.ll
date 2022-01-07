; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_do_lb_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_do_lb_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, %struct.qlcnic_recv_context* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.sk_buff = type { i32 }

@QLCNIC_NUM_ILB_PKT = common dso_local global i32 0, align 4
@QLCNIC_ILB_PKT_SIZE = common dso_local global i32 0, align 4
@QLCNIC_LB_PKT_POLL_DELAY_MSEC = common dso_local global i32 0, align 4
@QLCNIC_LB_PKT_POLL_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"LB Test: packet #%d was not received\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"LB Test: failed, TX[%d], RX[%d]\0A\00", align 1
@QLCNIC_ILB_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"WARNING: Please check loopback cable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_recv_context*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 4
  %14 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %13, align 8
  store %struct.qlcnic_recv_context* %14, %struct.qlcnic_recv_context** %6, align 8
  %15 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %15, i32 0, i32 0
  %17 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %16, align 8
  %18 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %17, i64 0
  store %struct.qlcnic_host_sds_ring* %18, %struct.qlcnic_host_sds_ring** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %88, %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @QLCNIC_NUM_ILB_PKT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %19
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @QLCNIC_ILB_PKT_SIZE, align 4
  %28 = call %struct.sk_buff* @netdev_alloc_skb(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qlcnic_create_loopback_buff(i32 %31, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i32, i32* @QLCNIC_ILB_PKT_SIZE, align 4
  %38 = call i32 @skb_put(%struct.sk_buff* %36, i32 %37)
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @qlcnic_xmit_frame(%struct.sk_buff* %43, i32 %46)
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %59, %23
  %49 = load i32, i32* @QLCNIC_LB_PKT_POLL_DELAY_MSEC, align 4
  %50 = call i32 @msleep(i32 %49)
  %51 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %52 = call i32 @qlcnic_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring* %51)
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @QLCNIC_LB_PKT_POLL_COUNT, align 4
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %67

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %48, label %67

67:                                               ; preds = %59, %57
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %68)
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %67
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 (i32*, i8*, ...) @dev_warn(i32* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %87

84:                                               ; preds = %67
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %84, %76
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %19

91:                                               ; preds = %19
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @QLCNIC_ILB_MODE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %95
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_warn(i32* %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %106, %95
  store i32 -1, i32* %3, align 4
  br label %114

113:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @qlcnic_create_loopback_buff(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_xmit_frame(%struct.sk_buff*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
