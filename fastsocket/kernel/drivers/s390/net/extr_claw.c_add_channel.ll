; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_add_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_add_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.claw_privbk = type { %struct.chbk* }
%struct.chbk = type { i32, i32*, i32, i32, %struct.ccw_device* }
%struct.ccw_dev_id = type { i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CLAW_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cl-%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32, %struct.claw_privbk*)* @add_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_channel(%struct.ccw_device* %0, i32 %1, %struct.claw_privbk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.claw_privbk*, align 8
  %8 = alloca %struct.chbk*, align 8
  %9 = alloca %struct.ccw_dev_id, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.claw_privbk* %2, %struct.claw_privbk** %7, align 8
  %10 = load i32, i32* @setup, align 4
  %11 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = call i8* @dev_name(i32* %12)
  %14 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %18 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %17, i32 0, i32 0
  %19 = load %struct.chbk*, %struct.chbk** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.chbk, %struct.chbk* %19, i64 %21
  %23 = getelementptr inbounds %struct.chbk, %struct.chbk* %22, i32 0, i32 0
  store i32 %16, i32* %23, align 8
  %24 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %25 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %24, i32 0, i32 0
  %26 = load %struct.chbk*, %struct.chbk** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.chbk, %struct.chbk* %26, i64 %28
  store %struct.chbk* %29, %struct.chbk** %8, align 8
  %30 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %31 = load %struct.chbk*, %struct.chbk** %8, align 8
  %32 = getelementptr inbounds %struct.chbk, %struct.chbk* %31, i32 0, i32 4
  store %struct.ccw_device* %30, %struct.ccw_device** %32, align 8
  %33 = load %struct.chbk*, %struct.chbk** %8, align 8
  %34 = getelementptr inbounds %struct.chbk, %struct.chbk* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CLAW_ID_SIZE, align 4
  %37 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = call i8* @dev_name(i32* %38)
  %40 = call i32 @snprintf(i32 %35, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %42 = call i32 @ccw_device_get_id(%struct.ccw_device* %41, %struct.ccw_dev_id* %9)
  %43 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.chbk*, %struct.chbk** %8, align 8
  %46 = getelementptr inbounds %struct.chbk, %struct.chbk* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kzalloc(i32 4, i32 %47)
  %49 = load %struct.chbk*, %struct.chbk** %8, align 8
  %50 = getelementptr inbounds %struct.chbk, %struct.chbk* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = icmp eq i32* %48, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @ccw_device_get_id(%struct.ccw_device*, %struct.ccw_dev_id*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
