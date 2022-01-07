; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_handle_tx_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_handle_tx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.urb = type { i64 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_usb_handle_tx_err(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %7 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %6, i32 0, i32 0
  %8 = call %struct.urb* @usb_get_from_anchor(i32* %7)
  store %struct.urb* %8, %struct.urb** %3, align 8
  %9 = icmp ne %struct.urb* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load %struct.urb*, %struct.urb** %3, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.sk_buff*
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @carl9170_tx_drop(%struct.ar9170* %16, %struct.sk_buff* %17)
  %19 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @carl9170_tx_callback(%struct.ar9170* %19, %struct.sk_buff* %20)
  %22 = load %struct.urb*, %struct.urb** %3, align 8
  %23 = call i32 @usb_free_urb(%struct.urb* %22)
  br label %5

24:                                               ; preds = %5
  ret void
}

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @carl9170_tx_drop(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_callback(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
