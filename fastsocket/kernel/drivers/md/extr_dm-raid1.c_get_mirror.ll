; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_get_mirror.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_get_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.mirror_set*, i32 }
%struct.dm_target = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid offset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Device lookup failure\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mirror_set*, %struct.dm_target*, i32, i8**)* @get_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mirror(%struct.mirror_set* %0, %struct.dm_target* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mirror_set*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.mirror_set* %0, %struct.mirror_set** %6, align 8
  store %struct.dm_target* %1, %struct.dm_target** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %10, i8* %11)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %77

22:                                               ; preds = %4
  %23 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %28 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dm_table_get_mode(i32 %29)
  %31 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %32 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = call i64 @dm_get_device(%struct.dm_target* %23, i8* %26, i32 %30, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %42 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %77

45:                                               ; preds = %22
  %46 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %47 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %48 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store %struct.mirror_set* %46, %struct.mirror_set** %53, align 8
  %54 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %55 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @atomic_set(i32* %60, i32 0)
  %62 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %63 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %71 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 %69, i64* %76, align 8
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %45, %40, %17
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i64 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
