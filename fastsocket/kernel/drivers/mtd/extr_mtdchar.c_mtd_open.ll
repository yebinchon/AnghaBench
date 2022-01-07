; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdchar.c_mtd_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdchar.c_mtd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.mtd_file_info*, %struct.TYPE_2__* }
%struct.mtd_file_info = type { %struct.mtd_info* }
%struct.mtd_info = type { i64, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@MTD_DEBUG_LEVEL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MTD_open\0A\00", align 1
@MAX_MTD_DEVICES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MTD_ABSENT = common dso_local global i64 0, align 8
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mtd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.mtd_file_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @iminor(%struct.inode* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @MTD_DEBUG_LEVEL0, align 4
  %16 = call i32 @DEBUG(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MAX_MTD_DEVICES, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %110

23:                                               ; preds = %2
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FMODE_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EACCES, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %110

37:                                               ; preds = %30, %23
  %38 = call i32 (...) @lock_kernel()
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.mtd_info* @get_mtd_device(i32* null, i32 %39)
  store %struct.mtd_info* %40, %struct.mtd_info** %9, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %42 = call i64 @IS_ERR(%struct.mtd_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %46 = call i32 @PTR_ERR(%struct.mtd_info* %45)
  store i32 %46, i32* %8, align 4
  br label %107

47:                                               ; preds = %37
  %48 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MTD_ABSENT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %55 = call i32 @put_mtd_device(%struct.mtd_info* %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %107

58:                                               ; preds = %47
  %59 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.file*, %struct.file** %5, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FMODE_WRITE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MTD_WRITEABLE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %87 = call i32 @put_mtd_device(%struct.mtd_info* %86)
  %88 = load i32, i32* @EACCES, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %107

90:                                               ; preds = %78, %71
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.mtd_file_info* @kzalloc(i32 8, i32 %91)
  store %struct.mtd_file_info* %92, %struct.mtd_file_info** %10, align 8
  %93 = load %struct.mtd_file_info*, %struct.mtd_file_info** %10, align 8
  %94 = icmp ne %struct.mtd_file_info* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %97 = call i32 @put_mtd_device(%struct.mtd_info* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %107

100:                                              ; preds = %90
  %101 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %102 = load %struct.mtd_file_info*, %struct.mtd_file_info** %10, align 8
  %103 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %102, i32 0, i32 0
  store %struct.mtd_info* %101, %struct.mtd_info** %103, align 8
  %104 = load %struct.mtd_file_info*, %struct.mtd_file_info** %10, align 8
  %105 = load %struct.file*, %struct.file** %5, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 1
  store %struct.mtd_file_info* %104, %struct.mtd_file_info** %106, align 8
  br label %107

107:                                              ; preds = %100, %95, %85, %53, %44
  %108 = call i32 (...) @unlock_kernel()
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %34, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.mtd_info* @get_mtd_device(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mtd_info*) #1

declare dso_local i32 @PTR_ERR(%struct.mtd_info*) #1

declare dso_local i32 @put_mtd_device(%struct.mtd_info*) #1

declare dso_local %struct.mtd_file_info* @kzalloc(i32, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
