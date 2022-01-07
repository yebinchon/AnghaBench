; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_util.c_util_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_util.c_util_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_util_service = type { i32, i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @util_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @util_remove(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.hv_util_service*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %4 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %5 = call %struct.hv_util_service* @hv_get_drvdata(%struct.hv_device* %4)
  store %struct.hv_util_service* %5, %struct.hv_util_service** %3, align 8
  %6 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %7 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @vmbus_close(i32 %8)
  %10 = load %struct.hv_util_service*, %struct.hv_util_service** %3, align 8
  %11 = getelementptr inbounds %struct.hv_util_service, %struct.hv_util_service* %10, i32 0, i32 1
  %12 = load i32 (...)*, i32 (...)** %11, align 8
  %13 = icmp ne i32 (...)* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.hv_util_service*, %struct.hv_util_service** %3, align 8
  %16 = getelementptr inbounds %struct.hv_util_service, %struct.hv_util_service* %15, i32 0, i32 1
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.hv_util_service*, %struct.hv_util_service** %3, align 8
  %21 = getelementptr inbounds %struct.hv_util_service, %struct.hv_util_service* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @kfree(i32 %22)
  ret i32 0
}

declare dso_local %struct.hv_util_service* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
