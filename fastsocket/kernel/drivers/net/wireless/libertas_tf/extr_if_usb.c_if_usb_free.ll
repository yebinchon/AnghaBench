; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i32*, i32*, i32*, i32* }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_usb_card*)* @if_usb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_free(%struct.if_usb_card* %0) #0 {
  %2 = alloca %struct.if_usb_card*, align 8
  store %struct.if_usb_card* %0, %struct.if_usb_card** %2, align 8
  %3 = load i32, i32* @LBTF_DEB_USB, align 4
  %4 = call i32 @lbtf_deb_enter(i32 %3)
  %5 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %6 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @usb_kill_urb(i32* %7)
  %9 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %10 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @usb_kill_urb(i32* %11)
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %14 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @usb_kill_urb(i32* %15)
  %17 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %18 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @usb_free_urb(i32* %19)
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %24 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @usb_free_urb(i32* %25)
  %27 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %28 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %30 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @usb_free_urb(i32* %31)
  %33 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %34 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %36 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %40 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @LBTF_DEB_USB, align 4
  %42 = call i32 @lbtf_deb_leave(i32 %41)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
