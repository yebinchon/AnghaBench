; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_notify_callbacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_notify_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.smscore_device_t = type { i32 }
%struct.device = type { i32 }
%struct.smscore_device_notifyee_t = type { i32 (%struct.smscore_device_t*, %struct.device.0*, i32)* }
%struct.device.0 = type opaque

@g_smscore_notifyees = common dso_local global %struct.list_head zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, %struct.device*, i32)* @smscore_notify_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_notify_callbacks(%struct.smscore_device_t* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.smscore_device_t*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store %struct.list_head* @g_smscore_notifyees, %struct.list_head** %8, align 8
  %10 = load %struct.list_head*, %struct.list_head** %8, align 8
  %11 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %11, align 8
  store %struct.list_head* %12, %struct.list_head** %7, align 8
  br label %13

13:                                               ; preds = %31, %3
  %14 = load %struct.list_head*, %struct.list_head** %7, align 8
  %15 = load %struct.list_head*, %struct.list_head** %8, align 8
  %16 = icmp ne %struct.list_head* %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.list_head*, %struct.list_head** %7, align 8
  %19 = bitcast %struct.list_head* %18 to %struct.smscore_device_notifyee_t*
  %20 = getelementptr inbounds %struct.smscore_device_notifyee_t, %struct.smscore_device_notifyee_t* %19, i32 0, i32 0
  %21 = load i32 (%struct.smscore_device_t*, %struct.device.0*, i32)*, i32 (%struct.smscore_device_t*, %struct.device.0*, i32)** %20, align 8
  %22 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = bitcast %struct.device* %23 to %struct.device.0*
  %25 = load i32, i32* %6, align 4
  %26 = call i32 %21(%struct.smscore_device_t* %22, %struct.device.0* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %35

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.list_head*, %struct.list_head** %7, align 8
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i32 0, i32 0
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8
  store %struct.list_head* %34, %struct.list_head** %7, align 8
  br label %13

35:                                               ; preds = %29, %13
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
