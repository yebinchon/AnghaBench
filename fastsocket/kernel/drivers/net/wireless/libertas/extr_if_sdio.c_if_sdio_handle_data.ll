; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_handle_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i32 }
%struct.sk_buff = type { i32 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@MRVDRV_ETH_RX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"response packet too large (%d bytes)\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*, i32*, i32)* @if_sdio_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_handle_data(%struct.if_sdio_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @LBS_DEB_SDIO, align 4
  %11 = call i32 @lbs_deb_enter(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @E2BIG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %22 = load i32, i32* @NET_IP_ALIGN, align 4
  %23 = add i32 %21, %22
  %24 = call %struct.sk_buff* @dev_alloc_skb(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %46

30:                                               ; preds = %20
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load i32, i32* @NET_IP_ALIGN, align 4
  %33 = call i32 @skb_reserve(%struct.sk_buff* %31, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @skb_put(%struct.sk_buff* %34, i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @memcpy(i8* %37, i32* %38, i32 %39)
  %41 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %42 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @lbs_process_rxed_packet(i32 %43, %struct.sk_buff* %44)
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %30, %27, %15
  %47 = load i32, i32* @LBS_DEB_SDIO, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @lbs_deb_leave_args(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @lbs_process_rxed_packet(i32, %struct.sk_buff*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
