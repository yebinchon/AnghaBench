; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_pclose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_pclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.solos_card* }
%struct.solos_card = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pkt_hdr = type { i8*, i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate sk_buff in pclose()\0A\00", align 1
@PKT_PCLOSE = common dso_local global i32 0, align 4
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @pclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pclose(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.solos_card*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pkt_hdr*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %7 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.solos_card*, %struct.solos_card** %9, align 8
  store %struct.solos_card* %10, %struct.solos_card** %3, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sk_buff* @alloc_skb(i32 32, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %17 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i64 @skb_put(%struct.sk_buff* %22, i32 32)
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %25, %struct.pkt_hdr** %5, align 8
  %26 = call i8* @cpu_to_le16(i32 0)
  %27 = load %struct.pkt_hdr*, %struct.pkt_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %30 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.pkt_hdr*, %struct.pkt_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %36 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.pkt_hdr*, %struct.pkt_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @PKT_PCLOSE, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.pkt_hdr*, %struct.pkt_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %46 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %47 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @SOLOS_CHAN(%struct.TYPE_4__* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @fpga_queue(%struct.solos_card* %45, i32 %49, %struct.sk_buff* %50, i32* null)
  %52 = load i32, i32* @ATM_VF_ADDR, align 4
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %54 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %53, i32 0, i32 0
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load i32, i32* @ATM_VF_READY, align 4
  %57 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %58 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %57, i32 0, i32 0
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %21, %15
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @fpga_queue(%struct.solos_card*, i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @SOLOS_CHAN(%struct.TYPE_4__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
