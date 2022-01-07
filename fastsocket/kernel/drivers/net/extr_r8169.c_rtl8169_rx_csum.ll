; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_rx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@RxProtoMask = common dso_local global i64 0, align 8
@RxProtoTCP = common dso_local global i64 0, align 8
@TCPFail = common dso_local global i64 0, align 8
@RxProtoUDP = common dso_local global i64 0, align 8
@UDPFail = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i64)* @rtl8169_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_rx_csum(%struct.sk_buff* %0, i64 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @RxProtoMask, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @RxProtoTCP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @TCPFail, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12, %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @RxProtoUDP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @UDPFail, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %12
  %27 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %33

30:                                               ; preds = %21, %17
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
