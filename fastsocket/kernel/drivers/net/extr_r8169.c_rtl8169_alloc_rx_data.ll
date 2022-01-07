; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_alloc_rx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_alloc_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type opaque
%struct.rtl8169_private = type { %struct.net_device*, %struct.TYPE_3__* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.RxDesc = type { i32 }

@rx_buf_sz = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to map RX DMA!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rtl8169_private*, %struct.RxDesc*)* @rtl8169_alloc_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtl8169_alloc_rx_data(%struct.rtl8169_private* %0, %struct.RxDesc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca %struct.RxDesc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store %struct.RxDesc* %1, %struct.RxDesc** %5, align 8
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %12 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %16 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %9, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dev_to_node(i64 %27)
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %28, %23 ], [ -1, %29 ]
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* @rx_buf_sz, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i8* @kmalloc_node(i64 %32, i32 %33, i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %89

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @rtl8169_align(i8* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i64, i64* @rx_buf_sz, align 8
  %48 = add nsw i64 %47, 15
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @kmalloc_node(i64 %48, i32 %49, i32 %50)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %89

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @rtl8169_align(i8* %58)
  %60 = load i64, i64* @rx_buf_sz, align 8
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i32 @dma_map_single(%struct.device* %57, i8* %59, i64 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dma_mapping_error(%struct.device* %63, i32 %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %56
  %69 = call i64 (...) @net_ratelimit()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %73 = load i32, i32* @drv, align 4
  %74 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %75 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %74, i32 0, i32 0
  %76 = load %struct.net_device*, %struct.net_device** %75, align 8
  %77 = call i32 @netif_err(%struct.rtl8169_private* %72, i32 %73, %struct.net_device* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %71, %68
  br label %86

79:                                               ; preds = %56
  %80 = load %struct.RxDesc*, %struct.RxDesc** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i64, i64* @rx_buf_sz, align 8
  %83 = call i32 @rtl8169_map_to_asic(%struct.RxDesc* %80, i32 %81, i64 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = bitcast i8* %84 to %struct.sk_buff*
  store %struct.sk_buff* %85, %struct.sk_buff** %3, align 8
  br label %89

86:                                               ; preds = %78
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @kfree(i8* %87)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %89

89:                                               ; preds = %86, %79, %54, %38
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %90
}

declare dso_local i32 @dev_to_node(i64) #1

declare dso_local i8* @kmalloc_node(i64, i32, i32) #1

declare dso_local i8* @rtl8169_align(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.rtl8169_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @rtl8169_map_to_asic(%struct.RxDesc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
