; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_store_tabletXtilt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_store_tabletXtilt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.aiptek = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@AIPTEK_TILT_DISABLE = common dso_local global i64 0, align 8
@AIPTEK_TILT_MIN = common dso_local global i64 0, align 8
@AIPTEK_TILT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_tabletXtilt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_tabletXtilt(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.aiptek*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.aiptek* @dev_get_drvdata(%struct.device* %13)
  store %struct.aiptek* %14, %struct.aiptek** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strict_strtol(i8* %15, i32 10, i64* %11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 1
  br label %31

29:                                               ; preds = %18
  %30 = load i64, i64* %9, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i64 [ %28, %26 ], [ %30, %29 ]
  store i64 %32, i64* %12, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %63

40:                                               ; preds = %31
  %41 = load i64, i64* @AIPTEK_TILT_DISABLE, align 8
  %42 = load %struct.aiptek*, %struct.aiptek** %10, align 8
  %43 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %61

45:                                               ; preds = %4
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @AIPTEK_TILT_MIN, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @AIPTEK_TILT_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %63

56:                                               ; preds = %49
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.aiptek*, %struct.aiptek** %10, align 8
  %59 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %40
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %53, %37
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local %struct.aiptek* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
