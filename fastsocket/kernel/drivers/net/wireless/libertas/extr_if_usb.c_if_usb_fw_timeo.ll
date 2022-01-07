; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_fw_timeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_fw_timeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i32, i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"Download complete, no event. Assuming success\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Download timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @if_usb_fw_timeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_fw_timeo(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.if_usb_card*
  store %struct.if_usb_card* %6, %struct.if_usb_card** %3, align 8
  %7 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %8 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @lbs_deb_usb(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %17

13:                                               ; preds = %1
  %14 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %16 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %13, %11
  %18 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %19 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %18, i32 0, i32 1
  %20 = call i32 @wake_up(i32* %19)
  ret void
}

declare dso_local i32 @lbs_deb_usb(i8*) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
