; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_marker_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_marker_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.slave* }
%struct.slave = type { i32, i32 }
%struct.bond_marker = type { i32 }
%struct.sk_buff = type { i8*, i64, i64, i32 }
%struct.bond_marker_header = type { %struct.bond_marker, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@PKT_TYPE_LACPDU = common dso_local global i8* null, align 8
@lacpdu_mcast_addr = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*, %struct.bond_marker*)* @ad_marker_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_marker_send(%struct.port* %0, %struct.bond_marker* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.bond_marker*, align 8
  %6 = alloca %struct.slave*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.bond_marker_header*, align 8
  %9 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %4, align 8
  store %struct.bond_marker* %1, %struct.bond_marker** %5, align 8
  %10 = load %struct.port*, %struct.port** %4, align 8
  %11 = getelementptr inbounds %struct.port, %struct.port* %10, i32 0, i32 0
  %12 = load %struct.slave*, %struct.slave** %11, align 8
  store %struct.slave* %12, %struct.slave** %6, align 8
  store i32 24, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %13, 16
  %15 = call %struct.sk_buff* @dev_alloc_skb(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i32 @skb_reserve(%struct.sk_buff* %22, i32 16)
  %24 = load %struct.slave*, %struct.slave** %6, align 8
  %25 = getelementptr inbounds %struct.slave, %struct.slave* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @skb_reset_mac_header(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ETH_HLEN, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i8*, i8** @PKT_TYPE_LACPDU, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @skb_put(%struct.sk_buff* %41, i32 %42)
  %44 = inttoptr i64 %43 to %struct.bond_marker_header*
  store %struct.bond_marker_header* %44, %struct.bond_marker_header** %8, align 8
  %45 = load %struct.bond_marker_header*, %struct.bond_marker_header** %8, align 8
  %46 = getelementptr inbounds %struct.bond_marker_header, %struct.bond_marker_header* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @lacpdu_mcast_addr, align 4
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.bond_marker_header*, %struct.bond_marker_header** %8, align 8
  %53 = getelementptr inbounds %struct.bond_marker_header, %struct.bond_marker_header* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.slave*, %struct.slave** %6, align 8
  %57 = getelementptr inbounds %struct.slave, %struct.slave* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memcpy(i32 %55, i32 %58, i32 %59)
  %61 = load i8*, i8** @PKT_TYPE_LACPDU, align 8
  %62 = load %struct.bond_marker_header*, %struct.bond_marker_header** %8, align 8
  %63 = getelementptr inbounds %struct.bond_marker_header, %struct.bond_marker_header* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.bond_marker_header*, %struct.bond_marker_header** %8, align 8
  %66 = getelementptr inbounds %struct.bond_marker_header, %struct.bond_marker_header* %65, i32 0, i32 0
  %67 = load %struct.bond_marker*, %struct.bond_marker** %5, align 8
  %68 = bitcast %struct.bond_marker* %66 to i8*
  %69 = bitcast %struct.bond_marker* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = call i32 @dev_queue_xmit(%struct.sk_buff* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %21, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
