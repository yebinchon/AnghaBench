; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_refill_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32, %struct.TYPE_4__*, %struct.sk_buff**, %struct.TYPE_3__*, %struct.net_device* }
%struct.TYPE_4__ = type { i8*, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@CP_RX_RING_SIZE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cp_private*)* @cp_refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_refill_rx(%struct.cp_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %3, align 8
  %8 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %9 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %8, i32 0, i32 4
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %100, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CP_RX_RING_SIZE, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %103

15:                                               ; preds = %11
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %18 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NET_IP_ALIGN, align 4
  %21 = add nsw i32 %19, %20
  %22 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %16, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %104

26:                                               ; preds = %15
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* @NET_IP_ALIGN, align 4
  %29 = call i32 @skb_reserve(%struct.sk_buff* %27, i32 %28)
  %30 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %31 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %38 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %41 = call i32 @dma_map_single(i32* %33, i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %44 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %43, i32 0, i32 2
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %45, i64 %47
  store %struct.sk_buff* %42, %struct.sk_buff** %48, align 8
  %49 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %50 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @cpu_to_le64(i32 %56)
  %58 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %59 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %57, i32* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @CP_RX_RING_SIZE, align 4
  %67 = sub i32 %66, 1
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %26
  %70 = load i32, i32* @DescOwn, align 4
  %71 = load i32, i32* @RingEnd, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %74 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %72, %75
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %79 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i8* %77, i8** %84, align 8
  br label %99

85:                                               ; preds = %26
  %86 = load i32, i32* @DescOwn, align 4
  %87 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %88 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %86, %89
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %93 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i8* %91, i8** %98, align 8
  br label %99

99:                                               ; preds = %85, %69
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %11

103:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %109

104:                                              ; preds = %25
  %105 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %106 = call i32 @cp_clean_rings(%struct.cp_private* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %103
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cp_clean_rings(%struct.cp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
