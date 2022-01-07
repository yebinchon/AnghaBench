; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_create_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_create_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { %struct.TYPE_4__*, i32, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@raw3270_attr_group = common dso_local global i32 0, align 4
@class3270 = common dso_local global i32 0, align 4
@IBM_TTY3270_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tty%s\00", align 1
@IBM_FS3270_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"tub%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270*)* @raw3270_create_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3270_create_attributes(%struct.raw3270* %0) #0 {
  %2 = alloca %struct.raw3270*, align 8
  %3 = alloca i32, align 4
  store %struct.raw3270* %0, %struct.raw3270** %2, align 8
  %4 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %5 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = call i32 @sysfs_create_group(i32* %8, i32* @raw3270_attr_group)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %86

13:                                               ; preds = %1
  %14 = load i32, i32* @class3270, align 4
  %15 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %16 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* @IBM_TTY3270_MAJOR, align 4
  %20 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %21 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MKDEV(i32 %19, i32 %22)
  %24 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %25 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @dev_name(%struct.TYPE_5__* %27)
  %29 = call i8* @device_create(i32 %14, %struct.TYPE_5__* %18, i32 %23, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %31 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %33 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %13
  %38 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %39 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %3, align 4
  br label %79

42:                                               ; preds = %13
  %43 = load i32, i32* @class3270, align 4
  %44 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %45 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* @IBM_FS3270_MAJOR, align 4
  %49 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %50 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MKDEV(i32 %48, i32 %51)
  %53 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %54 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @dev_name(%struct.TYPE_5__* %56)
  %58 = call i8* @device_create(i32 %43, %struct.TYPE_5__* %47, i32 %52, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %60 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %62 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %42
  br label %86

67:                                               ; preds = %42
  %68 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %69 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PTR_ERR(i8* %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @class3270, align 4
  %73 = load i32, i32* @IBM_TTY3270_MAJOR, align 4
  %74 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %75 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @MKDEV(i32 %73, i32 %76)
  %78 = call i32 @device_destroy(i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %67, %37
  %80 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %81 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @sysfs_remove_group(i32* %84, i32* @raw3270_attr_group)
  br label %86

86:                                               ; preds = %79, %66, %12
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i8* @device_create(i32, %struct.TYPE_5__*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
