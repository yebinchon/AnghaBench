; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_templates_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_templates_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }

@PARTIAL_VBM_MAX = common dso_local global i32 0, align 4
@CMD_PROBE_REQ = common dso_local global i32 0, align 4
@CMD_NULL_DATA = common dso_local global i32 0, align 4
@CMD_PS_POLL = common dso_local global i32 0, align 4
@CMD_QOS_NULL_DATA = common dso_local global i32 0, align 4
@CMD_PROBE_RESP = common dso_local global i32 0, align 4
@CMD_BEACON = common dso_local global i32 0, align 4
@TIM_ELE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_hw_init_templates_config(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %8 = load i32, i32* @PARTIAL_VBM_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %13 = load i32, i32* @CMD_PROBE_REQ, align 4
  %14 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %12, i32 %13, i32* null, i32 4)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

19:                                               ; preds = %1
  %20 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %21 = load i32, i32* @CMD_NULL_DATA, align 4
  %22 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %20, i32 %21, i32* null, i32 4)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

27:                                               ; preds = %19
  %28 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %29 = load i32, i32* @CMD_PS_POLL, align 4
  %30 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %28, i32 %29, i32* null, i32 4)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

35:                                               ; preds = %27
  %36 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %37 = load i32, i32* @CMD_QOS_NULL_DATA, align 4
  %38 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %36, i32 %37, i32* null, i32 4)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

43:                                               ; preds = %35
  %44 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %45 = load i32, i32* @CMD_PROBE_RESP, align 4
  %46 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %44, i32 %45, i32* null, i32 4)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

51:                                               ; preds = %43
  %52 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %53 = load i32, i32* @CMD_BEACON, align 4
  %54 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %52, i32 %53, i32* null, i32 4)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

59:                                               ; preds = %51
  %60 = load i32, i32* @PARTIAL_VBM_MAX, align 4
  %61 = call i32 @memset(i32* %11, i32 0, i32 %60)
  %62 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %63 = load i32, i32* @TIM_ELE_ID, align 4
  %64 = load i32, i32* @PARTIAL_VBM_MAX, align 4
  %65 = call i32 @wl1251_cmd_vbm(%struct.wl1251* %62, i32 %63, i32* %11, i32 %64, i32 0)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

70:                                               ; preds = %59
  %71 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %72 = load i32, i32* @TIM_ELE_ID, align 4
  %73 = call i32 @wl1251_cmd_vbm(%struct.wl1251* %71, i32 %72, i32* %11, i32 1, i32 0)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

78:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %76, %68, %57, %49, %41, %33, %25, %17
  %80 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wl1251_cmd_template_set(%struct.wl1251*, i32, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @wl1251_cmd_vbm(%struct.wl1251*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
