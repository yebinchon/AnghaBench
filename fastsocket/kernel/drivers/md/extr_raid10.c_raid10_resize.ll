; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, %struct.r10conf* }
%struct.r10conf = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MaxSector = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i64)* @raid10_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_resize(%struct.mddev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mddev*, %struct.mddev** %4, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 9
  %12 = load %struct.r10conf*, %struct.r10conf** %11, align 8
  store %struct.r10conf* %12, %struct.r10conf** %6, align 8
  %13 = load %struct.mddev*, %struct.mddev** %4, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MaxSector, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %117

21:                                               ; preds = %2
  %22 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %29 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %117

36:                                               ; preds = %27, %21
  %37 = load %struct.mddev*, %struct.mddev** %4, align 8
  %38 = call i64 @raid10_size(%struct.mddev* %37, i64 0, i32 0)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.mddev*, %struct.mddev** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @raid10_size(%struct.mddev* %39, i64 %40, i32 0)
  store i64 %41, i64* %8, align 8
  %42 = load %struct.mddev*, %struct.mddev** %4, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.mddev*, %struct.mddev** %4, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %117

55:                                               ; preds = %46, %36
  %56 = load %struct.mddev*, %struct.mddev** %4, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.mddev*, %struct.mddev** %4, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @bitmap_resize(i64 %63, i64 %64, i32 0, i32 0)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %117

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.mddev*, %struct.mddev** %4, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @md_set_array_sectors(%struct.mddev* %72, i64 %73)
  %75 = load %struct.mddev*, %struct.mddev** %4, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mddev*, %struct.mddev** %4, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @set_capacity(i32 %77, i64 %80)
  %82 = load %struct.mddev*, %struct.mddev** %4, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @revalidate_disk(i32 %84)
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.mddev*, %struct.mddev** %4, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %71
  %92 = load %struct.mddev*, %struct.mddev** %4, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.mddev*, %struct.mddev** %4, align 8
  %100 = getelementptr inbounds %struct.mddev, %struct.mddev* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %102 = load %struct.mddev*, %struct.mddev** %4, align 8
  %103 = getelementptr inbounds %struct.mddev, %struct.mddev* %102, i32 0, i32 5
  %104 = call i32 @set_bit(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %97, %91, %71
  %106 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @calc_sectors(%struct.r10conf* %106, i64 %107)
  %109 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %110 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.mddev*, %struct.mddev** %4, align 8
  %113 = getelementptr inbounds %struct.mddev, %struct.mddev* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.mddev*, %struct.mddev** %4, align 8
  %116 = getelementptr inbounds %struct.mddev, %struct.mddev* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %105, %68, %52, %33, %18
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @raid10_size(%struct.mddev*, i64, i32) #1

declare dso_local i32 @bitmap_resize(i64, i64, i32, i32) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i64) #1

declare dso_local i32 @set_capacity(i32, i64) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @calc_sectors(%struct.r10conf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
