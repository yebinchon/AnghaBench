; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_receive_mergeable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_receive_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, i32 }
%struct.sk_buff = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.skb_vnet_hdr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: packet too long\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: rx error: %d buffers missing\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, %struct.sk_buff*)* @receive_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_mergeable(%struct.virtnet_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.skb_vnet_hdr*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.skb_vnet_hdr* @skb_vnet_hdr(%struct.sk_buff* %11)
  store %struct.skb_vnet_hdr* %12, %struct.skb_vnet_hdr** %6, align 8
  %13 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %78, %2
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %17
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %87

45:                                               ; preds = %21
  %46 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %47 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.page* @virtqueue_get_buf(i32 %48, i32* %10)
  store %struct.page* %49, %struct.page** %7, align 8
  %50 = load %struct.page*, %struct.page** %7, align 8
  %51 = icmp ne %struct.page* %50, null
  br i1 %51, label %72, label %52

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %87

72:                                               ; preds = %45
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = call i32 @set_skb_frag(%struct.sk_buff* %79, %struct.page* %80, i32 0, i32* %10)
  %82 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %83 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  br label %17

86:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %52, %29
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.skb_vnet_hdr* @skb_vnet_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.page* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @set_skb_frag(%struct.sk_buff*, %struct.page*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
