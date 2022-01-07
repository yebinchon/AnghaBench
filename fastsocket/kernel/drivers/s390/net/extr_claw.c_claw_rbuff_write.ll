; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_rbuff_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_rbuff_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.claw_privbk = type { %struct.claw_env* }
%struct.claw_env = type { i32, i64 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@setup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Rbufset\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"RB=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @claw_rbuff_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @claw_rbuff_write(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.claw_privbk*, align 8
  %11 = alloca %struct.claw_env*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.claw_privbk* @dev_get_drvdata(%struct.device* %14)
  store %struct.claw_privbk* %15, %struct.claw_privbk** %10, align 8
  %16 = load %struct.claw_privbk*, %struct.claw_privbk** %10, align 8
  %17 = icmp ne %struct.claw_privbk* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %55

21:                                               ; preds = %4
  %22 = load %struct.claw_privbk*, %struct.claw_privbk** %10, align 8
  %23 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %22, i32 0, i32 0
  %24 = load %struct.claw_env*, %struct.claw_env** %23, align 8
  store %struct.claw_env* %24, %struct.claw_env** %11, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  %27 = load %struct.claw_env*, %struct.claw_env** %11, align 8
  %28 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 64, i32* %13, align 4
  br label %33

32:                                               ; preds = %21
  store i32 512, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %33
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %55

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.claw_env*, %struct.claw_env** %11, align 8
  %46 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @setup, align 4
  %48 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @setup, align 4
  %50 = load %struct.claw_env*, %struct.claw_env** %11, align 8
  %51 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %43, %40, %18
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.claw_privbk* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
