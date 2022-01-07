; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CARL9170_IDLE = common dso_local global i32 0, align 4
@CARL9170_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"kill pending tx urbs.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_usb_stop(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %4 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %5 = load i32, i32* @CARL9170_IDLE, align 4
  %6 = load i32, i32* @CARL9170_STOPPED, align 4
  %7 = call i32 @carl9170_set_state_when(%struct.ar9170* %4, i32 %5, i32 %6)
  %8 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %9 = call i32 @carl9170_usb_flush(%struct.ar9170* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %14 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %20 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %19, i32 0, i32 3
  %21 = call i32 @usb_poison_anchored_urbs(i32* %20)
  %22 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %23 = call i32 @carl9170_usb_handle_tx_err(%struct.ar9170* %22)
  %24 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %25 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %30 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %33 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %32, i32 0, i32 0
  %34 = call i32 @complete_all(i32* %33)
  %35 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %36 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @INIT_COMPLETION(i32 %37)
  ret void
}

declare dso_local i32 @carl9170_set_state_when(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_usb_flush(%struct.ar9170*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_poison_anchored_urbs(i32*) #1

declare dso_local i32 @carl9170_usb_handle_tx_err(%struct.ar9170*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
