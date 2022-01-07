; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_validate_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_validate_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i64 }
%struct.dasd_eckd_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@UA_BASE_PAV_ALIAS = common dso_local global i64 0, align 8
@UA_HYPER_PAV_ALIAS = common dso_local global i64 0, align 8
@dasd_nopav = common dso_local global i64 0, align 8
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PSF-SSC for SSID %04x returned rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i64)* @dasd_eckd_validate_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_validate_server(%struct.dasd_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_eckd_private*, align 8
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %7, align 8
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  %14 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UA_BASE_PAV_ALIAS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  %21 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UA_HYPER_PAV_ALIAS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load i64, i64* @dasd_nopav, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @MACHINE_IS_VM, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  store i32 0, i32* %8, align 4
  br label %35

34:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @dasd_eckd_psf_ssc(%struct.dasd_device* %36, i32 %37, i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @DBF_WARNING, align 4
  %41 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %42 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  %45 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @DBF_EVENT_DEVID(i32 %40, i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %35, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @dasd_eckd_psf_ssc(%struct.dasd_device*, i32, i64) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
