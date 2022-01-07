; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_usb_clear(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %3 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %4 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @usb_set_intfdata(i32 %5, i32* null)
  %7 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %8 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_put_intf(i32 %9)
  %11 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %12 = call i32 @ZD_MEMCLEAR(%struct.zd_usb* %11, i32 4)
  ret void
}

declare dso_local i32 @usb_set_intfdata(i32, i32*) #1

declare dso_local i32 @usb_put_intf(i32) #1

declare dso_local i32 @ZD_MEMCLEAR(%struct.zd_usb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
