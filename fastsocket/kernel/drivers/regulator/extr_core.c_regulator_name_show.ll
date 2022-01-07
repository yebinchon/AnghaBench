; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_name_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_name_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.regulator_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @regulator_name_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_name_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.regulator_dev* @dev_get_drvdata(%struct.device* %9)
  store %struct.regulator_dev* %10, %struct.regulator_dev** %7, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %12 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  br label %43

28:                                               ; preds = %15, %3
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %30 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  br label %42

41:                                               ; preds = %28
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  ret i32 %46
}

declare dso_local %struct.regulator_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
