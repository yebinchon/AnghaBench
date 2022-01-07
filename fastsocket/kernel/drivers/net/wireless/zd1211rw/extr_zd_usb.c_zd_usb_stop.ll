; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*)* @zd_usb_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zd_usb_stop(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %3 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %4 = call i32 @zd_usb_dev(%struct.zd_usb* %3)
  %5 = call i32 @dev_dbg_f(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %7 = call i32 @zd_usb_to_hw(%struct.zd_usb* %6)
  %8 = call i32 @zd_op_stop(i32 %7)
  %9 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %10 = call i32 @zd_usb_disable_tx(%struct.zd_usb* %9)
  %11 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %12 = call i32 @zd_usb_disable_rx(%struct.zd_usb* %11)
  %13 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %14 = call i32 @zd_usb_disable_int(%struct.zd_usb* %13)
  %15 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %16 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @zd_op_stop(i32) #1

declare dso_local i32 @zd_usb_to_hw(%struct.zd_usb*) #1

declare dso_local i32 @zd_usb_disable_tx(%struct.zd_usb*) #1

declare dso_local i32 @zd_usb_disable_rx(%struct.zd_usb*) #1

declare dso_local i32 @zd_usb_disable_int(%struct.zd_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
