; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_cxgb3i_dev_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_cxgb3i_dev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.cxgbi_device = type { i32 }

@CXGBI_FLAG_ADAPTER_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"0x%p close, f 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t3cdev*)* @cxgb3i_dev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb3i_dev_close(%struct.t3cdev* %0) #0 {
  %2 = alloca %struct.t3cdev*, align 8
  %3 = alloca %struct.cxgbi_device*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %2, align 8
  %4 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %5 = call %struct.cxgbi_device* @cxgbi_device_find_by_lldev(%struct.t3cdev* %4)
  store %struct.cxgbi_device* %5, %struct.cxgbi_device** %3, align 8
  %6 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %7 = icmp ne %struct.cxgbi_device* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CXGBI_FLAG_ADAPTER_RESET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %8, %1
  %16 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %17 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %18 = icmp ne %struct.cxgbi_device* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %21 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %16, i32 %25)
  br label %30

27:                                               ; preds = %8
  %28 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %29 = call i32 @cxgbi_device_unregister(%struct.cxgbi_device* %28)
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

declare dso_local %struct.cxgbi_device* @cxgbi_device_find_by_lldev(%struct.t3cdev*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_device*, i32) #1

declare dso_local i32 @cxgbi_device_unregister(%struct.cxgbi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
