; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hidraw.c_hidraw_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hidraw.c_hidraw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidraw = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*, i32)* }
%struct.inode = type { i32 }
%struct.file = type { %struct.hidraw_list* }
%struct.hidraw_list = type { %struct.hidraw_list*, i64, i32 }

@minors_lock = common dso_local global i32 0, align 4
@hidraw_table = common dso_local global %struct.hidraw** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hidraw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidraw_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidraw*, align 8
  %7 = alloca %struct.hidraw_list*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.hidraw_list*, %struct.hidraw_list** %12, align 8
  store %struct.hidraw_list* %13, %struct.hidraw_list** %7, align 8
  %14 = call i32 @mutex_lock(i32* @minors_lock)
  %15 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %15, i64 %17
  %19 = load %struct.hidraw*, %struct.hidraw** %18, align 8
  %20 = icmp ne %struct.hidraw* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %88

24:                                               ; preds = %2
  %25 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %26 = getelementptr inbounds %struct.hidraw_list, %struct.hidraw_list* %25, i32 0, i32 2
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %28, i64 %30
  %32 = load %struct.hidraw*, %struct.hidraw** %31, align 8
  store %struct.hidraw* %32, %struct.hidraw** %6, align 8
  %33 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %34 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %85, label %38

38:                                               ; preds = %24
  %39 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %40 = getelementptr inbounds %struct.hidraw_list, %struct.hidraw_list* %39, i32 0, i32 0
  %41 = load %struct.hidraw_list*, %struct.hidraw_list** %40, align 8
  %42 = getelementptr inbounds %struct.hidraw_list, %struct.hidraw_list* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %38
  %46 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %47 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_5__*, i32)* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %56 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %60, align 8
  %62 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %63 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* @PM_HINT_NORMAL, align 4
  %66 = call i32 %61(%struct.TYPE_5__* %64, i32 %65)
  br label %67

67:                                               ; preds = %54, %45
  %68 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %69 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %73, align 8
  %75 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %76 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = call i32 %74(%struct.TYPE_5__* %77)
  br label %84

79:                                               ; preds = %38
  %80 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %81 = getelementptr inbounds %struct.hidraw_list, %struct.hidraw_list* %80, i32 0, i32 0
  %82 = load %struct.hidraw_list*, %struct.hidraw_list** %81, align 8
  %83 = call i32 @kfree(%struct.hidraw_list* %82)
  br label %84

84:                                               ; preds = %79, %67
  br label %85

85:                                               ; preds = %84, %24
  %86 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %87 = call i32 @kfree(%struct.hidraw_list* %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %21
  %89 = call i32 @mutex_unlock(i32* @minors_lock)
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.hidraw_list*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
