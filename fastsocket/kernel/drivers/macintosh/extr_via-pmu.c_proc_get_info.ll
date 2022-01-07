; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_proc_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_proc_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"PMU driver version     : %d\0A\00", align 1
@PMU_DRIVER_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PMU firmware version   : %02x\0A\00", align 1
@pmu_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"AC Power               : %d\0A\00", align 1
@pmu_power_flags = common dso_local global i32 0, align 4
@PMU_PWR_AC_PRESENT = common dso_local global i32 0, align 4
@pmu_battery_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Battery count          : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_info(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = load i32, i32* @PMU_DRIVER_VERSION, align 4
  %17 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** %13, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* @pmu_version, align 4
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %13, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* @pmu_power_flags, align 4
  %29 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @pmu_battery_count, align 4
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %32, %6
  %36 = phi i1 [ true, %6 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %13, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* @pmu_battery_count, align 4
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %13, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
