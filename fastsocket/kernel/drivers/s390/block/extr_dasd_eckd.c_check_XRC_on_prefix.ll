; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_check_XRC_on_prefix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_check_XRC_on_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PFX_eckd_data = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dasd_device = type { i64 }
%struct.dasd_eckd_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PFX_eckd_data*, %struct.dasd_device*)* @check_XRC_on_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_XRC_on_prefix(%struct.PFX_eckd_data* %0, %struct.dasd_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PFX_eckd_data*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_eckd_private*, align 8
  %7 = alloca i32, align 4
  store %struct.PFX_eckd_data* %0, %struct.PFX_eckd_data** %4, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %5, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %11, %struct.dasd_eckd_private** %6, align 8
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %13 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %4, align 8
  %21 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 8
  store i32 %24, i32* %22, align 4
  %25 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %4, align 8
  %26 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 2
  store i32 %29, i32* %27, align 4
  %30 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %4, align 8
  %31 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %4, align 8
  %34 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = call i32 @get_sync_clock(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ENOSYS, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EACCES, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %19
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @get_sync_clock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
