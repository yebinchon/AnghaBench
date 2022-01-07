; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_hname_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_hname_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.claw_privbk = type { %struct.claw_env* }
%struct.claw_env = type { i32* }

@ENODEV = common dso_local global i64 0, align 8
@MAX_NAME_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HstnSet\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @claw_hname_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @claw_hname_write(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.claw_privbk*, align 8
  %11 = alloca %struct.claw_env*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.claw_privbk* @dev_get_drvdata(%struct.device* %12)
  store %struct.claw_privbk* %13, %struct.claw_privbk** %10, align 8
  %14 = load %struct.claw_privbk*, %struct.claw_privbk** %10, align 8
  %15 = icmp ne %struct.claw_privbk* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @ENODEV, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %63

19:                                               ; preds = %4
  %20 = load %struct.claw_privbk*, %struct.claw_privbk** %10, align 8
  %21 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %20, i32 0, i32 0
  %22 = load %struct.claw_env*, %struct.claw_env** %21, align 8
  store %struct.claw_env* %22, %struct.claw_env** %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @MAX_NAME_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %63

31:                                               ; preds = %19
  %32 = load %struct.claw_env*, %struct.claw_env** %11, align 8
  %33 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @MAX_NAME_LEN, align 4
  %36 = call i32 @memset(i32* %34, i32 32, i32 %35)
  %37 = load %struct.claw_env*, %struct.claw_env** %11, align 8
  %38 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @strncpy(i32* %39, i8* %40, i64 %41)
  %43 = load %struct.claw_env*, %struct.claw_env** %11, align 8
  %44 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 32, i32* %48, align 4
  %49 = load %struct.claw_env*, %struct.claw_env** %11, align 8
  %50 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @MAX_NAME_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @setup, align 4
  %56 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @setup, align 4
  %58 = load %struct.claw_env*, %struct.claw_env** %11, align 8
  %59 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %31, %28, %16
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local %struct.claw_privbk* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i64) #1

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
