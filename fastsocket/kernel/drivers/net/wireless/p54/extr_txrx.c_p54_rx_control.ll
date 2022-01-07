; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_rx_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_rx_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.p54_hdr = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"not handling 0x%02x type control frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54_common*, %struct.sk_buff*)* @p54_rx_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_rx_control(%struct.p54_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_hdr*, align 8
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.p54_hdr*
  store %struct.p54_hdr* %9, %struct.p54_hdr** %5, align 8
  %10 = load %struct.p54_hdr*, %struct.p54_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  switch i32 %13, label %31 [
    i32 128, label %14
    i32 129, label %18
    i32 132, label %22
    i32 130, label %23
    i32 131, label %27
  ]

14:                                               ; preds = %2
  %15 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @p54_rx_frame_sent(%struct.p54_common* %15, %struct.sk_buff* %16)
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @p54_rx_trap(%struct.p54_common* %19, %struct.sk_buff* %20)
  br label %42

22:                                               ; preds = %2
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @p54_rx_stats(%struct.p54_common* %24, %struct.sk_buff* %25)
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @p54_rx_eeprom_readback(%struct.p54_common* %28, %struct.sk_buff* %29)
  br label %42

31:                                               ; preds = %2
  %32 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %33 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.p54_hdr*, %struct.p54_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = call i32 @wiphy_debug(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %31, %27, %23, %22, %18, %14
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @p54_rx_frame_sent(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i32 @p54_rx_trap(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i32 @p54_rx_stats(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i32 @p54_rx_eeprom_readback(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
