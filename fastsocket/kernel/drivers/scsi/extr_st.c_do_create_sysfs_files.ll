; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_do_create_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_do_create_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.device_driver }
%struct.device_driver = type { i32 }

@st_template = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@driver_attr_try_direct_io = common dso_local global i32 0, align 4
@driver_attr_fixed_buffer_size = common dso_local global i32 0, align 4
@driver_attr_max_sg_segs = common dso_local global i32 0, align 4
@driver_attr_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_create_sysfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_create_sysfs_files() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_driver*, align 8
  %3 = alloca i32, align 4
  store %struct.device_driver* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st_template, i32 0, i32 0), %struct.device_driver** %2, align 8
  %4 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %5 = call i32 @driver_create_file(%struct.device_driver* %4, i32* @driver_attr_try_direct_io)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %1, align 4
  br label %39

10:                                               ; preds = %0
  %11 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %12 = call i32 @driver_create_file(%struct.device_driver* %11, i32* @driver_attr_fixed_buffer_size)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %35

16:                                               ; preds = %10
  %17 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %18 = call i32 @driver_create_file(%struct.device_driver* %17, i32* @driver_attr_max_sg_segs)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %32

22:                                               ; preds = %16
  %23 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %24 = call i32 @driver_create_file(%struct.device_driver* %23, i32* @driver_attr_version)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %39

29:                                               ; preds = %27
  %30 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %31 = call i32 @driver_remove_file(%struct.device_driver* %30, i32* @driver_attr_max_sg_segs)
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %34 = call i32 @driver_remove_file(%struct.device_driver* %33, i32* @driver_attr_fixed_buffer_size)
  br label %35

35:                                               ; preds = %32, %15
  %36 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %37 = call i32 @driver_remove_file(%struct.device_driver* %36, i32* @driver_attr_try_direct_io)
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %35, %28, %8
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @driver_create_file(%struct.device_driver*, i32*) #1

declare dso_local i32 @driver_remove_file(%struct.device_driver*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
