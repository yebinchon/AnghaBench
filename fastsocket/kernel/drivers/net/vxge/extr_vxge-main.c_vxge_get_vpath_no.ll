; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_get_vpath_no.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_get_vpath_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i64 }
%struct.tcphdr = type { i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*, %struct.sk_buff*, i32*)* @vxge_get_vpath_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_get_vpath_no(%struct.vxgedev* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca %struct.vxgedev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  store %struct.vxgedev* %0, %struct.vxgedev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ETH_P_IP, align 4
  %15 = call i32 @htons(i32 %14)
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %18)
  store %struct.iphdr* %19, %struct.iphdr** %9, align 8
  %20 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IP_OFFSET, align 4
  %24 = load i32, i32* @IP_MF, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @htons(i32 %25)
  %27 = and i32 %22, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %17
  %30 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %31 = bitcast %struct.iphdr* %30 to i8*
  %32 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = bitcast i8* %37 to %struct.tcphdr*
  store %struct.tcphdr* %38, %struct.tcphdr** %10, align 8
  %39 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %40 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  %42 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohs(i32 %44)
  %46 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %47 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = add nsw i32 %45, %49
  %51 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %52 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %50, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %29
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %29
  %67 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IPPROTO_UDP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %66
  br label %74

74:                                               ; preds = %73, %17
  br label %75

75:                                               ; preds = %74, %3
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
