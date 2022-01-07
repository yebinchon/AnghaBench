; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_indirect_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_indirect_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { %struct.iwl_trans* }
%struct.iwl_trans = type { i32 }

@IWL_ABS_PRPH_START = common dso_local global i64 0, align 8
@PRPH_END = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@HBUS_TARG_PRPH_WADDR = common dso_local global i32 0, align 4
@HBUS_TARG_PRPH_WDAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, i64, i64, i8*)* @iwl_test_indirect_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_indirect_write(%struct.iwl_test* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_test*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iwl_trans*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.iwl_test* %0, %struct.iwl_test** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.iwl_test*, %struct.iwl_test** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %14, i32 0, i32 0
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %15, align 8
  store %struct.iwl_trans* %16, %struct.iwl_trans** %10, align 8
  %17 = load i64, i64* @IWL_ABS_PRPH_START, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @IWL_ABS_PRPH_START, align 8
  %23 = load i64, i64* @PRPH_END, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %20
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %27, 4
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @memcpy(i64* %11, i8* %30, i64 %31)
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %34 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %33, i32 0, i64* %13)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %100

39:                                               ; preds = %29
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %41 = load i32, i32* @HBUS_TARG_PRPH_WADDR, align 4
  %42 = load i64, i64* %7, align 8
  %43 = and i64 %42, 65535
  %44 = load i64, i64* %8, align 8
  %45 = sub nsw i64 %44, 1
  %46 = shl i64 %45, 24
  %47 = or i64 %43, %46
  %48 = call i32 @iwl_write32(%struct.iwl_trans* %40, i32 %41, i64 %47)
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %50 = load i32, i32* @HBUS_TARG_PRPH_WDAT, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @iwl_write32(%struct.iwl_trans* %49, i32 %50, i64 %51)
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %54 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %53, i64* %13)
  br label %82

55:                                               ; preds = %26
  %56 = load i64, i64* %8, align 8
  %57 = srem i64 %56, 4
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %100

62:                                               ; preds = %55
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = bitcast i8* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @iwl_write_prph(%struct.iwl_trans* %68, i64 %71, i64 %76)
  br label %78

78:                                               ; preds = %67
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, 4
  store i64 %80, i64* %12, align 8
  br label %63

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %39
  br label %99

83:                                               ; preds = %20, %4
  %84 = load %struct.iwl_test*, %struct.iwl_test** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i64 @iwl_test_valid_hw_addr(%struct.iwl_test* %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %8, align 8
  %93 = sdiv i64 %92, 4
  %94 = call i32 @iwl_trans_write_mem(%struct.iwl_trans* %89, i64 %90, i8* %91, i64 %93)
  br label %98

95:                                               ; preds = %83
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %82
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %95, %59, %36
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i32, i64*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i64) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i64, i64) #1

declare dso_local i64 @iwl_test_valid_hw_addr(%struct.iwl_test*, i64) #1

declare dso_local i32 @iwl_trans_write_mem(%struct.iwl_trans*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
