; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_psend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_psend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.solos_card* }
%struct.solos_card = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pkt_hdr = type { i8*, i8*, i8*, i8* }

@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Length of PDU is too large. Dropping PDU.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"pskb_expand_head failed.\0A\00", align 1
@PKT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @psend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psend(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.solos_card*, align 8
  %7 = alloca %struct.pkt_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.solos_card*, %struct.solos_card** %14, align 8
  store %struct.solos_card* %15, %struct.solos_card** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* @BUF_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 32
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.solos_card*, %struct.solos_card** %6, align 8
  %27 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @solos_pop(%struct.atm_vcc* %31, %struct.sk_buff* %32)
  store i32 0, i32* %3, align 4
  br label %100

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @skb_clone_writable(%struct.sk_buff* %35, i32 32)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_headroom(%struct.sk_buff* %39)
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 32
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @skb_headroom(%struct.sk_buff* %44)
  %46 = sext i32 %45 to i64
  %47 = sub i64 32, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32 @pskb_expand_head(%struct.sk_buff* %50, i32 %51, i32 0, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.solos_card*, %struct.solos_card** %6, align 8
  %58 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @solos_pop(%struct.atm_vcc* %62, %struct.sk_buff* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %100

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %34
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i64 @skb_push(%struct.sk_buff* %68, i32 32)
  %70 = inttoptr i64 %69 to i8*
  %71 = bitcast i8* %70 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %71, %struct.pkt_hdr** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %75 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %77 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %81 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %83 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %87 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @PKT_DATA, align 4
  %89 = call i8* @cpu_to_le16(i32 %88)
  %90 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %91 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.solos_card*, %struct.solos_card** %6, align 8
  %93 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %94 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = call i32 @SOLOS_CHAN(%struct.TYPE_4__* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %99 = call i32 @fpga_queue(%struct.solos_card* %92, i32 %96, %struct.sk_buff* %97, %struct.atm_vcc* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %67, %56, %25
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @solos_pop(%struct.atm_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @skb_clone_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @fpga_queue(%struct.solos_card*, i32, %struct.sk_buff*, %struct.atm_vcc*) #1

declare dso_local i32 @SOLOS_CHAN(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
