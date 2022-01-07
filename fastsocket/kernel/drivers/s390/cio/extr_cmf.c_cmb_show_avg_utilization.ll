; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_cmb_show_avg_utilization.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_cmb_show_avg_utilization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cmbdata = type { i64, i64, i64, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"n/a\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%02ld.%01ld%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cmb_show_avg_utilization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmb_show_avg_utilization(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cmbdata, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @to_ccwdev(%struct.device* %13)
  %15 = call i32 @cmf_readall(i32 %14, %struct.cmbdata* %8)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %3
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %71

28:                                               ; preds = %20
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %71

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.cmbdata, %struct.cmbdata* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.cmbdata, %struct.cmbdata* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %36, %38
  %40 = getelementptr inbounds %struct.cmbdata, %struct.cmbdata* %8, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %39, %41
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %49, %34
  %44 = getelementptr inbounds %struct.cmbdata, %struct.cmbdata* %8, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = or i64 %45, %46
  %48 = icmp ult i64 -1, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = lshr i64 %50, 8
  store i64 %51, i64* %9, align 8
  %52 = getelementptr inbounds %struct.cmbdata, %struct.cmbdata* %8, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = lshr i64 %53, 8
  store i64 %54, i64* %52, align 8
  br label %43

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.cmbdata, %struct.cmbdata* %8, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = udiv i64 %57, 1000
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = udiv i64 %59, %60
  store i64 %61, i64* %11, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %11, align 8
  %64 = udiv i64 %63, 10
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = udiv i64 %66, 10
  %68 = mul i64 %67, 10
  %69 = sub i64 %65, %68
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %55, %31, %25
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @cmf_readall(i32, %struct.cmbdata*) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
