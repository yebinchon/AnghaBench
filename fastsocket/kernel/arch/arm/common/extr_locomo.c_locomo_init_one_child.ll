; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_locomo.c_locomo_init_one_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_locomo.c_locomo_init_one_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locomo = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.locomo_dev_info = type { i32, i32, i64, i32, i32 }
%struct.locomo_dev = type { %struct.TYPE_5__, i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_4__*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@locomo_bus_type = common dso_local global i32 0, align 4
@locomo_dev_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.locomo*, %struct.locomo_dev_info*)* @locomo_init_one_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locomo_init_one_child(%struct.locomo* %0, %struct.locomo_dev_info* %1) #0 {
  %3 = alloca %struct.locomo*, align 8
  %4 = alloca %struct.locomo_dev_info*, align 8
  %5 = alloca %struct.locomo_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.locomo* %0, %struct.locomo** %3, align 8
  store %struct.locomo_dev_info* %1, %struct.locomo_dev_info** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.locomo_dev* @kzalloc(i32 56, i32 %7)
  store %struct.locomo_dev* %8, %struct.locomo_dev** %5, align 8
  %9 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %10 = icmp ne %struct.locomo_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %104

14:                                               ; preds = %2
  %15 = load %struct.locomo*, %struct.locomo** %3, align 8
  %16 = getelementptr inbounds %struct.locomo, %struct.locomo* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.locomo*, %struct.locomo** %3, align 8
  %23 = getelementptr inbounds %struct.locomo, %struct.locomo* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %29 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %31 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %30, i32 0, i32 5
  %32 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %33 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  store i32* %31, i32** %34, align 8
  br label %35

35:                                               ; preds = %21, %14
  %36 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %37 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %36, i32 0, i32 0
  %38 = load %struct.locomo_dev_info*, %struct.locomo_dev_info** %4, align 8
  %39 = getelementptr inbounds %struct.locomo_dev_info, %struct.locomo_dev_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_set_name(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.locomo_dev_info*, %struct.locomo_dev_info** %4, align 8
  %43 = getelementptr inbounds %struct.locomo_dev_info, %struct.locomo_dev_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %46 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.locomo*, %struct.locomo** %3, align 8
  %48 = getelementptr inbounds %struct.locomo, %struct.locomo* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %51 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %52, align 8
  %53 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %54 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32* @locomo_bus_type, i32** %55, align 8
  %56 = load i32, i32* @locomo_dev_release, align 4
  %57 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %58 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.locomo*, %struct.locomo** %3, align 8
  %61 = getelementptr inbounds %struct.locomo, %struct.locomo* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %66 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.locomo_dev_info*, %struct.locomo_dev_info** %4, align 8
  %69 = getelementptr inbounds %struct.locomo_dev_info, %struct.locomo_dev_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %35
  %73 = load %struct.locomo*, %struct.locomo** %3, align 8
  %74 = getelementptr inbounds %struct.locomo, %struct.locomo* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.locomo_dev_info*, %struct.locomo_dev_info** %4, align 8
  %77 = getelementptr inbounds %struct.locomo_dev_info, %struct.locomo_dev_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %81 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  br label %85

82:                                               ; preds = %35
  %83 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %84 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.locomo_dev_info*, %struct.locomo_dev_info** %4, align 8
  %87 = getelementptr inbounds %struct.locomo_dev_info, %struct.locomo_dev_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %90 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %92 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.locomo_dev_info*, %struct.locomo_dev_info** %4, align 8
  %95 = getelementptr inbounds %struct.locomo_dev_info, %struct.locomo_dev_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memmove(i32 %93, i32 %96, i32 4)
  %98 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %99 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %98, i32 0, i32 0
  %100 = call i32 @device_register(%struct.TYPE_5__* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103, %11
  %105 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %106 = call i32 @kfree(%struct.locomo_dev* %105)
  br label %107

107:                                              ; preds = %104, %85
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.locomo_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.locomo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
