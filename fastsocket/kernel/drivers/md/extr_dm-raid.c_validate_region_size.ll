; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_validate_region_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_validate_region_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [44 x i8] c"Choosing default region size of %lu sectors\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Choosing default region size of 4MiB\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Supplied region size is too large\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Supplied region_size (%lu sectors) below minimum (%lu)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Supplied region size is too small\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Region size is not a power of 2\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Region size is smaller than the chunk size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, i64)* @validate_region_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_region_size(%struct.raid_set* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %8 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %11, 2097152
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = icmp ugt i64 %17, 8192
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %21, 1
  %23 = and i64 %20, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @fls(i64 %26)
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i64, i64* %5, align 8
  %32 = call i32 (i8*, ...) @DMINFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %35

33:                                               ; preds = %16
  %34 = call i32 (i8*, ...) @DMINFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i64 8192, i64* %5, align 8
  br label %35

35:                                               ; preds = %33, %30
  br label %92

36:                                               ; preds = %2
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %39 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %37, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %47 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %36
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @DMERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %61 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %99

66:                                               ; preds = %52
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @is_power_of_2(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %72 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %99

77:                                               ; preds = %66
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %80 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %78, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %86 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8** %88, align 8
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %99

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %35
  %93 = load i64, i64* %5, align 8
  %94 = shl i64 %93, 9
  %95 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %96 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i64 %94, i64* %98, align 8
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %84, %70, %56, %45
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @DMINFO(i8*, ...) #1

declare dso_local i32 @DMERR(i8*, i64, i64) #1

declare dso_local i32 @is_power_of_2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
