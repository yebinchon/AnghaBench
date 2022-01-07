; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pmac.c_pmac_ide_cable_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pmac.c_pmac_ide_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"cable-type\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"80-\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PowerBook\00", align 1
@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"K2-UATA\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"shasta-ata\00", align 1
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @pmac_ide_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmac_ide_cable_detect(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @dev_get_drvdata(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i8* @of_get_property(%struct.device_node* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %19, i8** %6, align 8
  %20 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %20, %struct.device_node** %7, align 8
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = call i8* @of_get_property(%struct.device_node* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %29
  %36 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %25, %1
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i64 @of_device_is_compatible(%struct.device_node* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = call i64 @of_device_is_compatible(%struct.device_node* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %45, %35, %33
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @dev_get_drvdata(i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
