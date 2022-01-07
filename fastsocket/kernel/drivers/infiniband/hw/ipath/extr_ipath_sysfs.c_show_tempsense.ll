; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_show_tempsense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_show_tempsense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipath_devdata = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%d %d %02X %02X %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_tempsense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_tempsense(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipath_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ipath_devdata* @dev_get_drvdata(%struct.device* %11)
  store %struct.ipath_devdata* %12, %struct.ipath_devdata** %7, align 8
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %34

22:                                               ; preds = %18
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ipath_tempsense_read(%struct.ipath_devdata* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %37

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %15

37:                                               ; preds = %28, %15
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %44 = bitcast i32* %43 to i8*
  %45 = load i8, i8* %44, align 16
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = bitcast i32* %47 to i8*
  %49 = load i8, i8* %48, align 1
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = bitcast i32* %55 to i8*
  %57 = load i8, i8* %56, align 1
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %58, i64 7
  %60 = bitcast i32* %59 to i8*
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @scnprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %45, i8 signext %49, i32 %51, i32 %53, i8 signext %57, i8 signext %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %40, %37
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local %struct.ipath_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ipath_tempsense_read(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8 signext, i8 signext, i32, i32, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
