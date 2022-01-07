; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_scm.c_scmdev_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_scm.c_scmdev_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.sale = type { i64, i64 }
%struct.scm_driver = type { i32 (%struct.scm_device.0*, i32)* }
%struct.scm_device.0 = type opaque

@SCM_CHANGE = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_device*, %struct.sale*)* @scmdev_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scmdev_update(%struct.scm_device* %0, %struct.sale* %1) #0 {
  %3 = alloca %struct.scm_device*, align 8
  %4 = alloca %struct.sale*, align 8
  %5 = alloca %struct.scm_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.scm_device* %0, %struct.scm_device** %3, align 8
  store %struct.sale* %1, %struct.sale** %4, align 8
  %7 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %8 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sale*, %struct.sale** %4, align 8
  %12 = getelementptr inbounds %struct.sale, %struct.sale* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %17 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sale*, %struct.sale** %4, align 8
  %21 = getelementptr inbounds %struct.sale, %struct.sale* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br label %24

24:                                               ; preds = %15, %2
  %25 = phi i1 [ true, %2 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.sale*, %struct.sale** %4, align 8
  %28 = getelementptr inbounds %struct.sale, %struct.sale* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %31 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.sale*, %struct.sale** %4, align 8
  %34 = getelementptr inbounds %struct.sale, %struct.sale* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %37 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %40 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %24
  br label %67

45:                                               ; preds = %24
  %46 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %47 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.scm_driver* @to_scm_drv(i32 %49)
  store %struct.scm_driver* %50, %struct.scm_driver** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load %struct.scm_driver*, %struct.scm_driver** %5, align 8
  %55 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %54, i32 0, i32 0
  %56 = load i32 (%struct.scm_device.0*, i32)*, i32 (%struct.scm_device.0*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.scm_device.0*, i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.scm_driver*, %struct.scm_driver** %5, align 8
  %60 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %59, i32 0, i32 0
  %61 = load i32 (%struct.scm_device.0*, i32)*, i32 (%struct.scm_device.0*, i32)** %60, align 8
  %62 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %63 = bitcast %struct.scm_device* %62 to %struct.scm_device.0*
  %64 = load i32, i32* @SCM_CHANGE, align 4
  %65 = call i32 %61(%struct.scm_device.0* %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %53, %45
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %72 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* @KOBJ_CHANGE, align 4
  %75 = call i32 @kobject_uevent(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %67
  ret void
}

declare dso_local %struct.scm_driver* @to_scm_drv(i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
