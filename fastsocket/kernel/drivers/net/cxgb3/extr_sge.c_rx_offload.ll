; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_rx_offload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_rx_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 (%struct.t3cdev*, %struct.sk_buff**, i32)* }
%struct.sk_buff = type opaque
%struct.sge_rspq = type { i32, i64 }
%struct.sk_buff.0 = type { i32 }

@RX_BUNDLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sge_rspq*, %struct.sk_buff.0*, %struct.sk_buff.0**, i32)* @rx_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_offload(%struct.t3cdev* %0, %struct.sge_rspq* %1, %struct.sk_buff.0* %2, %struct.sk_buff.0** %3, i32 %4) #0 {
  %6 = alloca %struct.t3cdev*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  %8 = alloca %struct.sk_buff.0*, align 8
  %9 = alloca %struct.sk_buff.0**, align 8
  %10 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %6, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %7, align 8
  store %struct.sk_buff.0* %2, %struct.sk_buff.0** %8, align 8
  store %struct.sk_buff.0** %3, %struct.sk_buff.0*** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.sk_buff.0*, %struct.sk_buff.0** %8, align 8
  %12 = call i32 @skb_reset_mac_header(%struct.sk_buff.0* %11)
  %13 = load %struct.sk_buff.0*, %struct.sk_buff.0** %8, align 8
  %14 = call i32 @skb_reset_network_header(%struct.sk_buff.0* %13)
  %15 = load %struct.sk_buff.0*, %struct.sk_buff.0** %8, align 8
  %16 = call i32 @skb_reset_transport_header(%struct.sk_buff.0* %15)
  %17 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %18 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %5
  %22 = load %struct.sk_buff.0*, %struct.sk_buff.0** %8, align 8
  %23 = load %struct.sk_buff.0**, %struct.sk_buff.0*** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.sk_buff.0*, %struct.sk_buff.0** %23, i64 %26
  store %struct.sk_buff.0* %22, %struct.sk_buff.0** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RX_BUNDLE_SIZE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %21
  %32 = load %struct.t3cdev*, %struct.t3cdev** %6, align 8
  %33 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %32, i32 0, i32 0
  %34 = load i32 (%struct.t3cdev*, %struct.sk_buff**, i32)*, i32 (%struct.t3cdev*, %struct.sk_buff**, i32)** %33, align 8
  %35 = load %struct.t3cdev*, %struct.t3cdev** %6, align 8
  %36 = load %struct.sk_buff.0**, %struct.sk_buff.0*** %9, align 8
  %37 = bitcast %struct.sk_buff.0** %36 to %struct.sk_buff**
  %38 = load i32, i32* @RX_BUNDLE_SIZE, align 4
  %39 = call i32 %34(%struct.t3cdev* %35, %struct.sk_buff** %37, i32 %38)
  store i32 0, i32* %10, align 4
  %40 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %41 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %31, %21
  br label %49

45:                                               ; preds = %5
  %46 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %47 = load %struct.sk_buff.0*, %struct.sk_buff.0** %8, align 8
  %48 = call i32 @offload_enqueue(%struct.sge_rspq* %46, %struct.sk_buff.0* %47)
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff.0*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff.0*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff.0*) #1

declare dso_local i32 @offload_enqueue(%struct.sge_rspq*, %struct.sk_buff.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
