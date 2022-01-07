; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_alloc_tx_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_alloc_tx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.tx_buf = type { %struct.tx_buf*, i32, i32, %struct.hif_device_usb*, i32 }

@MAX_TX_URB_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_TX_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*)* @ath9k_hif_usb_alloc_tx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hif_usb_alloc_tx_urbs(%struct.hif_device_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hif_device_usb*, align 8
  %4 = alloca %struct.tx_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %3, align 8
  %6 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %7 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %11 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %15 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %19 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = call i32 @__skb_queue_head_init(i32* %20)
  %22 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %23 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %22, i32 0, i32 1
  %24 = call i32 @init_usb_anchor(i32* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %71, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MAX_TX_URB_NUM, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 32, i32 %30)
  %32 = bitcast i8* %31 to %struct.tx_buf*
  store %struct.tx_buf* %32, %struct.tx_buf** %4, align 8
  %33 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %34 = icmp ne %struct.tx_buf* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %79

36:                                               ; preds = %29
  %37 = load i32, i32* @MAX_TX_BUF_SIZE, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to %struct.tx_buf*
  %41 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %42 = getelementptr inbounds %struct.tx_buf, %struct.tx_buf* %41, i32 0, i32 0
  store %struct.tx_buf* %40, %struct.tx_buf** %42, align 8
  %43 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %44 = getelementptr inbounds %struct.tx_buf, %struct.tx_buf* %43, i32 0, i32 0
  %45 = load %struct.tx_buf*, %struct.tx_buf** %44, align 8
  %46 = icmp ne %struct.tx_buf* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %79

48:                                               ; preds = %36
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @usb_alloc_urb(i32 0, i32 %49)
  %51 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %52 = getelementptr inbounds %struct.tx_buf, %struct.tx_buf* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %54 = getelementptr inbounds %struct.tx_buf, %struct.tx_buf* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %79

58:                                               ; preds = %48
  %59 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %60 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %61 = getelementptr inbounds %struct.tx_buf, %struct.tx_buf* %60, i32 0, i32 3
  store %struct.hif_device_usb* %59, %struct.hif_device_usb** %61, align 8
  %62 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %63 = getelementptr inbounds %struct.tx_buf, %struct.tx_buf* %62, i32 0, i32 2
  %64 = call i32 @__skb_queue_head_init(i32* %63)
  %65 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %66 = getelementptr inbounds %struct.tx_buf, %struct.tx_buf* %65, i32 0, i32 1
  %67 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %68 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = call i32 @list_add_tail(i32* %66, i32* %69)
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %25

74:                                               ; preds = %25
  %75 = load i32, i32* @MAX_TX_URB_NUM, align 4
  %76 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %77 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %94

79:                                               ; preds = %57, %47, %35
  %80 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %81 = icmp ne %struct.tx_buf* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %84 = getelementptr inbounds %struct.tx_buf, %struct.tx_buf* %83, i32 0, i32 0
  %85 = load %struct.tx_buf*, %struct.tx_buf** %84, align 8
  %86 = call i32 @kfree(%struct.tx_buf* %85)
  %87 = load %struct.tx_buf*, %struct.tx_buf** %4, align 8
  %88 = call i32 @kfree(%struct.tx_buf* %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %91 = call i32 @ath9k_hif_usb_dealloc_tx_urbs(%struct.hif_device_usb* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %74
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.tx_buf*) #1

declare dso_local i32 @ath9k_hif_usb_dealloc_tx_urbs(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
