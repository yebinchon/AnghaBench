; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_parisc_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_parisc_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.parisc_device = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PARISC_NAME=%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"MODALIAS=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @parisc_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parisc_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.parisc_device*, align 8
  %7 = alloca [40 x i8], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.parisc_device* @to_parisc_device(%struct.device* %14)
  store %struct.parisc_device* %15, %struct.parisc_device** %6, align 8
  %16 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %17 = icmp ne %struct.parisc_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %13
  %22 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %23 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %24 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %34 = call i32 @make_modalias(%struct.device* %32, i8* %33)
  %35 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %37 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %28, %18, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.parisc_device* @to_parisc_device(%struct.device*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i8*) #1

declare dso_local i32 @make_modalias(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
