; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_submit_data_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_submit_data_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }

@AR9170_NUM_TX_URBS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"tx submit failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_usb_submit_data_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_usb_submit_data_urb(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %5 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %6 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %5, i32 0, i32 0
  %7 = call i64 @atomic_inc_return(i32* %6)
  %8 = load i64, i64* @AR9170_NUM_TX_URBS, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %13 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %12, i32 0, i32 4
  %14 = call %struct.urb* @usb_get_from_anchor(i32* %13)
  store %struct.urb* %14, %struct.urb** %3, align 8
  %15 = load %struct.urb*, %struct.urb** %3, align 8
  %16 = icmp ne %struct.urb* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %58

18:                                               ; preds = %11
  %19 = load %struct.urb*, %struct.urb** %3, align 8
  %20 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %21 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %20, i32 0, i32 3
  %22 = call i32 @usb_anchor_urb(%struct.urb* %19, i32* %21)
  %23 = load %struct.urb*, %struct.urb** %3, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i32 @usb_submit_urb(%struct.urb* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %18
  %30 = call i64 (...) @net_ratelimit()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %34 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.urb*, %struct.urb** %3, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %32, %29
  %42 = load %struct.urb*, %struct.urb** %3, align 8
  %43 = call i32 @usb_unanchor_urb(%struct.urb* %42)
  %44 = load %struct.urb*, %struct.urb** %3, align 8
  %45 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %46 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %45, i32 0, i32 1
  %47 = call i32 @usb_anchor_urb(%struct.urb* %44, i32* %46)
  br label %48

48:                                               ; preds = %41, %18
  %49 = load %struct.urb*, %struct.urb** %3, align 8
  %50 = call i32 @usb_free_urb(%struct.urb* %49)
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i64 @likely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %17, %10
  %59 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %60 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %59, i32 0, i32 0
  %61 = call i32 @atomic_dec(i32* %60)
  br label %62

62:                                               ; preds = %58, %56
  ret void
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
