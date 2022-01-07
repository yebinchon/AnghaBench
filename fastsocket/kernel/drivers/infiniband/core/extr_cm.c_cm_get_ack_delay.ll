; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_get_ack_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_get_ack_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_device = type { i32, i32 }
%struct.ib_device_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_device*)* @cm_get_ack_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_get_ack_delay(%struct.cm_device* %0) #0 {
  %2 = alloca %struct.cm_device*, align 8
  %3 = alloca %struct.ib_device_attr, align 4
  store %struct.cm_device* %0, %struct.cm_device** %2, align 8
  %4 = load %struct.cm_device*, %struct.cm_device** %2, align 8
  %5 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @ib_query_device(i32 %6, %struct.ib_device_attr* %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.cm_device*, %struct.cm_device** %2, align 8
  %11 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  br label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cm_device*, %struct.cm_device** %2, align 8
  %16 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

declare dso_local i64 @ib_query_device(i32, %struct.ib_device_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
