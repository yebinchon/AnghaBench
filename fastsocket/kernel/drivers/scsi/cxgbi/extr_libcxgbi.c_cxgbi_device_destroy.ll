; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { %struct.TYPE_2__, i64, i32 (%struct.cxgbi_device*)*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@CXGBI_DBG_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cdev 0x%p, p# %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*)* @cxgbi_device_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbi_device_destroy(%struct.cxgbi_device* %0) #0 {
  %2 = alloca %struct.cxgbi_device*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %2, align 8
  %3 = load i32, i32* @CXGBI_DBG_DEV, align 4
  %4 = shl i32 1, %3
  %5 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %6 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @log_debug(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %5, i32 %8)
  %10 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %11 = call i32 @cxgbi_hbas_remove(%struct.cxgbi_device* %10)
  %12 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %13 = call i32 @cxgbi_device_portmap_cleanup(%struct.cxgbi_device* %12)
  %14 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %15 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %14, i32 0, i32 2
  %16 = load i32 (%struct.cxgbi_device*)*, i32 (%struct.cxgbi_device*)** %15, align 8
  %17 = icmp ne i32 (%struct.cxgbi_device*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %20 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %19, i32 0, i32 2
  %21 = load i32 (%struct.cxgbi_device*)*, i32 (%struct.cxgbi_device*)** %20, align 8
  %22 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %23 = call i32 %21(%struct.cxgbi_device* %22)
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %26 = call i32 @cxgbi_ddp_cleanup(%struct.cxgbi_device* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %29 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %34 = call i32 @cxgbi_ddp_cleanup(%struct.cxgbi_device* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %37 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %43 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cxgbi_free_big_mem(i32 %45)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %49 = call i32 @kfree(%struct.cxgbi_device* %48)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i32) #1

declare dso_local i32 @cxgbi_hbas_remove(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgbi_device_portmap_cleanup(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgbi_ddp_cleanup(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgbi_free_big_mem(i32) #1

declare dso_local i32 @kfree(%struct.cxgbi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
