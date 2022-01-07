; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_queue_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_queue_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32, i32, i32 }
%struct.ap_message = type { i32 (%struct.ap_device.0*, %struct.ap_message*, i32)* }
%struct.ap_device.0 = type opaque

@ap_poll_wait = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ap_queue_message(%struct.ap_device* %0, %struct.ap_message* %1) #0 {
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.ap_message*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  store %struct.ap_message* %1, %struct.ap_message** %4, align 8
  %7 = load %struct.ap_message*, %struct.ap_message** %4, align 8
  %8 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %7, i32 0, i32 0
  %9 = load i32 (%struct.ap_device.0*, %struct.ap_message*, i32)*, i32 (%struct.ap_device.0*, %struct.ap_message*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.ap_device.0*, %struct.ap_message*, i32)* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %15 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %18 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %2
  %22 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %23 = call i32 @ap_poll_queue(%struct.ap_device* %22, i64* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %28 = load %struct.ap_message*, %struct.ap_message** %4, align 8
  %29 = call i32 @__ap_queue_message(%struct.ap_device* %27, %struct.ap_message* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 @wake_up(i32* @ap_poll_wait)
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %42 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %57

44:                                               ; preds = %2
  %45 = load %struct.ap_message*, %struct.ap_message** %4, align 8
  %46 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %45, i32 0, i32 0
  %47 = load i32 (%struct.ap_device.0*, %struct.ap_message*, i32)*, i32 (%struct.ap_device.0*, %struct.ap_message*, i32)** %46, align 8
  %48 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %49 = bitcast %struct.ap_device* %48 to %struct.ap_device.0*
  %50 = load %struct.ap_message*, %struct.ap_message** %4, align 8
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i32 @ERR_PTR(i32 %52)
  %54 = call i32 %47(%struct.ap_device.0* %49, %struct.ap_message* %50, i32 %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %44, %43
  %58 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %59 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock_bh(i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %67 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %66, i32 0, i32 1
  %68 = call i32 @device_unregister(i32* %67)
  br label %69

69:                                               ; preds = %65, %57
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ap_poll_queue(%struct.ap_device*, i64*) #1

declare dso_local i32 @__ap_queue_message(%struct.ap_device*, %struct.ap_message*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
