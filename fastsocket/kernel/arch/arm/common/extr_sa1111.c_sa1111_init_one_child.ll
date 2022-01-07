; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_init_one_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_init_one_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111 = type { %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.resource = type { i32 }
%struct.sa1111_dev_info = type { i32, i32, i64, i32 }
%struct.sa1111_dev = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i32*, i32, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%4.4lx\00", align 1
@sa1111_bus_type = common dso_local global i32 0, align 4
@sa1111_dev_release = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"SA1111: failed to allocate resource for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa1111*, %struct.resource*, %struct.sa1111_dev_info*)* @sa1111_init_one_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1111_init_one_child(%struct.sa1111* %0, %struct.resource* %1, %struct.sa1111_dev_info* %2) #0 {
  %4 = alloca %struct.sa1111*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.sa1111_dev_info*, align 8
  %7 = alloca %struct.sa1111_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.sa1111* %0, %struct.sa1111** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store %struct.sa1111_dev_info* %2, %struct.sa1111_dev_info** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sa1111_dev* @kzalloc(i32 88, i32 %9)
  store %struct.sa1111_dev* %10, %struct.sa1111_dev** %7, align 8
  %11 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %12 = icmp ne %struct.sa1111_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %128

16:                                               ; preds = %3
  %17 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %18 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %17, i32 0, i32 1
  %19 = load %struct.sa1111_dev_info*, %struct.sa1111_dev_info** %6, align 8
  %20 = getelementptr inbounds %struct.sa1111_dev_info, %struct.sa1111_dev_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_set_name(%struct.TYPE_12__* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.sa1111_dev_info*, %struct.sa1111_dev_info** %6, align 8
  %24 = getelementptr inbounds %struct.sa1111_dev_info, %struct.sa1111_dev_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %27 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sa1111*, %struct.sa1111** %4, align 8
  %29 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %32 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %35 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store i32* @sa1111_bus_type, i32** %36, align 8
  %37 = load i32, i32* @sa1111_dev_release, align 4
  %38 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %39 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.sa1111*, %struct.sa1111** %4, align 8
  %42 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %47 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load %struct.sa1111*, %struct.sa1111** %4, align 8
  %50 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sa1111_dev_info*, %struct.sa1111_dev_info** %6, align 8
  %53 = getelementptr inbounds %struct.sa1111_dev_info, %struct.sa1111_dev_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %57 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %60 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 511
  %64 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %65 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  store i64 %63, i64* %66, align 8
  %67 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %68 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %67, i32 0, i32 1
  %69 = call i32 @dev_name(%struct.TYPE_12__* %68)
  %70 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %71 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %75 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.sa1111*, %struct.sa1111** %4, align 8
  %78 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sa1111_dev_info*, %struct.sa1111_dev_info** %6, align 8
  %81 = getelementptr inbounds %struct.sa1111_dev_info, %struct.sa1111_dev_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %85 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %84, i32 0, i32 5
  store i64 %83, i64* %85, align 8
  %86 = load %struct.sa1111_dev_info*, %struct.sa1111_dev_info** %6, align 8
  %87 = getelementptr inbounds %struct.sa1111_dev_info, %struct.sa1111_dev_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %90 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %92 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sa1111_dev_info*, %struct.sa1111_dev_info** %6, align 8
  %95 = getelementptr inbounds %struct.sa1111_dev_info, %struct.sa1111_dev_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memmove(i32 %93, i32 %96, i32 4)
  %98 = load %struct.resource*, %struct.resource** %5, align 8
  %99 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %100 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %99, i32 0, i32 2
  %101 = call i32 @request_resource(%struct.resource* %98, %struct.TYPE_11__* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %16
  %105 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %106 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %111 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %110, i32 0, i32 1
  %112 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_set_name(%struct.TYPE_12__* %111, i8* null)
  %113 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %114 = call i32 @kfree(%struct.sa1111_dev* %113)
  br label %128

115:                                              ; preds = %16
  %116 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %117 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %116, i32 0, i32 1
  %118 = call i32 @device_register(%struct.TYPE_12__* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %123 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %122, i32 0, i32 2
  %124 = call i32 @release_resource(%struct.TYPE_11__* %123)
  %125 = load %struct.sa1111_dev*, %struct.sa1111_dev** %7, align 8
  %126 = call i32 @kfree(%struct.sa1111_dev* %125)
  br label %128

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %121, %104, %13
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local %struct.sa1111_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @request_resource(%struct.resource*, %struct.TYPE_11__*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @kfree(%struct.sa1111_dev*) #1

declare dso_local i32 @device_register(%struct.TYPE_12__*) #1

declare dso_local i32 @release_resource(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
