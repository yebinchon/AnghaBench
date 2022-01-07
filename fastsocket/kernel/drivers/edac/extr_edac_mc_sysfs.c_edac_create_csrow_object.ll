; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc_sysfs.c_edac_create_csrow_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc_sysfs.c_edac_create_csrow_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.kobject }
%struct.kobject = type { i32 }
%struct.csrow_info = type { i32, %struct.kobject, %struct.mem_ctl_info* }

@ENODEV = common dso_local global i32 0, align 4
@ktype_csrow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"csrow%d\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.csrow_info*, i32)* @edac_create_csrow_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_create_csrow_object(%struct.mem_ctl_info* %0, %struct.csrow_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.csrow_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.csrow_info* %1, %struct.csrow_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 0
  store %struct.kobject* %13, %struct.kobject** %8, align 8
  %14 = load %struct.csrow_info*, %struct.csrow_info** %6, align 8
  %15 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %14, i32 0, i32 1
  %16 = call i32 @memset(%struct.kobject* %15, i32 0, i32 4)
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %18 = load %struct.csrow_info*, %struct.csrow_info** %6, align 8
  %19 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %18, i32 0, i32 2
  store %struct.mem_ctl_info* %17, %struct.mem_ctl_info** %19, align 8
  %20 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %21 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %20, i32 0, i32 0
  %22 = call %struct.kobject* @kobject_get(%struct.kobject* %21)
  store %struct.kobject* %22, %struct.kobject** %9, align 8
  %23 = load %struct.kobject*, %struct.kobject** %9, align 8
  %24 = icmp ne %struct.kobject* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %68

28:                                               ; preds = %3
  %29 = load %struct.csrow_info*, %struct.csrow_info** %6, align 8
  %30 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %29, i32 0, i32 1
  %31 = load %struct.kobject*, %struct.kobject** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @kobject_init_and_add(%struct.kobject* %30, i32* @ktype_csrow, %struct.kobject* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %64

37:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.csrow_info*, %struct.csrow_info** %6, align 8
  %41 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.csrow_info*, %struct.csrow_info** %6, align 8
  %46 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %45, i32 0, i32 1
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @edac_create_channel_files(%struct.kobject* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.csrow_info*, %struct.csrow_info** %6, align 8
  %53 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %52, i32 0, i32 1
  %54 = call i32 @kobject_put(%struct.kobject* %53)
  br label %68

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.csrow_info*, %struct.csrow_info** %6, align 8
  %61 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %60, i32 0, i32 1
  %62 = load i32, i32* @KOBJ_ADD, align 4
  %63 = call i32 @kobject_uevent(%struct.kobject* %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %70

64:                                               ; preds = %36
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %66 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %65, i32 0, i32 0
  %67 = call i32 @kobject_put(%struct.kobject* %66)
  br label %68

68:                                               ; preds = %64, %51, %25
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %59
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.kobject*, i32, i32) #1

declare dso_local %struct.kobject* @kobject_get(%struct.kobject*) #1

declare dso_local i32 @kobject_init_and_add(%struct.kobject*, i32*, %struct.kobject*, i8*, i32) #1

declare dso_local i32 @edac_create_channel_files(%struct.kobject*, i32) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
