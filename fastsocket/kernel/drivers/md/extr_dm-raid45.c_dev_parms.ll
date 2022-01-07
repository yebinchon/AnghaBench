; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_dev_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_dev_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_2__, %struct.raid_dev*, %struct.dm_target* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.raid_dev = type { i64, i32 }
%struct.dm_target = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"rs->set.sectors_per_dev=%llu\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid RAID device offset parameter\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"RAID device lookup failure\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Duplicate RAID device\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, i8**, i32*)* @dev_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_parms(%struct.raid_set* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.raid_dev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %12 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %11, i32 0, i32 2
  %13 = load %struct.dm_target*, %struct.dm_target** %12, align 8
  store %struct.dm_target* %13, %struct.dm_target** %7, align 8
  %14 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @DMINFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %91, %3
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %24 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %97

28:                                               ; preds = %20
  %29 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %30 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %29, i32 0, i32 1
  %31 = load %struct.raid_dev*, %struct.raid_dev** %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %31, i64 %34
  store %struct.raid_dev* %35, %struct.raid_dev** %10, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %9)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %48, label %41

41:                                               ; preds = %28
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %44 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %28
  %49 = call i32 @TI_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.raid_dev*, %struct.raid_dev** %10, align 8
  %53 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %59 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dm_table_get_mode(i32 %60)
  %62 = load %struct.raid_dev*, %struct.raid_dev** %10, align 8
  %63 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %62, i32 0, i32 1
  %64 = call i32 @dm_get_device(%struct.dm_target* %54, i8* %57, i32 %61, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @TI_ERR_RET(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %50
  %71 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %72 = load %struct.raid_dev*, %struct.raid_dev** %10, align 8
  %73 = call i32 @raid_dev_lookup(%struct.raid_set* %71, %struct.raid_dev* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @ENXIO, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @TI_ERR_RET(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %83, %78, %70
  br label %91

91:                                               ; preds = %90
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  store i8** %96, i8*** %5, align 8
  br label %20

97:                                               ; preds = %20
  ret i32 0
}

declare dso_local i32 @DMINFO(i8*, i64) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @TI_ERR(i8*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @TI_ERR_RET(i8*, i32) #1

declare dso_local i32 @raid_dev_lookup(%struct.raid_set*, %struct.raid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
