; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_array_size_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_array_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.mddev*, i32, i32)* }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @array_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @array_size_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strncmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.mddev*, %struct.mddev** %5, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.mddev*, %struct.mddev** %5, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (%struct.mddev*, i32, i32)*, i64 (%struct.mddev*, i32, i32)** %21, align 8
  %23 = load %struct.mddev*, %struct.mddev** %5, align 8
  %24 = call i64 %22(%struct.mddev* %23, i32 0, i32 0)
  store i64 %24, i64* %8, align 8
  br label %29

25:                                               ; preds = %12
  %26 = load %struct.mddev*, %struct.mddev** %5, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %25, %17
  %30 = load %struct.mddev*, %struct.mddev** %5, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  br label %60

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strict_blocks_to_sectors(i8* %33, i64* %8)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %4, align 8
  br label %82

39:                                               ; preds = %32
  %40 = load %struct.mddev*, %struct.mddev** %5, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.mddev*, %struct.mddev** %5, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64 (%struct.mddev*, i32, i32)*, i64 (%struct.mddev*, i32, i32)** %48, align 8
  %50 = load %struct.mddev*, %struct.mddev** %5, align 8
  %51 = call i64 %49(%struct.mddev* %50, i32 0, i32 0)
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i64, i64* @E2BIG, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %4, align 8
  br label %82

57:                                               ; preds = %44, %39
  %58 = load %struct.mddev*, %struct.mddev** %5, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %29
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.mddev*, %struct.mddev** %5, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mddev*, %struct.mddev** %5, align 8
  %65 = getelementptr inbounds %struct.mddev, %struct.mddev* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load %struct.mddev*, %struct.mddev** %5, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mddev*, %struct.mddev** %5, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @set_capacity(i32 %71, i64 %74)
  %76 = load %struct.mddev*, %struct.mddev** %5, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @revalidate_disk(i32 %78)
  br label %80

80:                                               ; preds = %68, %60
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %54, %36
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strict_blocks_to_sectors(i8*, i64*) #1

declare dso_local i32 @set_capacity(i32, i64) #1

declare dso_local i32 @revalidate_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
