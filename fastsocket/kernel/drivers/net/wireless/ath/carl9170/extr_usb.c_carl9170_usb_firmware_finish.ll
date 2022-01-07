; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_firmware_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_firmware_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_usb_firmware_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_usb_firmware_finish(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %4 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %5 = call i32 @carl9170_parse_firmware(%struct.ar9170* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %11 = call i32 @carl9170_usb_init_device(%struct.ar9170* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %34

15:                                               ; preds = %9
  %16 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %17 = call i32 @carl9170_register(%struct.ar9170* %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %19 = call i32 @carl9170_usb_stop(%struct.ar9170* %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %31

23:                                               ; preds = %15
  %24 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %25 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %24, i32 0, i32 1
  %26 = call i32 @complete(i32* %25)
  %27 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_put_dev(i32 %29)
  br label %39

31:                                               ; preds = %22
  %32 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %33 = call i32 @carl9170_usb_cancel_urbs(%struct.ar9170* %32)
  br label %34

34:                                               ; preds = %31, %14, %8
  %35 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %36 = call i32 @carl9170_release_firmware(%struct.ar9170* %35)
  %37 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %38 = call i32 @carl9170_usb_firmware_failed(%struct.ar9170* %37)
  br label %39

39:                                               ; preds = %34, %23
  ret void
}

declare dso_local i32 @carl9170_parse_firmware(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_init_device(%struct.ar9170*) #1

declare dso_local i32 @carl9170_register(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_stop(%struct.ar9170*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @carl9170_usb_cancel_urbs(%struct.ar9170*) #1

declare dso_local i32 @carl9170_release_firmware(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_firmware_failed(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
