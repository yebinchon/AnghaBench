; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { i32 }
%struct.nlattr = type { i32 }

@IWL_TM_ATTR_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"test cmd to uCode\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test cmd to register\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"test uCode trace cmd to driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"test indirect memory cmd\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"test notifications cmd\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"test get FW ver cmd\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"test Get device ID cmd\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Unknown test command\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_test_handle_cmd(%struct.iwl_test* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.iwl_test*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %7 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = call i32 @nla_get_u32(%struct.nlattr* %9)
  switch i32 %10, label %70 [
    i32 128, label %11
    i32 137, label %19
    i32 136, label %19
    i32 135, label %19
    i32 138, label %27
    i32 134, label %35
    i32 131, label %38
    i32 130, label %38
    i32 129, label %46
    i32 132, label %54
    i32 133, label %62
  ]

11:                                               ; preds = %2
  %12 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IWL_DEBUG_INFO(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %17 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %18 = call i32 @iwl_test_fw_cmd(%struct.iwl_test* %16, %struct.nlattr** %17)
  store i32 %18, i32* %5, align 4
  br label %75

19:                                               ; preds = %2, %2, %2
  %20 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IWL_DEBUG_INFO(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %25 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %26 = call i32 @iwl_test_reg(%struct.iwl_test* %24, %struct.nlattr** %25)
  store i32 %26, i32* %5, align 4
  br label %75

27:                                               ; preds = %2
  %28 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IWL_DEBUG_INFO(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %33 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %34 = call i32 @iwl_test_trace_begin(%struct.iwl_test* %32, %struct.nlattr** %33)
  store i32 %34, i32* %5, align 4
  br label %75

35:                                               ; preds = %2
  %36 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %37 = call i32 @iwl_test_trace_stop(%struct.iwl_test* %36)
  store i32 0, i32* %5, align 4
  br label %75

38:                                               ; preds = %2, %2
  %39 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IWL_DEBUG_INFO(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %44 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %45 = call i32 @iwl_test_indirect_mem(%struct.iwl_test* %43, %struct.nlattr** %44)
  store i32 %45, i32* %5, align 4
  br label %75

46:                                               ; preds = %2
  %47 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IWL_DEBUG_INFO(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %52 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %53 = call i32 @iwl_test_notifications(%struct.iwl_test* %51, %struct.nlattr** %52)
  store i32 %53, i32* %5, align 4
  br label %75

54:                                               ; preds = %2
  %55 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %56 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IWL_DEBUG_INFO(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %60 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %61 = call i32 @iwl_test_get_fw_ver(%struct.iwl_test* %59, %struct.nlattr** %60)
  store i32 %61, i32* %5, align 4
  br label %75

62:                                               ; preds = %2
  %63 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IWL_DEBUG_INFO(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %68 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %69 = call i32 @iwl_test_get_dev_id(%struct.iwl_test* %67, %struct.nlattr** %68)
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %2
  %71 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @IWL_DEBUG_INFO(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %62, %54, %46, %38, %35, %27, %19, %11
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @IWL_DEBUG_INFO(i32, i8*) #1

declare dso_local i32 @iwl_test_fw_cmd(%struct.iwl_test*, %struct.nlattr**) #1

declare dso_local i32 @iwl_test_reg(%struct.iwl_test*, %struct.nlattr**) #1

declare dso_local i32 @iwl_test_trace_begin(%struct.iwl_test*, %struct.nlattr**) #1

declare dso_local i32 @iwl_test_trace_stop(%struct.iwl_test*) #1

declare dso_local i32 @iwl_test_indirect_mem(%struct.iwl_test*, %struct.nlattr**) #1

declare dso_local i32 @iwl_test_notifications(%struct.iwl_test*, %struct.nlattr**) #1

declare dso_local i32 @iwl_test_get_fw_ver(%struct.iwl_test*, %struct.nlattr**) #1

declare dso_local i32 @iwl_test_get_dev_id(%struct.iwl_test*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
