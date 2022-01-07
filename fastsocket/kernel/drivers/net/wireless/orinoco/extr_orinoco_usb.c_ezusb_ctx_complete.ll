; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_ctx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_ctx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_context = type { i32, i32, i32, i32, %struct.ezusb_priv* }
%struct.ezusb_priv = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.orinoco_private = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }

@EZUSB_RID_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Called, CTX not terminating, but device gone\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Called, CTX not in terminating state.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_context*)* @ezusb_ctx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ezusb_ctx_complete(%struct.request_context* %0) #0 {
  %2 = alloca %struct.request_context*, align 8
  %3 = alloca %struct.ezusb_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.orinoco_private*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  store %struct.request_context* %0, %struct.request_context** %2, align 8
  %8 = load %struct.request_context*, %struct.request_context** %2, align 8
  %9 = getelementptr inbounds %struct.request_context, %struct.request_context* %8, i32 0, i32 4
  %10 = load %struct.ezusb_priv*, %struct.ezusb_priv** %9, align 8
  store %struct.ezusb_priv* %10, %struct.ezusb_priv** %3, align 8
  %11 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.request_context*, %struct.request_context** %2, align 8
  %16 = getelementptr inbounds %struct.request_context, %struct.request_context* %15, i32 0, i32 3
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %28 = call i32 @ezusb_req_queue_run(%struct.ezusb_priv* %27)
  %29 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %22, %1
  %34 = load %struct.request_context*, %struct.request_context** %2, align 8
  %35 = getelementptr inbounds %struct.request_context, %struct.request_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %83 [
    i32 132, label %37
    i32 131, label %37
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
  ]

37:                                               ; preds = %33, %33, %33, %33, %33
  %38 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.request_context*, %struct.request_context** %2, align 8
  %43 = getelementptr inbounds %struct.request_context, %struct.request_context* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EZUSB_RID_TX, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %37
  %48 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %48, i32 0, i32 2
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  %51 = icmp ne %struct.net_device* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %53, i32 0, i32 2
  %55 = load %struct.net_device*, %struct.net_device** %54, align 8
  store %struct.net_device* %55, %struct.net_device** %5, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %56)
  store %struct.orinoco_private* %57, %struct.orinoco_private** %6, align 8
  %58 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %59 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %58, i32 0, i32 0
  store %struct.net_device_stats* %59, %struct.net_device_stats** %7, align 8
  %60 = load %struct.request_context*, %struct.request_context** %2, align 8
  %61 = getelementptr inbounds %struct.request_context, %struct.request_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 132
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %66 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %74

69:                                               ; preds = %52
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @netif_wake_queue(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %74, %47, %37
  %78 = load %struct.request_context*, %struct.request_context** %2, align 8
  %79 = getelementptr inbounds %struct.request_context, %struct.request_context* %78, i32 0, i32 1
  %80 = call i32 @ezusb_complete_all(i32* %79)
  %81 = load %struct.request_context*, %struct.request_context** %2, align 8
  %82 = call i32 @ezusb_request_context_put(%struct.request_context* %81)
  br label %101

83:                                               ; preds = %33
  %84 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %85 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %84, i32 0, i32 1
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %89 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %83
  %93 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.request_context*, %struct.request_context** %2, align 8
  %95 = getelementptr inbounds %struct.request_context, %struct.request_context* %94, i32 0, i32 1
  %96 = call i32 @ezusb_complete_all(i32* %95)
  %97 = load %struct.request_context*, %struct.request_context** %2, align 8
  %98 = call i32 @ezusb_request_context_put(%struct.request_context* %97)
  br label %101

99:                                               ; preds = %83
  %100 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %92, %77
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ezusb_req_queue_run(%struct.ezusb_priv*) #1

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @ezusb_complete_all(i32*) #1

declare dso_local i32 @ezusb_request_context_put(%struct.request_context*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
