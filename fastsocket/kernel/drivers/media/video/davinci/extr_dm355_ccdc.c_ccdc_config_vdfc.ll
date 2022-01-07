; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_config_vdfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_config_vdfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_vertical_dft = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CCDC_DFCCTL_GDFCEN_MASK = common dso_local global i32 0, align 4
@DFCCTL = common dso_local global i32 0, align 4
@CCDC_DFT_TABLE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFC_DISABLE = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFCSL_MASK = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFCSL_SHIFT = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFCUDA_MASK = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFCUDA_SHIFT = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFLSFT_MASK = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFLSFT_SHIFT = common dso_local global i32 0, align 4
@CCDC_DFCMEMCTL_DFCMARST_MASK = common dso_local global i32 0, align 4
@CCDC_DFCMEMCTL_DFCMARST_SHIFT = common dso_local global i32 0, align 4
@CCDC_DFCMEMCTL_INC_ADDR = common dso_local global i32 0, align 4
@DFCMEMCTL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CCDC_VDC_DFCVSAT_MASK = common dso_local global i32 0, align 4
@DFCVSAT = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFCEN_MASK = common dso_local global i32 0, align 4
@CCDC_DFCCTL_VDFCEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdc_vertical_dft*)* @ccdc_config_vdfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_config_vdfc(%struct.ccdc_vertical_dft* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccdc_vertical_dft*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccdc_vertical_dft* %0, %struct.ccdc_vertical_dft** %3, align 8
  %6 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %7 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CCDC_DFCCTL_GDFCEN_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %12 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DFCCTL, align 4
  %18 = call i32 @regw(i32 %16, i32 %17)
  store i32 0, i32* %2, align 4
  br label %111

19:                                               ; preds = %1
  %20 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %21 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CCDC_DFT_TABLE_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %111

28:                                               ; preds = %19
  %29 = load i32, i32* @CCDC_DFCCTL_VDFC_DISABLE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %33 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CCDC_DFCCTL_VDFCSL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CCDC_DFCCTL_VDFCSL_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %43 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CCDC_DFCCTL_VDFCUDA_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CCDC_DFCCTL_VDFCUDA_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %53 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CCDC_DFCCTL_VDFLSFT_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CCDC_DFCCTL_VDFLSFT_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @DFCCTL, align 4
  %64 = call i32 @regw(i32 %62, i32 %63)
  %65 = load i32, i32* @CCDC_DFCMEMCTL_DFCMARST_MASK, align 4
  %66 = load i32, i32* @CCDC_DFCMEMCTL_DFCMARST_SHIFT, align 4
  %67 = shl i32 %65, %66
  store i32 %67, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %91, %28
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %71 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @CCDC_DFCMEMCTL_INC_ADDR, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @DFCMEMCTL, align 4
  %82 = call i32 @regw(i32 %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %85 = call i64 @ccdc_write_dfc_entry(i32 %83, %struct.ccdc_vertical_dft* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %111

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %68

94:                                               ; preds = %68
  %95 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %3, align 8
  %96 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CCDC_VDC_DFCVSAT_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @DFCVSAT, align 4
  %101 = call i32 @regw(i32 %99, i32 %100)
  %102 = load i32, i32* @DFCCTL, align 4
  %103 = call i32 @regr(i32 %102)
  %104 = load i32, i32* @CCDC_DFCCTL_VDFCEN_MASK, align 4
  %105 = load i32, i32* @CCDC_DFCCTL_VDFCEN_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %103, %106
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @DFCCTL, align 4
  %110 = call i32 @regw(i32 %108, i32 %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %94, %87, %25, %15
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i64 @ccdc_write_dfc_entry(i32, %struct.ccdc_vertical_dft*) #1

declare dso_local i32 @regr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
