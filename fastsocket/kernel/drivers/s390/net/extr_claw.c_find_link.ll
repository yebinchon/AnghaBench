; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_find_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_find_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.claw_privbk* }
%struct.claw_privbk = type { %struct.claw_env* }
%struct.claw_env = type { i32, i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"findlink\00", align 1
@WS_APPL_NAME_PACKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WS_APPL_NAME_IP_NAME = common dso_local global i32 0, align 4
@HOST_APPL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i8*)* @find_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_link(%struct.net_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.claw_privbk*, align 8
  %8 = alloca %struct.claw_env*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @setup, align 4
  %11 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.claw_privbk*, %struct.claw_privbk** %13, align 8
  store %struct.claw_privbk* %14, %struct.claw_privbk** %7, align 8
  %15 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %16 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %15, i32 0, i32 0
  %17 = load %struct.claw_env*, %struct.claw_env** %16, align 8
  store %struct.claw_env* %17, %struct.claw_env** %8, align 8
  %18 = load %struct.claw_env*, %struct.claw_env** %8, align 8
  %19 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %47 [
    i32 129, label %21
    i32 130, label %34
    i32 128, label %34
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @WS_APPL_NAME_PACKED, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @memcmp(i32 %22, i8* %23, i32 8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @WS_APPL_NAME_PACKED, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @memcmp(i32 %27, i8* %28, i32 8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %26
  br label %62

34:                                               ; preds = %3, %3
  %35 = load i32, i32* @WS_APPL_NAME_IP_NAME, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @memcmp(i32 %35, i8* %36, i32 8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @WS_APPL_NAME_IP_NAME, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @memcmp(i32 %40, i8* %41, i32 8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %39
  br label %62

47:                                               ; preds = %3
  %48 = load i32, i32* @HOST_APPL_NAME, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @memcmp(i32 %48, i8* %49, i32 8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.claw_env*, %struct.claw_env** %8, align 8
  %54 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @memcmp(i32 %55, i8* %56, i32 8)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52, %47
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %52
  br label %62

62:                                               ; preds = %61, %46, %33
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
