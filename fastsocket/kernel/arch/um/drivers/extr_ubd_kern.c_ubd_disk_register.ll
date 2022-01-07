; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_disk_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_disk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.gendisk = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_7__*, i32, i32* }

@UBD_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ubd_blops = common dso_local global i32 0, align 4
@UBD_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ubd%c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ubd_fake%d\00", align 1
@ubd_devs = common dso_local global %struct.TYPE_5__* null, align 8
@DRIVER_NAME = common dso_local global i32 0, align 4
@ubd_device_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.gendisk**)* @ubd_disk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubd_disk_register(i32 %0, i32 %1, i32 %2, %struct.gendisk** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gendisk**, align 8
  %10 = alloca %struct.gendisk*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gendisk** %3, %struct.gendisk*** %9, align 8
  %11 = load i32, i32* @UBD_SHIFT, align 4
  %12 = shl i32 1, %11
  %13 = call %struct.gendisk* @alloc_disk(i32 %12)
  store %struct.gendisk* %13, %struct.gendisk** %10, align 8
  %14 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %15 = icmp eq %struct.gendisk* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %121

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @UBD_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %27 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %29 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %28, i32 0, i32 6
  store i32* @ubd_blops, i32** %29, align 8
  %30 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %31, 512
  %33 = call i32 @set_capacity(%struct.gendisk* %30, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @UBD_MAJOR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %19
  %38 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 97, %41
  %43 = call i32 @sprintf(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %50

44:                                               ; preds = %19
  %45 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %46 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @sprintf(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @UBD_MAJOR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 4
  %62 = load i32, i32* @DRIVER_NAME, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i32 %62, i32* %68, align 4
  %69 = load i32, i32* @ubd_device_release, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %82, %struct.TYPE_5__* %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = call i32 @platform_device_register(%struct.TYPE_6__* %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %101 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %100, i32 0, i32 4
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %101, align 8
  br label %102

102:                                              ; preds = %54, %50
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %108 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %107, i32 0, i32 3
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %108, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ubd_devs, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %116 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %118 = call i32 @add_disk(%struct.gendisk* %117)
  %119 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %120 = load %struct.gendisk**, %struct.gendisk*** %9, align 8
  store %struct.gendisk* %119, %struct.gendisk** %120, align 8
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %102, %16
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.TYPE_5__*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
