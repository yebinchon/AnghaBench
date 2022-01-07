; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_setup_one_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_setup_one_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, i32, i8*, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Device is already open\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.line*, i32, i8*, i32, i8**)* @setup_one_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_one_line(%struct.line* %0, i32 %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.line*, align 8
  %12 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %13 = load %struct.line*, %struct.line** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.line, %struct.line* %13, i64 %15
  store %struct.line* %16, %struct.line** %11, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.line*, %struct.line** %11, align 8
  %20 = getelementptr inbounds %struct.line, %struct.line* %19, i32 0, i32 3
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.line*, %struct.line** %11, align 8
  %23 = getelementptr inbounds %struct.line, %struct.line* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i8**, i8*** %10, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  br label %52

28:                                               ; preds = %5
  %29 = load %struct.line*, %struct.line** %11, align 8
  %30 = getelementptr inbounds %struct.line, %struct.line* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.line*, %struct.line** %11, align 8
  %37 = getelementptr inbounds %struct.line, %struct.line* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load %struct.line*, %struct.line** %11, align 8
  %43 = getelementptr inbounds %struct.line, %struct.line* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %50

44:                                               ; preds = %34
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.line*, %struct.line** %11, align 8
  %47 = getelementptr inbounds %struct.line, %struct.line* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.line*, %struct.line** %11, align 8
  %49 = getelementptr inbounds %struct.line, %struct.line* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %41
  br label %51

51:                                               ; preds = %50, %28
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.line*, %struct.line** %11, align 8
  %54 = getelementptr inbounds %struct.line, %struct.line* %53, i32 0, i32 3
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load i32, i32* %12, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
