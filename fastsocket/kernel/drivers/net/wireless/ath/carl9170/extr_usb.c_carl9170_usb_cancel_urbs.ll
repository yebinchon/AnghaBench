; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_cancel_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_cancel_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CARL9170_UNKNOWN_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stuck tx urbs!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_usb_cancel_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_usb_cancel_urbs(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %4 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %5 = load i32, i32* @CARL9170_UNKNOWN_STATE, align 4
  %6 = call i32 @carl9170_set_state(%struct.ar9170* %4, i32 %5)
  %7 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %8 = call i32 @carl9170_usb_flush(%struct.ar9170* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %13 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %12, i32 0, i32 6
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %19 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %18, i32 0, i32 5
  %20 = call i32 @usb_poison_anchored_urbs(i32* %19)
  %21 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %22 = call i32 @carl9170_usb_handle_tx_err(%struct.ar9170* %21)
  %23 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %24 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %23, i32 0, i32 4
  %25 = call i32 @usb_poison_anchored_urbs(i32* %24)
  %26 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %27 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %26, i32 0, i32 3
  %28 = call i32 @tasklet_kill(i32* %27)
  %29 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %30 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %29, i32 0, i32 2
  %31 = call i32 @usb_scuttle_anchored_urbs(i32* %30)
  %32 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %33 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %32, i32 0, i32 1
  %34 = call i32 @usb_scuttle_anchored_urbs(i32* %33)
  %35 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %36 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %35, i32 0, i32 0
  %37 = call i32 @usb_scuttle_anchored_urbs(i32* %36)
  ret void
}

declare dso_local i32 @carl9170_set_state(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_usb_flush(%struct.ar9170*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_poison_anchored_urbs(i32*) #1

declare dso_local i32 @carl9170_usb_handle_tx_err(%struct.ar9170*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @usb_scuttle_anchored_urbs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
