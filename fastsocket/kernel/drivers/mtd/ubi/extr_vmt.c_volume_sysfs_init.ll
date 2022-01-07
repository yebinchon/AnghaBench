; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_volume_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_volume_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_volume = type { i32 }

@attr_vol_reserved_ebs = common dso_local global i32 0, align 4
@attr_vol_type = common dso_local global i32 0, align 4
@attr_vol_name = common dso_local global i32 0, align 4
@attr_vol_corrupted = common dso_local global i32 0, align 4
@attr_vol_alignment = common dso_local global i32 0, align 4
@attr_vol_usable_eb_size = common dso_local global i32 0, align 4
@attr_vol_data_bytes = common dso_local global i32 0, align 4
@attr_vol_upd_marker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_volume*)* @volume_sysfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volume_sysfs_init(%struct.ubi_device* %0, %struct.ubi_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_volume*, align 8
  %6 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %5, align 8
  %7 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %8 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %7, i32 0, i32 0
  %9 = call i32 @device_create_file(i32* %8, i32* @attr_vol_reserved_ebs)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %16 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %15, i32 0, i32 0
  %17 = call i32 @device_create_file(i32* %16, i32* @attr_vol_type)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %14
  %23 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %24 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %23, i32 0, i32 0
  %25 = call i32 @device_create_file(i32* %24, i32* @attr_vol_name)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %67

30:                                               ; preds = %22
  %31 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %31, i32 0, i32 0
  %33 = call i32 @device_create_file(i32* %32, i32* @attr_vol_corrupted)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %67

38:                                               ; preds = %30
  %39 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %40 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %39, i32 0, i32 0
  %41 = call i32 @device_create_file(i32* %40, i32* @attr_vol_alignment)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %67

46:                                               ; preds = %38
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 0
  %49 = call i32 @device_create_file(i32* %48, i32* @attr_vol_usable_eb_size)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %67

54:                                               ; preds = %46
  %55 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %56 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %55, i32 0, i32 0
  %57 = call i32 @device_create_file(i32* %56, i32* @attr_vol_data_bytes)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %67

62:                                               ; preds = %54
  %63 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %64 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %63, i32 0, i32 0
  %65 = call i32 @device_create_file(i32* %64, i32* @attr_vol_upd_marker)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %60, %52, %44, %36, %28, %20, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
