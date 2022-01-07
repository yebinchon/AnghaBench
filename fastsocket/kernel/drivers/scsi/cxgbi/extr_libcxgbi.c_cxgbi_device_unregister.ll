; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32, %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i8* }

@CXGBI_DBG_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cdev 0x%p, p# %u,%s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cdev_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_device_unregister(%struct.cxgbi_device* %0) #0 {
  %2 = alloca %struct.cxgbi_device*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %2, align 8
  %3 = load i32, i32* @CXGBI_DBG_DEV, align 4
  %4 = shl i32 1, %3
  %5 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %6 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %10 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %15 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i8* [ %20, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = call i32 @log_debug(i32 %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %5, i64 %8, i8* %23)
  %25 = call i32 @mutex_lock(i32* @cdev_mutex)
  %26 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %27 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  %29 = call i32 @mutex_unlock(i32* @cdev_mutex)
  %30 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %31 = call i32 @cxgbi_device_destroy(%struct.cxgbi_device* %30)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i64, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cxgbi_device_destroy(%struct.cxgbi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
