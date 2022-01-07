; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_rlb_arp_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_rlb_arp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.bonding = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.arp_pkt = type { i64, i32, i32 }

@ARPOP_REPLY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Server sent ARP Reply packet\0A\00", align 1
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@RLB_UPDATE_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Server sent ARP Request packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slave* (%struct.sk_buff*, %struct.bonding*)* @rlb_arp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slave* @rlb_arp_xmit(%struct.sk_buff* %0, %struct.bonding* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.arp_pkt*, align 8
  %6 = alloca %struct.slave*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.bonding* %1, %struct.bonding** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.arp_pkt* @arp_pkt(%struct.sk_buff* %7)
  store %struct.arp_pkt* %8, %struct.arp_pkt** %5, align 8
  store %struct.slave* null, %struct.slave** %6, align 8
  %9 = load %struct.arp_pkt*, %struct.arp_pkt** %5, align 8
  %10 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ARPOP_REPLY, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load %struct.bonding*, %struct.bonding** %4, align 8
  %18 = call %struct.slave* @rlb_choose_channel(%struct.sk_buff* %16, %struct.bonding* %17)
  store %struct.slave* %18, %struct.slave** %6, align 8
  %19 = load %struct.slave*, %struct.slave** %6, align 8
  %20 = icmp ne %struct.slave* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.arp_pkt*, %struct.arp_pkt** %5, align 8
  %23 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.slave*, %struct.slave** %6, align 8
  %26 = getelementptr inbounds %struct.slave, %struct.slave* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @memcpy(i32 %24, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %21, %15
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %56

34:                                               ; preds = %2
  %35 = load %struct.arp_pkt*, %struct.arp_pkt** %5, align 8
  %36 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ARPOP_REQUEST, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = load %struct.bonding*, %struct.bonding** %4, align 8
  %44 = call %struct.slave* @rlb_choose_channel(%struct.sk_buff* %42, %struct.bonding* %43)
  %45 = load i32, i32* @RLB_UPDATE_DELAY, align 4
  %46 = load %struct.bonding*, %struct.bonding** %4, align 8
  %47 = getelementptr inbounds %struct.bonding, %struct.bonding* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.bonding*, %struct.bonding** %4, align 8
  %50 = load %struct.arp_pkt*, %struct.arp_pkt** %5, align 8
  %51 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rlb_req_update_subnet_clients(%struct.bonding* %49, i32 %52)
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %41, %34
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.slave*, %struct.slave** %6, align 8
  ret %struct.slave* %57
}

declare dso_local %struct.arp_pkt* @arp_pkt(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.slave* @rlb_choose_channel(%struct.sk_buff*, %struct.bonding*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @rlb_req_update_subnet_clients(%struct.bonding*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
