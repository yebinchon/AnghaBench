; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_rate_policies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_rate_policies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_rate_policy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8*, i8*, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"acx rate policies\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RATE_MASK_UNSPECIFIED = common dso_local global i32 0, align 4
@ACX_RATE_RETRY_LIMIT = common dso_local global i8* null, align 8
@ACX_RATE_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Setting of rate policies failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_rate_policies(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.acx_rate_policy*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1251_debug(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acx_rate_policy* @kzalloc(i32 16, i32 %7)
  store %struct.acx_rate_policy* %8, %struct.acx_rate_policy** %3, align 8
  %9 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %3, align 8
  %10 = icmp ne %struct.acx_rate_policy* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %3, align 8
  %16 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @ACX_RATE_MASK_UNSPECIFIED, align 4
  %18 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %3, align 8
  %19 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %17, i32* %22, align 8
  %23 = load i8*, i8** @ACX_RATE_RETRY_LIMIT, align 8
  %24 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %3, align 8
  %25 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %23, i8** %28, align 8
  %29 = load i8*, i8** @ACX_RATE_RETRY_LIMIT, align 8
  %30 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %3, align 8
  %31 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %29, i8** %34, align 8
  %35 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %3, align 8
  %36 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %41 = load i32, i32* @ACX_RATE_POLICY, align 4
  %42 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %3, align 8
  %43 = call i32 @wl1251_cmd_configure(%struct.wl1251* %40, i32 %41, %struct.acx_rate_policy* %42, i32 16)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %14
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @wl1251_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %50

49:                                               ; preds = %14
  br label %50

50:                                               ; preds = %49, %46, %11
  %51 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %3, align 8
  %52 = call i32 @kfree(%struct.acx_rate_policy* %51)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_rate_policy* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_rate_policy*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_rate_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
