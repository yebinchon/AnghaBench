; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_cxgb3i_dev_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_cxgb3i_dev_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.cxgbi_device = type { i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"0x%p, cdev 0x%p, event 0x%x, port 0x%x.\0A\00", align 1
@CXGBI_FLAG_ADAPTER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t3cdev*, i32, i32)* @cxgb3i_dev_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb3i_dev_event_handler(%struct.t3cdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxgbi_device*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %9 = call %struct.cxgbi_device* @cxgbi_device_find_by_lldev(%struct.t3cdev* %8)
  store %struct.cxgbi_device* %9, %struct.cxgbi_device** %7, align 8
  %10 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %13 = load %struct.cxgbi_device*, %struct.cxgbi_device** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @log_debug(i32 %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.t3cdev* %12, %struct.cxgbi_device* %13, i32 %14, i32 %15)
  %17 = load %struct.cxgbi_device*, %struct.cxgbi_device** %7, align 8
  %18 = icmp ne %struct.cxgbi_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %35

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %35 [
    i32 129, label %22
    i32 128, label %28
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @CXGBI_FLAG_ADAPTER_RESET, align 4
  %24 = load %struct.cxgbi_device*, %struct.cxgbi_device** %7, align 8
  %25 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load i32, i32* @CXGBI_FLAG_ADAPTER_RESET, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.cxgbi_device*, %struct.cxgbi_device** %7, align 8
  %32 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %19, %20, %28, %22
  ret void
}

declare dso_local %struct.cxgbi_device* @cxgbi_device_find_by_lldev(%struct.t3cdev*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.t3cdev*, %struct.cxgbi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
