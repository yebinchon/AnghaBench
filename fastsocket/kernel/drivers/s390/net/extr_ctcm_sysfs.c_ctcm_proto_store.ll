; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_sysfs.c_ctcm_proto_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_sysfs.c_ctcm_proto_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ctcm_priv = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@CTCM_PROTO_S390 = common dso_local global i32 0, align 4
@CTCM_PROTO_LINUX = common dso_local global i32 0, align 4
@CTCM_PROTO_MPC = common dso_local global i32 0, align 4
@CTCM_PROTO_OS390 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ctcm_proto_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctcm_proto_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ctcm_priv*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.ctcm_priv* @dev_get_drvdata(%struct.device* %12)
  store %struct.ctcm_priv* %13, %struct.ctcm_priv** %11, align 8
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %11, align 8
  %15 = icmp ne %struct.ctcm_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @ENODEV, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %49

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @CTCM_PROTO_S390, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @CTCM_PROTO_LINUX, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CTCM_PROTO_MPC, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @CTCM_PROTO_OS390, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %49

40:                                               ; preds = %33, %29, %25, %19
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ctcm_priv*, %struct.ctcm_priv** %11, align 8
  %43 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SETUP, align 4
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @CTCM_DBF_DEV(i32 %44, %struct.device* %45, i8* %46)
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %40, %37, %16
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @CTCM_DBF_DEV(i32, %struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
