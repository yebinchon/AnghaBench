; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_rcv_diag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_rcv_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_2__*, i32, %struct.qlcnic_recv_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, i32 }
%struct.sk_buff = type { i32 }

@STATUS_CKSUM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_process_rcv_diag(%struct.qlcnic_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qlcnic_recv_context*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 3
  %14 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %13, align 8
  store %struct.qlcnic_recv_context* %14, %struct.qlcnic_recv_context** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %96

24:                                               ; preds = %3
  %25 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %7, align 8
  %26 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %25, i32 0, i32 0
  %27 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %27, i64 %29
  store %struct.qlcnic_host_rds_ring* %30, %struct.qlcnic_host_rds_ring** %9, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qlcnic_83xx_hndl(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %9, align 8
  %37 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %96

44:                                               ; preds = %24
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @qlcnic_83xx_pktln(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %50 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @STATUS_CKSUM_OK, align 4
  %53 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %49, %struct.qlcnic_host_rds_ring* %50, i32 %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  br label %96

57:                                               ; preds = %44
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %9, align 8
  %60 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %9, align 8
  %66 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @skb_put(%struct.sk_buff* %64, i32 %67)
  br label %73

69:                                               ; preds = %57
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @skb_put(%struct.sk_buff* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @qlcnic_check_loopback_buff(i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %73
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %93

89:                                               ; preds = %73
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %92 = call i32 @dump_skb(%struct.sk_buff* %90, %struct.qlcnic_adapter* %91)
  br label %93

93:                                               ; preds = %89, %82
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %93, %56, %43, %23
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_83xx_hndl(i32) #1

declare dso_local i32 @qlcnic_83xx_pktln(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_loopback_buff(i32, i32) #1

declare dso_local i32 @dump_skb(%struct.sk_buff*, %struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
