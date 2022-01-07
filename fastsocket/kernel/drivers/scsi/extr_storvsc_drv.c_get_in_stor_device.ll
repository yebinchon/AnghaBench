; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_get_in_stor_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_get_in_stor_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_device = type { i32, i64 }
%struct.hv_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.storvsc_device* (%struct.hv_device*)* @get_in_stor_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.storvsc_device* @get_in_stor_device(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.storvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %4 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %5 = call %struct.storvsc_device* @hv_get_drvdata(%struct.hv_device* %4)
  store %struct.storvsc_device* %5, %struct.storvsc_device** %3, align 8
  %6 = load %struct.storvsc_device*, %struct.storvsc_device** %3, align 8
  %7 = icmp ne %struct.storvsc_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.storvsc_device*, %struct.storvsc_device** %3, align 8
  %11 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.storvsc_device*, %struct.storvsc_device** %3, align 8
  %16 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %15, i32 0, i32 0
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.storvsc_device* null, %struct.storvsc_device** %3, align 8
  br label %20

20:                                               ; preds = %19, %14, %9
  br label %21

21:                                               ; preds = %20, %8
  %22 = load %struct.storvsc_device*, %struct.storvsc_device** %3, align 8
  ret %struct.storvsc_device* %22
}

declare dso_local %struct.storvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
