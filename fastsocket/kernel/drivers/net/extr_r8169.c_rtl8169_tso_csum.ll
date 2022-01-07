; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_tso_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_tso_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_tx_desc_info = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rtl8169_private = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iphdr = type { i64 }
%struct.TYPE_4__ = type { i32 }

@tx_desc_info = common dso_local global %struct.rtl_tx_desc_info* null, align 8
@TD_LSO = common dso_local global i32 0, align 4
@TD_MSS_MAX = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, %struct.sk_buff*, i32*)* @rtl8169_tso_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_tso_csum(%struct.rtl8169_private* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_tx_desc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.rtl_tx_desc_info*, %struct.rtl_tx_desc_info** @tx_desc_info, align 8
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %13 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rtl_tx_desc_info, %struct.rtl_tx_desc_info* %11, i64 %15
  store %struct.rtl_tx_desc_info* %16, %struct.rtl_tx_desc_info** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rtl_tx_desc_info*, %struct.rtl_tx_desc_info** %7, align 8
  %22 = getelementptr inbounds %struct.rtl_tx_desc_info, %struct.rtl_tx_desc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %3
  %27 = load i32, i32* @TD_LSO, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @TD_MSS_MAX, align 4
  %34 = call i32 @min(i32 %32, i32 %33)
  %35 = load %struct.rtl_tx_desc_info*, %struct.rtl_tx_desc_info** %7, align 8
  %36 = getelementptr inbounds %struct.rtl_tx_desc_info, %struct.rtl_tx_desc_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  br label %92

45:                                               ; preds = %3
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %52)
  store %struct.iphdr* %53, %struct.iphdr** %10, align 8
  %54 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IPPROTO_TCP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load %struct.rtl_tx_desc_info*, %struct.rtl_tx_desc_info** %7, align 8
  %61 = getelementptr inbounds %struct.rtl_tx_desc_info, %struct.rtl_tx_desc_info* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %90

70:                                               ; preds = %51
  %71 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %72 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IPPROTO_UDP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.rtl_tx_desc_info*, %struct.rtl_tx_desc_info** %7, align 8
  %78 = getelementptr inbounds %struct.rtl_tx_desc_info, %struct.rtl_tx_desc_info* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %80
  store i32 %86, i32* %84, align 4
  br label %89

87:                                               ; preds = %70
  %88 = call i32 @WARN_ON_ONCE(i32 1)
  br label %89

89:                                               ; preds = %87, %76
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %45
  br label %92

92:                                               ; preds = %91, %26
  ret void
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
