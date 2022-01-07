; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hidraw.c_hidraw_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hidraw.c_hidraw_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidraw = type { i32, i32, %struct.hid_device*, i32, i32, i32 }
%struct.hid_device = type { %struct.hidraw*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@minors_lock = common dso_local global i32 0, align 4
@HIDRAW_MAX_DEVICES = common dso_local global i32 0, align 4
@hidraw_table = common dso_local global %struct.hidraw** null, align 8
@hidraw_class = common dso_local global i32 0, align 4
@hidraw_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"hidraw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidraw_connect(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidraw*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hidraw* @kzalloc(i32 32, i32 %7)
  store %struct.hidraw* %8, %struct.hidraw** %6, align 8
  %9 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %10 = icmp ne %struct.hidraw* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %95

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  %17 = call i32 @mutex_lock(i32* @minors_lock)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %36, %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @HIDRAW_MAX_DEVICES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %23, i64 %25
  %27 = load %struct.hidraw*, %struct.hidraw** %26, align 8
  %28 = icmp ne %struct.hidraw* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %32 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %32, i64 %34
  store %struct.hidraw* %31, %struct.hidraw** %35, align 8
  store i32 0, i32* %5, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %18

39:                                               ; preds = %30, %18
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call i32 @mutex_unlock(i32* @minors_lock)
  %44 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %45 = call i32 @kfree(%struct.hidraw* %44)
  br label %93

46:                                               ; preds = %39
  %47 = load i32, i32* @hidraw_class, align 4
  %48 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %49 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %48, i32 0, i32 1
  %50 = load i32, i32* @hidraw_major, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @MKDEV(i32 %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @device_create(i32 %47, i32* %49, i32 %52, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %56 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %58 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %46
  %63 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %63, i64 %65
  store %struct.hidraw* null, %struct.hidraw** %66, align 8
  %67 = call i32 @mutex_unlock(i32* @minors_lock)
  %68 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %69 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %73 = call i32 @kfree(%struct.hidraw* %72)
  br label %93

74:                                               ; preds = %46
  %75 = call i32 @mutex_unlock(i32* @minors_lock)
  %76 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %77 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %76, i32 0, i32 4
  %78 = call i32 @init_waitqueue_head(i32* %77)
  %79 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %80 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %79, i32 0, i32 3
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %83 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %84 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %83, i32 0, i32 2
  store %struct.hid_device* %82, %struct.hid_device** %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %87 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %89 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %91 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %92 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %91, i32 0, i32 0
  store %struct.hidraw* %90, %struct.hidraw** %92, align 8
  br label %93

93:                                               ; preds = %74, %62, %42
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %11
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.hidraw* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.hidraw*) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
