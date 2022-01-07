; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_transfer_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_transfer_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_usb = type { i32, i32*, i32, i32** }

@B2C2_USB_NUM_ISO_URB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unlinking/killing urb no. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexcop_usb*)* @flexcop_usb_transfer_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_usb_transfer_exit(%struct.flexcop_usb* %0) #0 {
  %2 = alloca %struct.flexcop_usb*, align 8
  %3 = alloca i32, align 4
  store %struct.flexcop_usb* %0, %struct.flexcop_usb** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %37, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = load %struct.flexcop_usb*, %struct.flexcop_usb** %2, align 8
  %10 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @deb_ts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.flexcop_usb*, %struct.flexcop_usb** %2, align 8
  %21 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %20, i32 0, i32 3
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @usb_kill_urb(i32* %26)
  %28 = load %struct.flexcop_usb*, %struct.flexcop_usb** %2, align 8
  %29 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %28, i32 0, i32 3
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @usb_free_urb(i32* %34)
  br label %36

36:                                               ; preds = %17, %8
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %4

40:                                               ; preds = %4
  %41 = load %struct.flexcop_usb*, %struct.flexcop_usb** %2, align 8
  %42 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.flexcop_usb*, %struct.flexcop_usb** %2, align 8
  %47 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.flexcop_usb*, %struct.flexcop_usb** %2, align 8
  %50 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.flexcop_usb*, %struct.flexcop_usb** %2, align 8
  %53 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pci_free_consistent(i32* null, i32 %48, i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @deb_ts(i8*, i32) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @pci_free_consistent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
