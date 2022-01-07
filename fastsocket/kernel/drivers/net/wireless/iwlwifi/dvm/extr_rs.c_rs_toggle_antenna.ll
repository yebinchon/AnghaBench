; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_toggle_antenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_toggle_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_scale_tbl_info = type { i64 }

@ANT_ABC = common dso_local global i64 0, align 8
@ant_toggle_lookup = common dso_local global i64* null, align 8
@RATE_MCS_ANT_ABC_MSK = common dso_local global i64 0, align 8
@RATE_MCS_ANT_POS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, %struct.iwl_scale_tbl_info*)* @rs_toggle_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_toggle_antenna(i64 %0, i64* %1, %struct.iwl_scale_tbl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.iwl_scale_tbl_info*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.iwl_scale_tbl_info* %2, %struct.iwl_scale_tbl_info** %7, align 8
  %9 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %10 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ANT_ABC, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %76

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @rs_is_valid_ant(i64 %21, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %76

28:                                               ; preds = %20
  %29 = load i64*, i64** @ant_toggle_lookup, align 8
  %30 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %49, %28
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @rs_is_valid_ant(i64 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ false, %35 ], [ %46, %41 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = load i64*, i64** @ant_toggle_lookup, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  br label %35

54:                                               ; preds = %47
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %76

61:                                               ; preds = %54
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* @RATE_MCS_ANT_ABC_MSK, align 8
  %66 = xor i64 %65, -1
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %67, align 8
  %69 = and i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @RATE_MCS_ANT_POS, align 8
  %72 = shl i64 %70, %71
  %73 = load i64*, i64** %6, align 8
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %72
  store i64 %75, i64* %73, align 8
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %61, %60, %27, %19
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @rs_is_valid_ant(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
