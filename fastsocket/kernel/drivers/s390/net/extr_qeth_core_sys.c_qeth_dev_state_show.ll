; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_state_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DOWN\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"HARDSETUP\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SOFTSETUP\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"UP (LAN ONLINE)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"UP (LAN OFFLINE)\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"RECOVER\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qeth_dev_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qeth_card*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %9)
  store %struct.qeth_card* %10, %struct.qeth_card** %8, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %12 = icmp ne %struct.qeth_card* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %43 [
    i32 132, label %20
    i32 131, label %23
    i32 129, label %26
    i32 128, label %29
    i32 130, label %40
  ]

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %16
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %16
  %30 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %16
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %16
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %40, %37, %34, %26, %23, %20, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
