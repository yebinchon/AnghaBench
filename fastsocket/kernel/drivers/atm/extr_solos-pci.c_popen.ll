; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_popen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_popen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.solos_card* }
%struct.solos_card = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pkt_hdr = type { i8*, i8*, i8*, i8* }

@ATM_AAL5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported ATM type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate sk_buff in popen()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PKT_POPEN = common dso_local global i32 0, align 4
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @popen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @popen(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.solos_card*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pkt_hdr*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %8 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.solos_card*, %struct.solos_card** %10, align 8
  store %struct.solos_card* %11, %struct.solos_card** %4, align 8
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ATM_AAL5, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %20 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %24 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32*, i8*, ...) @dev_warn(i32* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %86

30:                                               ; preds = %1
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.sk_buff* @alloc_skb(i32 32, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = call i64 (...) @net_ratelimit()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %40 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_warn(i32* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %86

46:                                               ; preds = %35, %30
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i64 @skb_put(%struct.sk_buff* %47, i32 32)
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %50, %struct.pkt_hdr** %6, align 8
  %51 = call i8* @cpu_to_le16(i32 0)
  %52 = load %struct.pkt_hdr*, %struct.pkt_hdr** %6, align 8
  %53 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %55 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.pkt_hdr*, %struct.pkt_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %61 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.pkt_hdr*, %struct.pkt_hdr** %6, align 8
  %65 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @PKT_POPEN, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.pkt_hdr*, %struct.pkt_hdr** %6, align 8
  %69 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %72 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @SOLOS_CHAN(%struct.TYPE_6__* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @fpga_queue(%struct.solos_card* %70, i32 %74, %struct.sk_buff* %75, i32* null)
  %77 = load i32, i32* @ATM_VF_ADDR, align 4
  %78 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %79 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %78, i32 0, i32 0
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  %81 = load i32, i32* @ATM_VF_READY, align 4
  %82 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %83 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %82, i32 0, i32 0
  %84 = call i32 @set_bit(i32 %81, i32* %83)
  %85 = call i32 @list_vccs(i32 0)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %46, %38, %18
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @fpga_queue(%struct.solos_card*, i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @SOLOS_CHAN(%struct.TYPE_6__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_vccs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
