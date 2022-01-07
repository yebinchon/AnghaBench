; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_eem.c_eem_linkcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_eem.c_eem_linkcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@eem_linkcmd_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"link cmd failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.sk_buff*)* @eem_linkcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eem_linkcmd(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %7)
  store %struct.urb* %8, %struct.urb** %5, align 8
  %9 = load %struct.urb*, %struct.urb** %5, align 8
  %10 = icmp ne %struct.urb* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @eem_linkcmd_complete, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @usb_fill_bulk_urb(%struct.urb* %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %26, %struct.sk_buff* %27)
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i32 @usb_submit_urb(%struct.urb* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %12
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = call i32 @usb_free_urb(%struct.urb* %35)
  br label %37

37:                                               ; preds = %34, %11
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @dev_kfree_skb(%struct.sk_buff* %38)
  %40 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %41 = call i32 @devwarn(%struct.usbnet* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %12
  ret void
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
