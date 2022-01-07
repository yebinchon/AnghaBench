; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_alloc_reg_in_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_alloc_reg_in_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { i32, i32 }
%struct.urb = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_REG_IN_URB_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_REG_IN_BUF_SIZE = common dso_local global i32 0, align 4
@USB_REG_IN_PIPE = common dso_local global i32 0, align 4
@ath9k_hif_usb_reg_in_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*)* @ath9k_hif_usb_alloc_reg_in_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hif_usb_alloc_reg_in_urbs(%struct.hif_device_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hif_device_usb*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %3, align 8
  store %struct.urb* null, %struct.urb** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %8 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %9 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %8, i32 0, i32 0
  %10 = call i32 @init_usb_anchor(i32* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %64, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX_REG_IN_URB_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %16)
  store %struct.urb* %17, %struct.urb** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = icmp eq %struct.urb* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %74

23:                                               ; preds = %15
  %24 = load i32, i32* @MAX_REG_IN_BUF_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sk_buff* @alloc_skb(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %71

32:                                               ; preds = %23
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %35 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %38 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @USB_REG_IN_PIPE, align 4
  %41 = call i32 @usb_rcvbulkpipe(i32 %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX_REG_IN_BUF_SIZE, align 4
  %46 = load i32, i32* @ath9k_hif_usb_reg_in_cb, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @usb_fill_bulk_urb(%struct.urb* %33, i32 %36, i32 %41, i32 %44, i32 %45, i32 %46, %struct.sk_buff* %47)
  %49 = load %struct.urb*, %struct.urb** %4, align 8
  %50 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %51 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %50, i32 0, i32 0
  %52 = call i32 @usb_anchor_urb(%struct.urb* %49, i32* %51)
  %53 = load %struct.urb*, %struct.urb** %4, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @usb_submit_urb(%struct.urb* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %32
  %59 = load %struct.urb*, %struct.urb** %4, align 8
  %60 = call i32 @usb_unanchor_urb(%struct.urb* %59)
  br label %68

61:                                               ; preds = %32
  %62 = load %struct.urb*, %struct.urb** %4, align 8
  %63 = call i32 @usb_free_urb(%struct.urb* %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %11

67:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %78

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %68, %29
  %72 = load %struct.urb*, %struct.urb** %4, align 8
  %73 = call i32 @usb_free_urb(%struct.urb* %72)
  br label %74

74:                                               ; preds = %71, %20
  %75 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %76 = call i32 @ath9k_hif_usb_dealloc_reg_in_urbs(%struct.hif_device_usb* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ath9k_hif_usb_dealloc_reg_in_urbs(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
