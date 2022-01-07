; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_find_reset_owner_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_find_reset_owner_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@QLC_83XX_IDC_DEV_PARTITION_INFO_1 = common dso_local global i32 0, align 4
@QLC_83XX_IDC_DEV_PARTITION_INFO_2 = common dso_local global i32 0, align 4
@QLCNIC_TYPE_NIC = common dso_local global i32 0, align 4
@QLC_83XX_IDC_MAX_FUNC_PER_PARTITION_INFO = common dso_local global i32 0, align 4
@QLC_83XX_IDC_MAX_CNA_FUNCTIONS = common dso_local global i32 0, align 4
@QLCNIC_TYPE_ISCSI = common dso_local global i32 0, align 4
@QLCNIC_TYPE_FCOE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_idc_find_reset_owner_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_idc_find_reset_owner_id(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @QLC_83XX_IDC_DEV_PARTITION_INFO_1, align 4
  %15 = call i32 @QLCRDX(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QLC_83XX_IDC_DEV_PARTITION_INFO_2, align 4
  %20 = call i32 @QLCRDX(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @QLCNIC_TYPE_NIC, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %76, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 4
  %27 = shl i32 15, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 4
  %31 = ashr i32 %28, %30
  %32 = and i32 %31, 3
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %81

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @QLC_83XX_IDC_MAX_FUNC_PER_PARTITION_INFO, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @QLC_83XX_IDC_MAX_CNA_FUNCTIONS, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @QLCNIC_TYPE_NIC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @QLCNIC_TYPE_ISCSI, align 4
  store i32 %57, i32* %9, align 4
  br label %73

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @QLCNIC_TYPE_ISCSI, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @QLCNIC_TYPE_FCOE, align 4
  store i32 %63, i32* %9, align 4
  br label %72

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @QLCNIC_TYPE_FCOE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %83

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %62
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @QLC_83XX_IDC_MAX_CNA_FUNCTIONS, align 4
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %23, label %81

81:                                               ; preds = %76, %36
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %68
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @QLCRDX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
