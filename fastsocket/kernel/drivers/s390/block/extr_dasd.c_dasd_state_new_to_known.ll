; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_new_to_known.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_new_to_known.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i64 }

@DASD_STATE_KNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_state_new_to_known to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_state_new_to_known(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %5 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %6 = call i32 @dasd_get_device(%struct.dasd_device* %5)
  %7 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @dasd_alloc_queue(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = call i32 @dasd_put_device(%struct.dasd_device* %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* @DASD_STATE_KNOWN, align 4
  %25 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @dasd_get_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_alloc_queue(i64) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
