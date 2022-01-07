; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoeblk.c_aoedisk_show_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoeblk.c_aoedisk_show_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gendisk = type { %struct.aoedev* }
%struct.aoedev = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@DEVFL_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@DEVFL_KICKME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c",kickme\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c",closewait\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aoedisk_show_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoedisk_show_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.aoedev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.gendisk* @dev_to_disk(%struct.device* %9)
  store %struct.gendisk* %10, %struct.gendisk** %7, align 8
  %11 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 0
  %13 = load %struct.aoedev*, %struct.aoedev** %12, align 8
  store %struct.aoedev* %13, %struct.aoedev** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.aoedev*, %struct.aoedev** %8, align 8
  %17 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DEVFL_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.aoedev*, %struct.aoedev** %8, align 8
  %25 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DEVFL_KICKME, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %48

31:                                               ; preds = %3
  %32 = load %struct.aoedev*, %struct.aoedev** %8, align 8
  %33 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.aoedev*, %struct.aoedev** %8, align 8
  %38 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DEVFL_UP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi i1 [ false, %31 ], [ %43, %36 ]
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %48

48:                                               ; preds = %44, %30
  %49 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %30 ], [ %47, %44 ]
  %50 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %49)
  ret i32 %50
}

declare dso_local %struct.gendisk* @dev_to_disk(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
