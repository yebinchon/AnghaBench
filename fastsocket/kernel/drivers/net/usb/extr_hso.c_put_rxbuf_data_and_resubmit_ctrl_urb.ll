; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_put_rxbuf_data_and_resubmit_ctrl_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_put_rxbuf_data_and_resubmit_ctrl_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i64, i64, %struct.urb** }
%struct.urb = type { i64 }

@RX_PENDING = common dso_local global i64 0, align 8
@RX_SENT = common dso_local global i64 0, align 8
@RX_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_serial*)* @put_rxbuf_data_and_resubmit_ctrl_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_rxbuf_data_and_resubmit_ctrl_urb(%struct.hso_serial* %0) #0 {
  %2 = alloca %struct.hso_serial*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.hso_serial* %0, %struct.hso_serial** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %6 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %5, i32 0, i32 2
  %7 = load %struct.urb**, %struct.urb*** %6, align 8
  %8 = getelementptr inbounds %struct.urb*, %struct.urb** %7, i64 0
  %9 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %9, %struct.urb** %4, align 8
  %10 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %11 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %17 = call i32 @put_rxbuf_data(%struct.urb* %15, %struct.hso_serial* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %46

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %32 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RX_PENDING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30, %25
  %37 = load i64, i64* @RX_SENT, align 8
  %38 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %39 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %41 = call i32 @hso_mux_serial_read(%struct.hso_serial* %40)
  br label %46

42:                                               ; preds = %30, %22
  %43 = load i64, i64* @RX_IDLE, align 8
  %44 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %45 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %20, %42, %36
  ret void
}

declare dso_local i32 @put_rxbuf_data(%struct.urb*, %struct.hso_serial*) #1

declare dso_local i32 @hso_mux_serial_read(%struct.hso_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
