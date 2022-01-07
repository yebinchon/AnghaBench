; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32 }
%struct.zd_ioreq16 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_iowrite16v(%struct.zd_usb* %0, %struct.zd_ioreq16* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_usb*, align 8
  %6 = alloca %struct.zd_ioreq16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zd_usb* %0, %struct.zd_usb** %5, align 8
  store %struct.zd_ioreq16* %1, %struct.zd_ioreq16** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %10 = call i32 @zd_usb_iowrite16v_async_start(%struct.zd_usb* %9)
  %11 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %12 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @zd_usb_iowrite16v_async(%struct.zd_usb* %11, %struct.zd_ioreq16* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %19 = call i32 @zd_usb_iowrite16v_async_end(%struct.zd_usb* %18, i32 0)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %23 = call i32 @zd_usb_iowrite16v_async_end(%struct.zd_usb* %22, i32 50)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @zd_usb_iowrite16v_async_start(%struct.zd_usb*) #1

declare dso_local i32 @zd_usb_iowrite16v_async(%struct.zd_usb*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @zd_usb_iowrite16v_async_end(%struct.zd_usb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
