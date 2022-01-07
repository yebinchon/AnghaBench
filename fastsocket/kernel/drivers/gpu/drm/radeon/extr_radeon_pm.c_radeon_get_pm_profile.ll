; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_get_pm_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_get_pm_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PM_PROFILE_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@PM_PROFILE_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@PM_PROFILE_MID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"mid\00", align 1
@PM_PROFILE_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @radeon_get_pm_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_get_pm_profile(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @to_pci_dev(%struct.device* %10)
  %12 = call %struct.drm_device* @pci_get_drvdata(i32 %11)
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PM_PROFILE_AUTO, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %46

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PM_PROFILE_LOW, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PM_PROFILE_MID, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PM_PROFILE_HIGH, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  br label %42

42:                                               ; preds = %36, %35
  %43 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %35 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %30
  %45 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %30 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %25
  %47 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %25 ], [ %45, %44 ]
  %48 = call i32 @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %47)
  ret i32 %48
}

declare dso_local %struct.drm_device* @pci_get_drvdata(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
