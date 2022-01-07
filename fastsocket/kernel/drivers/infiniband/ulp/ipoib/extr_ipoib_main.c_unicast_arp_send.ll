; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_unicast_arp_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_unicast_arp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_cb = type { i64 }
%struct.ipoib_dev_priv = type { i32 }
%struct.ipoib_path = type { i32, i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Send unicast ARP to %04x\0A\00", align 1
@IPOIB_MAX_PATH_REC_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, %struct.ipoib_cb*)* @unicast_arp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unicast_arp_send(%struct.sk_buff* %0, %struct.net_device* %1, %struct.ipoib_cb* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipoib_cb*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ipoib_path*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.ipoib_cb* %2, %struct.ipoib_cb** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %7, align 8
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.ipoib_cb*, %struct.ipoib_cb** %6, align 8
  %19 = getelementptr inbounds %struct.ipoib_cb, %struct.ipoib_cb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 4
  %22 = call %struct.ipoib_path* @__path_find(%struct.net_device* %17, i64 %21)
  store %struct.ipoib_path* %22, %struct.ipoib_path** %8, align 8
  %23 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %24 = icmp ne %struct.ipoib_path* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %27 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %87, label %30

30:                                               ; preds = %25, %3
  store i32 0, i32* %10, align 4
  %31 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %32 = icmp ne %struct.ipoib_path* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load %struct.ipoib_cb*, %struct.ipoib_cb** %6, align 8
  %36 = getelementptr inbounds %struct.ipoib_cb, %struct.ipoib_cb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 4
  %39 = call %struct.ipoib_path* @path_rec_create(%struct.net_device* %34, i64 %38)
  store %struct.ipoib_path* %39, %struct.ipoib_path** %8, align 8
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %33, %30
  %41 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %42 = icmp ne %struct.ipoib_path* %41, null
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %45 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %44, i32 0, i32 0
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @__skb_queue_tail(i32* %45, %struct.sk_buff* %46)
  %48 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %49 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %43
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %55 = call i64 @path_rec_start(%struct.net_device* %53, %struct.ipoib_path* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %59 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %67 = call i32 @path_free(%struct.net_device* %65, %struct.ipoib_path* %66)
  br label %68

68:                                               ; preds = %64, %57
  br label %149

69:                                               ; preds = %52, %43
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %72 = call i32 @__path_add(%struct.net_device* %70, %struct.ipoib_path* %71)
  br label %73

73:                                               ; preds = %69
  br label %82

74:                                               ; preds = %40
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %74, %73
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 0
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %149

87:                                               ; preds = %25
  %88 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %89 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %94 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %95 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @be16_to_cpu(i32 %97)
  %99 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %101 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %100, i32 0, i32 0
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.net_device*, %struct.net_device** %5, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %107 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ipoib_cb*, %struct.ipoib_cb** %6, align 8
  %110 = getelementptr inbounds %struct.ipoib_cb, %struct.ipoib_cb* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @IPOIB_QPN(i64 %111)
  %113 = call i32 @ipoib_send(%struct.net_device* %104, %struct.sk_buff* %105, i64 %108, i32 %112)
  br label %149

114:                                              ; preds = %87
  %115 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %116 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %122 = call i64 @path_rec_start(%struct.net_device* %120, %struct.ipoib_path* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %126 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %125, i32 0, i32 0
  %127 = call i64 @skb_queue_len(i32* %126)
  %128 = load i64, i64* @IPOIB_MAX_PATH_REC_QUEUE, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %132 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %131, i32 0, i32 0
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = call i32 @__skb_queue_tail(i32* %132, %struct.sk_buff* %133)
  br label %143

135:                                              ; preds = %124, %119
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %141)
  br label %143

143:                                              ; preds = %135, %130
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %146 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %145, i32 0, i32 0
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  br label %149

149:                                              ; preds = %144, %92, %82, %68
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipoib_path* @__path_find(%struct.net_device*, i64) #1

declare dso_local %struct.ipoib_path* @path_rec_create(%struct.net_device*, i64) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @path_rec_start(%struct.net_device*, %struct.ipoib_path*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @path_free(%struct.net_device*, %struct.ipoib_path*) #1

declare dso_local i32 @__path_add(%struct.net_device*, %struct.ipoib_path*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ipoib_send(%struct.net_device*, %struct.sk_buff*, i64, i32) #1

declare dso_local i32 @IPOIB_QPN(i64) #1

declare dso_local i64 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
