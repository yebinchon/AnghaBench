; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.sk_buff = type { i64, i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@MC_CMD_PTP_OUT_TRANSMIT_LEN = common dso_local global i32 0, align 4
@PTP_IN_OP = common dso_local global i32 0, align 4
@MC_CMD_PTP_OP_TRANSMIT = common dso_local global i32 0, align 4
@PTP_IN_TRANSMIT_LENGTH = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@MC_CMD_PTP_IN_TRANSMIT_PACKET_OFST = common dso_local global i64 0, align 8
@MC_CMD_PTP = common dso_local global i32 0, align 4
@PTP_OUT_TRANSMIT_SECONDS = common dso_local global i32 0, align 4
@PTP_OUT_TRANSMIT_NANOSECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.sk_buff*)* @efx_ptp_xmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_xmit_skb(%struct.efx_nic* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.skb_shared_hwtstamps, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MC_CMD_PTP_IN_TRANSMIT_LEN(i32 %20)
  %22 = call i64 @ALIGN(i32 %21, i32 4)
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @MC_CMD_PTP_OUT_TRANSMIT_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @PTP_IN_OP, align 4
  %29 = load i32, i32* @MC_CMD_PTP_OP_TRANSMIT, align 4
  %30 = call i32 @MCDI_SET_DWORD(i32* %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @PTP_IN_TRANSMIT_LENGTH, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @MCDI_SET_DWORD(i32* %31, i32 %32, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @skb_linearize(%struct.sk_buff* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %89

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @skb_checksum_help(%struct.sk_buff* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %89

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %49
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* @MC_CMD_PTP_IN_TRANSMIT_PACKET_OFST, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %63, i32* %66, i64 %67)
  %69 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %70 = load i32, i32* @MC_CMD_PTP, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i64, i64* %8, align 8
  %73 = mul nuw i64 4, %24
  %74 = trunc i64 %73 to i32
  %75 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %69, i32 %70, i32* %71, i64 %72, i32* %26, i32 %74, i64* %8)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %89

79:                                               ; preds = %62
  %80 = call i32 @memset(%struct.skb_shared_hwtstamps* %6, i32 0, i32 4)
  %81 = load i32, i32* @PTP_OUT_TRANSMIT_SECONDS, align 4
  %82 = call i32 @MCDI_DWORD(i32* %26, i32 %81)
  %83 = load i32, i32* @PTP_OUT_TRANSMIT_NANOSECONDS, align 4
  %84 = call i32 @MCDI_DWORD(i32* %26, i32 %83)
  %85 = call i32 @ktime_set(i32 %82, i32 %84)
  %86 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %6, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i32 @skb_tstamp_tx(%struct.sk_buff* %87, %struct.skb_shared_hwtstamps* %6)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %79, %78, %60, %47
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @dev_kfree_skb(%struct.sk_buff* %90)
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  ret i32 %92
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @MC_CMD_PTP_IN_TRANSMIT_LEN(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i64, i32*, i32, i64*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @MCDI_DWORD(i32*, i32) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
