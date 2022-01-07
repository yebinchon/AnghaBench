; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sysfs.c_ixgbe_add_hwmon_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sysfs.c_ixgbe_add_hwmon_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, %struct.hwmon_attr* }
%struct.hwmon_attr = type { %struct.TYPE_14__, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ixgbe_hwmon_show_location = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"temp%u_label\00", align 1
@ixgbe_hwmon_show_temp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"temp%u_input\00", align 1
@ixgbe_hwmon_show_cautionthresh = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"temp%u_max\00", align 1
@ixgbe_hwmon_show_maxopthresh = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"temp%u_crit\00", align 1
@EPERM = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32, i32)* @ixgbe_add_hwmon_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hwmon_attr*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.hwmon_attr*, %struct.hwmon_attr** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %18, i64 %20
  store %struct.hwmon_attr* %21, %struct.hwmon_attr** %10, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %63 [
    i32 130, label %23
    i32 128, label %33
    i32 131, label %43
    i32 129, label %53
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* @ixgbe_hwmon_show_location, align 4
  %25 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %26 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %29 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %67

33:                                               ; preds = %3
  %34 = load i32, i32* @ixgbe_hwmon_show_temp, align 4
  %35 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %36 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %39 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @snprintf(i32 %40, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %67

43:                                               ; preds = %3
  %44 = load i32, i32* @ixgbe_hwmon_show_cautionthresh, align 4
  %45 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %46 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %49 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @snprintf(i32 %50, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %67

53:                                               ; preds = %3
  %54 = load i32, i32* @ixgbe_hwmon_show_maxopthresh, align 4
  %55 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %56 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %59 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @snprintf(i32 %60, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %67

63:                                               ; preds = %3
  %64 = load i32, i32* @EPERM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %115

67:                                               ; preds = %53, %43, %33, %23
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %78 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %77, i32 0, i32 3
  store i32* %76, i32** %78, align 8
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %79, i32 0, i32 2
  %81 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %82 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %81, i32 0, i32 2
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %84 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* @S_IRUGO, align 4
  %87 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %88 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %92 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %95 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %99 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %103 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %102, i32 0, i32 0
  %104 = call i32 @device_create_file(i32* %101, %struct.TYPE_14__* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %67
  %108 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %109 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %67
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %63
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @device_create_file(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
