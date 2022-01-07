; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_rx_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_rx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sky2_port = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@SKY2_HW_RAM_BUFFER = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sky2_port*)* @sky2_rx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sky2_rx_alloc(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %3, align 8
  %8 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %15 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i64 @sky2_rx_pad(%struct.TYPE_2__* %16)
  %18 = add nsw i64 %13, %17
  %19 = call %struct.sk_buff* @netdev_alloc_skb(i32 %10, i64 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %25 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SKY2_HW_RAM_BUFFER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @PTR_ALIGN(i32 %35, i32 8)
  store i8* %36, i8** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  %45 = call i32 @skb_reserve(%struct.sk_buff* %37, i8* %44)
  br label %50

46:                                               ; preds = %23
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i8*, i8** @NET_IP_ALIGN, align 8
  %49 = call i32 @skb_reserve(%struct.sk_buff* %47, i8* %48)
  br label %50

50:                                               ; preds = %46, %32
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %54 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.page* @alloc_page(i32 %58)
  store %struct.page* %59, %struct.page** %7, align 8
  %60 = load %struct.page*, %struct.page** %7, align 8
  %61 = icmp ne %struct.page* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %74

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.page*, %struct.page** %7, align 8
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = call i32 @skb_fill_page_desc(%struct.sk_buff* %64, i32 %65, %struct.page* %66, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %2, align 8
  br label %78

74:                                               ; preds = %62
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %74, %22
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %78

78:                                               ; preds = %77, %72
  %79 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %79
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i64) #1

declare dso_local i64 @sky2_rx_pad(%struct.TYPE_2__*) #1

declare dso_local i8* @PTR_ALIGN(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i8*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
