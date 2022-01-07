; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_sfree_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_sfree_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32 }
%struct.dasd_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_sfree_request(%struct.dasd_ccw_req* %0, %struct.dasd_device* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i64, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %4, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %13 = call i32 @dasd_free_chunk(i32* %11, %struct.dasd_ccw_req* %12)
  %14 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %19 = call i32 @dasd_put_device(%struct.dasd_device* %18)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dasd_free_chunk(i32*, %struct.dasd_ccw_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
