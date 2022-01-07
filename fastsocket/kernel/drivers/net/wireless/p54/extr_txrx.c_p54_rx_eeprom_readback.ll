; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_rx_eeprom_readback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_rx_eeprom_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, i32* }
%struct.sk_buff = type { i64 }
%struct.p54_hdr = type { i32, i64 }
%struct.p54_eeprom_lm86 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54_common*, %struct.sk_buff*)* @p54_rx_eeprom_readback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_rx_eeprom_readback(%struct.p54_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_hdr*, align 8
  %6 = alloca %struct.p54_eeprom_lm86*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.p54_hdr*
  store %struct.p54_hdr* %11, %struct.p54_hdr** %5, align 8
  %12 = load %struct.p54_hdr*, %struct.p54_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.p54_eeprom_lm86*
  store %struct.p54_eeprom_lm86* %15, %struct.p54_eeprom_lm86** %6, align 8
  %16 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %17 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %23 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 1289
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %28 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %6, align 8
  %31 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %6, align 8
  %35 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = call i32 @memcpy(i32* %29, i32 %33, i32 %38)
  br label %54

40:                                               ; preds = %21
  %41 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %42 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %6, align 8
  %45 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %6, align 8
  %49 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = call i32 @memcpy(i32* %43, i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %40, %26
  %55 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %56 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %58 = load %struct.p54_hdr*, %struct.p54_hdr** %5, align 8
  %59 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.sk_buff* @p54_find_and_unlink_skb(%struct.p54_common* %57, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %7, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %62)
  %64 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %65 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %64, i32 0, i32 1
  %66 = call i32 @complete(i32* %65)
  br label %67

67:                                               ; preds = %54, %20
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @p54_find_and_unlink_skb(%struct.p54_common*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
