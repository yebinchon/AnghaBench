; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c___ccwgroup_create_symlinks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c___ccwgroup_create_symlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32, %struct.TYPE_6__**, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"group_device\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cdev%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @__ccwgroup_create_symlinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ccwgroup_create_symlinks(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %10 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %7
  %14 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %24 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @sysfs_create_link(i32* %22, i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %13
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %46, %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %37 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @sysfs_remove_link(i32* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %32

49:                                               ; preds = %32
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %128

51:                                               ; preds = %13
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %7

55:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %124, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %59 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %127

62:                                               ; preds = %56
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %67 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %70 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %79 = call i32 @sysfs_create_link(i32* %68, i32* %77, i8* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %62
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %97, %82
  %86 = load i32, i32* %5, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %93 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %96 = call i32 @sysfs_remove_link(i32* %94, i8* %95)
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %5, align 4
  br label %85

100:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %118, %100
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %104 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %109 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %110, i64 %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = call i32 @sysfs_remove_link(i32* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %101

121:                                              ; preds = %101
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %128

123:                                              ; preds = %62
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %56

127:                                              ; preds = %56
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %121, %49
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
