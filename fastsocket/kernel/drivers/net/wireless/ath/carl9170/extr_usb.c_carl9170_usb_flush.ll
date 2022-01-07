; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32 }
%struct.urb = type { i64 }
%struct.sk_buff = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_usb_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_usb_flush(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %9 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %8, i32 0, i32 2
  %10 = call %struct.urb* @usb_get_from_anchor(i32* %9)
  store %struct.urb* %10, %struct.urb** %3, align 8
  %11 = icmp ne %struct.urb* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load %struct.urb*, %struct.urb** %3, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.sk_buff*
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @carl9170_tx_drop(%struct.ar9170* %18, %struct.sk_buff* %19)
  %21 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @carl9170_tx_callback(%struct.ar9170* %21, %struct.sk_buff* %22)
  %24 = load %struct.urb*, %struct.urb** %3, align 8
  %25 = call i32 @usb_free_urb(%struct.urb* %24)
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 1
  %29 = call i32 @usb_wait_anchor_empty_timeout(i32* %28, i32 1000)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %37 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %36, i32 0, i32 0
  %38 = call i32 @usb_wait_anchor_empty_timeout(i32* %37, i32 1000)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %46 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %45, i32 0, i32 0
  %47 = call i32 @usb_kill_anchored_urbs(i32* %46)
  %48 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %49 = call i32 @carl9170_usb_handle_tx_err(%struct.ar9170* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @carl9170_tx_drop(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_callback(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_wait_anchor_empty_timeout(i32*, i32) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @carl9170_usb_handle_tx_err(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
