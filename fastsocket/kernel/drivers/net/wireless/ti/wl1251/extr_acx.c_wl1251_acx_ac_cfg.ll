; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_ac_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_ac_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_acx_ac_cfg = type { i8*, i8*, i8*, i8*, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"acx ac cfg %d cw_ming %d cw_max %d aifs %d txop %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_AC_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"acx ac cfg failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_ac_cfg(%struct.wl1251* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.wl1251*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wl1251_acx_ac_cfg*, align 8
  %14 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @DEBUG_ACX, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = call i32 @wl1251_debug(i32 %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i8* %18, i8* %19, i8* %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.wl1251_acx_ac_cfg* @kzalloc(i32 40, i32 %22)
  store %struct.wl1251_acx_ac_cfg* %23, %struct.wl1251_acx_ac_cfg** %13, align 8
  %24 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %13, align 8
  %25 = icmp ne %struct.wl1251_acx_ac_cfg* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %14, align 4
  br label %55

29:                                               ; preds = %6
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %13, align 8
  %32 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %13, align 8
  %35 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %13, align 8
  %38 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %13, align 8
  %41 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %13, align 8
  %44 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %46 = load i32, i32* @ACX_AC_CFG, align 4
  %47 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %13, align 8
  %48 = call i32 @wl1251_cmd_configure(%struct.wl1251* %45, i32 %46, %struct.wl1251_acx_ac_cfg* %47, i32 40)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @wl1251_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %55

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %51, %26
  %56 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %13, align 8
  %57 = call i32 @kfree(%struct.wl1251_acx_ac_cfg* %56)
  %58 = load i32, i32* %14, align 4
  ret i32 %58
}

declare dso_local i32 @wl1251_debug(i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.wl1251_acx_ac_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.wl1251_acx_ac_cfg*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_acx_ac_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
