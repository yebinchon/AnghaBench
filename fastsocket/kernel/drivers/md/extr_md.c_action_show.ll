; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_action_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_action_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"reshape\00", align 1
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"repair\00", align 1
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*)* @action_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_show(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %70

12:                                               ; preds = %2
  %13 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = load %struct.mddev*, %struct.mddev** %3, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %25 = load %struct.mddev*, %struct.mddev** %3, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %23, %12
  %30 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %31 = load %struct.mddev*, %struct.mddev** %3, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %68

36:                                               ; preds = %29
  %37 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %44 = load %struct.mddev*, %struct.mddev** %3, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 0
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %58

49:                                               ; preds = %42
  %50 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %51 = load %struct.mddev*, %struct.mddev** %3, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %57

56:                                               ; preds = %49
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %48
  br label %67

59:                                               ; preds = %36
  %60 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %61 = load %struct.mddev*, %struct.mddev** %3, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 0
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %58
  br label %68

68:                                               ; preds = %67, %35
  br label %69

69:                                               ; preds = %68, %23, %18
  br label %70

70:                                               ; preds = %69, %11
  %71 = load i8*, i8** %4, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  ret i32 %73
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
