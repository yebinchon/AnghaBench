; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_device_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @bpq_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpq_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = call i32* @dev_net(%struct.net_device* %11)
  %13 = icmp ne i32* %12, @init_net
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %15, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call i32 @dev_is_ethdev(%struct.net_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  switch i64 %23, label %48 [
    i64 128, label %24
    i64 130, label %32
    i64 129, label %40
  ]

24:                                               ; preds = %22
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = call %struct.net_device* @bpq_get_ax25_dev(%struct.net_device* %25)
  %27 = icmp eq %struct.net_device* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = call i32 @bpq_new_device(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %24
  br label %49

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = call %struct.net_device* @bpq_get_ax25_dev(%struct.net_device* %33)
  store %struct.net_device* %34, %struct.net_device** %8, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = call i32 @dev_close(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %36, %32
  br label %49

40:                                               ; preds = %22
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = call %struct.net_device* @bpq_get_ax25_dev(%struct.net_device* %41)
  store %struct.net_device* %42, %struct.net_device** %8, align 8
  %43 = icmp ne %struct.net_device* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = call i32 @bpq_free_device(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %44, %40
  br label %49

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48, %47, %39, %31
  %50 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %20, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32* @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_is_ethdev(%struct.net_device*) #1

declare dso_local %struct.net_device* @bpq_get_ax25_dev(%struct.net_device*) #1

declare dso_local i32 @bpq_new_device(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @bpq_free_device(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
