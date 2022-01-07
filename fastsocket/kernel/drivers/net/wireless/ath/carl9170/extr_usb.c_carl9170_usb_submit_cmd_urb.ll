; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_submit_cmd_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_submit_cmd_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_usb_submit_cmd_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_usb_submit_cmd_urb(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %6 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %7 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %6, i32 0, i32 0
  %8 = call i32 @atomic_inc_return(i32* %7)
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %12 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %11, i32 0, i32 0
  %13 = call i32 @atomic_dec(i32* %12)
  store i32 0, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %16 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %15, i32 0, i32 2
  %17 = call %struct.urb* @usb_get_from_anchor(i32* %16)
  store %struct.urb* %17, %struct.urb** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = icmp ne %struct.urb* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %22 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %21, i32 0, i32 0
  %23 = call i32 @atomic_dec(i32* %22)
  store i32 0, i32* %2, align 4
  br label %45

24:                                               ; preds = %14
  %25 = load %struct.urb*, %struct.urb** %4, align 8
  %26 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %27 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %26, i32 0, i32 1
  %28 = call i32 @usb_anchor_urb(%struct.urb* %25, i32* %27)
  %29 = load %struct.urb*, %struct.urb** %4, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i32 @usb_submit_urb(%struct.urb* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.urb*, %struct.urb** %4, align 8
  %37 = call i32 @usb_unanchor_urb(%struct.urb* %36)
  %38 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %39 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %38, i32 0, i32 0
  %40 = call i32 @atomic_dec(i32* %39)
  br label %41

41:                                               ; preds = %35, %24
  %42 = load %struct.urb*, %struct.urb** %4, align 8
  %43 = call i32 @usb_free_urb(%struct.urb* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %20, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
