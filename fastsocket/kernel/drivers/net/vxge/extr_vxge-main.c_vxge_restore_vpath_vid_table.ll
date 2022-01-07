; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_restore_vpath_vid_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_restore_vpath_vid_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_vpath = type { i32, i64, %struct.vxgedev* }
%struct.vxgedev = type { i64 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VLAN_GROUP_ARRAY_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_restore_vpath_vid_table(%struct.vxge_vpath* %0) #0 {
  %2 = alloca %struct.vxge_vpath*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxgedev*, align 8
  %5 = alloca i64, align 8
  store %struct.vxge_vpath* %0, %struct.vxge_vpath** %2, align 8
  %6 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.vxge_vpath*, %struct.vxge_vpath** %2, align 8
  %8 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %7, i32 0, i32 2
  %9 = load %struct.vxgedev*, %struct.vxgedev** %8, align 8
  store %struct.vxgedev* %9, %struct.vxgedev** %4, align 8
  %10 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %11 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  %15 = load %struct.vxge_vpath*, %struct.vxge_vpath** %2, align 8
  %16 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @VLAN_GROUP_ARRAY_LEN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %26 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @vlan_group_get_device(i64 %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.vxge_vpath*, %struct.vxge_vpath** %2, align 8
  %34 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @vxge_hw_vpath_vid_add(i32 %35, i64 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %31
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %14, %1
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @vlan_group_get_device(i64, i64) #1

declare dso_local i32 @vxge_hw_vpath_vid_add(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
