; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_yealink.c_set_icon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_yealink.c_set_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.yealink_dev = type { i32 }

@sysfs_rwsema = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@lcdMap = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64, i32)* @set_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_icon(%struct.device* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.yealink_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 @down_write(i32* @sysfs_rwsema)
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.yealink_dev* @dev_get_drvdata(%struct.device* %13)
  store %struct.yealink_dev* %14, %struct.yealink_dev** %10, align 8
  %15 = load %struct.yealink_dev*, %struct.yealink_dev** %10, align 8
  %16 = icmp eq %struct.yealink_dev* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = call i32 @up_write(i32* @sysfs_rwsema)
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %62

21:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lcdMap, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lcdMap, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 4
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 46
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %56

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lcdMap, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @strncmp(i8* %38, i32 %46, i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.yealink_dev*, %struct.yealink_dev** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @setChar(%struct.yealink_dev* %51, i32 %52, i32 %53)
  br label %59

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %22

59:                                               ; preds = %50, %22
  %60 = call i32 @up_write(i32* @sysfs_rwsema)
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %59, %17
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.yealink_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @setChar(%struct.yealink_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
