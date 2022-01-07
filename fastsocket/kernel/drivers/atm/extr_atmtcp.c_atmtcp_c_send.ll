; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_c_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_c_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { {}*, %struct.TYPE_2__*, {}*, %struct.atm_dev* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.atm_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.atmtcp_hdr = type { i64, i32, i32 }
%struct.atmtcp_control = type { i32 }

@ATMTCP_HDR_MAGIC = common dso_local global i64 0, align 8
@vcc_sklist_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @atmtcp_c_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_c_send(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.atm_dev*, align 8
  %7 = alloca %struct.atmtcp_hdr*, align 8
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %119

16:                                               ; preds = %2
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 3
  %19 = load %struct.atm_dev*, %struct.atm_dev** %18, align 8
  store %struct.atm_dev* %19, %struct.atm_dev** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.atmtcp_hdr*
  store %struct.atmtcp_hdr* %23, %struct.atmtcp_hdr** %7, align 8
  %24 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ATMTCP_HDR_MAGIC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.atmtcp_control*
  %34 = call i32 @atmtcp_recv_control(%struct.atmtcp_control* %33)
  store i32 %34, i32* %10, align 4
  br label %100

35:                                               ; preds = %16
  %36 = call i32 @read_lock(i32* @vcc_sklist_lock)
  %37 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %38 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  %42 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ntohs(i32 %44)
  %46 = call %struct.atm_vcc* @find_vcc(%struct.atm_dev* %37, i32 %41, i32 %45)
  store %struct.atm_vcc* %46, %struct.atm_vcc** %8, align 8
  %47 = call i32 @read_unlock(i32* @vcc_sklist_lock)
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %49 = icmp ne %struct.atm_vcc* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %35
  %51 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %52 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = call i32 @atomic_inc(i32* %54)
  br label %100

56:                                               ; preds = %35
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @skb_pull(%struct.sk_buff* %57, i32 16)
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc* %59, i32 %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %9, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @ENOBUFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %100

70:                                               ; preds = %56
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = call i32 @__net_timestamp(%struct.sk_buff* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @skb_put(%struct.sk_buff* %74, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %73, i32 %78, i32 %81)
  %83 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %84 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %83, i32 0, i32 2
  %85 = bitcast {}** %84 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %86 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %85, align 8
  %87 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = call i32 %86(%struct.atm_vcc* %87, %struct.sk_buff* %88)
  %90 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %91 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = call i32 @atomic_inc(i32* %93)
  %95 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %96 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @atomic_inc(i32* %98)
  br label %100

100:                                              ; preds = %70, %67, %50, %29
  %101 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %102 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %101, i32 0, i32 0
  %103 = bitcast {}** %102 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %104 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %103, align 8
  %105 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %108 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %107, i32 0, i32 0
  %109 = bitcast {}** %108 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %110 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %109, align 8
  %111 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 %110(%struct.atm_vcc* %111, %struct.sk_buff* %112)
  br label %117

114:                                              ; preds = %100
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i32 @dev_kfree_skb(%struct.sk_buff* %115)
  br label %117

117:                                              ; preds = %114, %106
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %15
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @atmtcp_recv_control(%struct.atmtcp_control*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.atm_vcc* @find_vcc(%struct.atm_dev*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc*, i32, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
