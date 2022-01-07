; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ksdazzle-sir.c_ksdazzle_rcv_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ksdazzle-sir.c_ksdazzle_rcv_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64, i32*, %struct.ksdazzle_cb* }
%struct.ksdazzle_cb = type { i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ksdazzle_rcv_irq: urb asynchronously failed - %d\00", align 1
@OUTSIDE_FRAME = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ksdazzle_rcv_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksdazzle_rcv_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ksdazzle_cb*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %8, align 8
  store %struct.ksdazzle_cb* %9, %struct.ksdazzle_cb** %3, align 8
  %10 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %11 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %18 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %79

19:                                               ; preds = %1
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %30 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %79

31:                                               ; preds = %19
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %31
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %59, %36
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %52 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %51, i32 0, i32 1
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @async_unwrap_char(%struct.net_device* %48, i32* %50, %struct.TYPE_2__* %52, i32 %57)
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %64 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OUTSIDE_FRAME, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %72 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %62, %31
  %74 = load %struct.urb*, %struct.urb** %2, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.urb*, %struct.urb** %2, align 8
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i32 @usb_submit_urb(%struct.urb* %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %24, %16
  ret void
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @err(i8*, i64) #1

declare dso_local i32 @async_unwrap_char(%struct.net_device*, i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
