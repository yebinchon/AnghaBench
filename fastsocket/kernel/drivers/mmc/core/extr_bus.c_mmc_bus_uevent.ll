; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_bus.c_mmc_bus_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_bus.c_mmc_bus_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.mmc_card = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"MMC\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SDIO\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SDcombo\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"MMC_TYPE=%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MMC_NAME=%s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"MODALIAS=mmc:block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @mmc_bus_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_bus_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.mmc_card* @dev_to_mmc_card(%struct.device* %9)
  store %struct.mmc_card* %10, %struct.mmc_card** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %12 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %18 [
    i32 131, label %14
    i32 130, label %15
    i32 129, label %16
    i32 128, label %17
  ]

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %19

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %19

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %19

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %19

18:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %33 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %34 = call i32 @mmc_card_name(%struct.mmc_card* %33)
  %35 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %42 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %38, %28
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.mmc_card* @dev_to_mmc_card(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #1

declare dso_local i32 @mmc_card_name(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
