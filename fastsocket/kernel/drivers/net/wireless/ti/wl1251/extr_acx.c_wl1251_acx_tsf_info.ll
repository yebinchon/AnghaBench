; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_tsf_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_tsf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_tsf_info = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_TSF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ACX_FW_REV interrogate failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_tsf_info(%struct.wl1251* %0, i32* %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.acx_tsf_info*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acx_tsf_info* @kzalloc(i32 16, i32 %7)
  store %struct.acx_tsf_info* %8, %struct.acx_tsf_info** %5, align 8
  %9 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %5, align 8
  %10 = icmp ne %struct.acx_tsf_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %16 = load i32, i32* @ACX_TSF_INFO, align 4
  %17 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %5, align 8
  %18 = call i32 @wl1251_cmd_interrogate(%struct.wl1251* %15, i32 %16, %struct.acx_tsf_info* %17, i32 16)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @wl1251_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %5, align 8
  %25 = getelementptr inbounds %struct.acx_tsf_info, %struct.acx_tsf_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %5, align 8
  %28 = getelementptr inbounds %struct.acx_tsf_info, %struct.acx_tsf_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 32
  %32 = or i32 %26, %31
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %21, %11
  %35 = load %struct.acx_tsf_info*, %struct.acx_tsf_info** %5, align 8
  %36 = call i32 @kfree(%struct.acx_tsf_info* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.acx_tsf_info* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_interrogate(%struct.wl1251*, i32, %struct.acx_tsf_info*, i32) #1

declare dso_local i32 @wl1251_warning(i8*) #1

declare dso_local i32 @kfree(%struct.acx_tsf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
