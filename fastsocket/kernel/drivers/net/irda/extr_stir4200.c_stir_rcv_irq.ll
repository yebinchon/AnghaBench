; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_rcv_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_rcv_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, i32, %struct.stir_cb* }
%struct.stir_cb = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"receive %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"usb receive submit error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @stir_rcv_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stir_rcv_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.stir_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 3
  %7 = load %struct.stir_cb*, %struct.stir_cb** %6, align 8
  store %struct.stir_cb* %7, %struct.stir_cb** %3, align 8
  %8 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %9 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @netif_running(%struct.TYPE_2__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %66

20:                                               ; preds = %14
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @unwrap_chars(%struct.stir_cb* %30, i32 %33, i32 %36)
  %38 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %39 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %38, i32 0, i32 3
  %40 = call i32 @do_gettimeofday(i32* %39)
  br label %41

41:                                               ; preds = %25, %20
  %42 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %43 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %66

47:                                               ; preds = %41
  %48 = load %struct.urb*, %struct.urb** %2, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @usb_submit_urb(%struct.urb* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %55 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %61 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %63 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @wake_up_process(i32 %64)
  br label %66

66:                                               ; preds = %13, %19, %46, %53, %47
  ret void
}

declare dso_local i32 @netif_running(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @unwrap_chars(%struct.stir_cb*, i32, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
