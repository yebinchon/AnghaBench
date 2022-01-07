; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_rep_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.ipoib_cm_tx* }
%struct.ipoib_cm_tx = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.ib_cm_event = type { %struct.ipoib_cm_data* }
%struct.ipoib_cm_data = type { i32 }
%struct.ipoib_dev_priv = type { i32 }
%struct.ib_qp_attr = type { i32, i64 }
%struct.sk_buff = type { i32 }

@IPOIB_ENCAP_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Rejecting connection: mtu %d <= %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to init QP attr for RTR: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to modify QP to RTR: %d\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to init QP attr for RTS: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to modify QP to RTS: %d\0A\00", align 1
@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"dev_queue_xmit failed to requeue packet\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to send RTU: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @ipoib_cm_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_rep_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_event*, align 8
  %6 = alloca %struct.ipoib_cm_tx*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ipoib_cm_data*, align 8
  %9 = alloca %struct.sk_buff_head, align 4
  %10 = alloca %struct.ib_qp_attr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %5, align 8
  %14 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %15 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %14, i32 0, i32 0
  %16 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %15, align 8
  store %struct.ipoib_cm_tx* %16, %struct.ipoib_cm_tx** %6, align 8
  %17 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %18 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.ipoib_dev_priv* @netdev_priv(i32 %19)
  store %struct.ipoib_dev_priv* %20, %struct.ipoib_dev_priv** %7, align 8
  %21 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %22 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %21, i32 0, i32 0
  %23 = load %struct.ipoib_cm_data*, %struct.ipoib_cm_data** %22, align 8
  store %struct.ipoib_cm_data* %23, %struct.ipoib_cm_data** %8, align 8
  %24 = load %struct.ipoib_cm_data*, %struct.ipoib_cm_data** %8, align 8
  %25 = getelementptr inbounds %struct.ipoib_cm_data, %struct.ipoib_cm_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @be32_to_cpu(i32 %26)
  %28 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %29 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %31 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %37 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %38 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %41 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %151

44:                                               ; preds = %2
  %45 = load i32, i32* @IB_QPS_RTR, align 4
  %46 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %10, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %48 = call i32 @ib_cm_init_qp_attr(%struct.ib_cm_id* %47, %struct.ib_qp_attr* %10, i32* %11)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %3, align 4
  br label %151

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %10, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %59 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ib_modify_qp(i32 %60, %struct.ib_qp_attr* %10, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %3, align 4
  br label %151

70:                                               ; preds = %56
  %71 = load i32, i32* @IB_QPS_RTS, align 4
  %72 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %10, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %74 = call i32 @ib_cm_init_qp_attr(%struct.ib_cm_id* %73, %struct.ib_qp_attr* %10, i32* %11)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %3, align 4
  br label %151

82:                                               ; preds = %70
  %83 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %84 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @ib_modify_qp(i32 %85, %struct.ib_qp_attr* %10, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %3, align 4
  br label %151

95:                                               ; preds = %82
  %96 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %9)
  %97 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %98 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %97, i32 0, i32 0
  %99 = call i32 @spin_lock_irq(i32* %98)
  %100 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %101 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %102 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %101, i32 0, i32 3
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  %104 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %105 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = icmp ne %struct.TYPE_2__* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %116, %108
  %110 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %111 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %13, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %118 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %9, %struct.sk_buff* %117)
  br label %109

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %95
  %121 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %122 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock_irq(i32* %122)
  br label %124

124:                                              ; preds = %139, %120
  %125 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %9)
  store %struct.sk_buff* %125, %struct.sk_buff** %13, align 8
  %126 = icmp ne %struct.sk_buff* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %129 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %134 = call i64 @dev_queue_xmit(%struct.sk_buff* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %138 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %127
  br label %124

140:                                              ; preds = %124
  %141 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %142 = call i32 @ib_send_cm_rtu(%struct.ib_cm_id* %141, i32* null, i32 0)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %3, align 4
  br label %151

150:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %145, %90, %77, %65, %51, %35
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @ib_cm_init_qp_attr(%struct.ib_cm_id*, %struct.ib_qp_attr*, i32*) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @ib_send_cm_rtu(%struct.ib_cm_id*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
