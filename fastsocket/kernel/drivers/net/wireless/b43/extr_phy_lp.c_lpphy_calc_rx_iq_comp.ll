; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_calc_rx_iq_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_calc_rx_iq_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.lpphy_iq_est = type { i32, i32, i32 }

@B43_LPPHY_RX_COMP_COEFF_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @lpphy_calc_rx_iq_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpphy_calc_rx_iq_comp(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpphy_iq_est, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = load i32, i32* @B43_LPPHY_RX_COMP_COEFF_S, align 4
  %20 = call i32 @b43_phy_read(%struct.b43_wldev* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* @B43_LPPHY_RX_COMP_COEFF_S, align 4
  %27 = call i32 @b43_phy_maskset(%struct.b43_wldev* %25, i32 %26, i32 65280, i32 192)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i32, i32* @B43_LPPHY_RX_COMP_COEFF_S, align 4
  %30 = call i32 @b43_phy_mask(%struct.b43_wldev* %28, i32 %29, i32 255)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @lpphy_rx_iq_est(%struct.b43_wldev* %31, i32 %32, i32 32, %struct.lpphy_iq_est* %5)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  br label %126

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.lpphy_iq_est, %struct.lpphy_iq_est* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = getelementptr inbounds %struct.lpphy_iq_est, %struct.lpphy_iq_est* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = getelementptr inbounds %struct.lpphy_iq_est, %struct.lpphy_iq_est* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 0, i32* %17, align 4
  br label %126

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @abs(i32 %50) #3
  %52 = call i32 @fls(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @abs(i32 %53) #3
  %55 = call i32 @fls(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 20
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %49
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 30, %62
  %64 = shl i32 %61, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 1, %66
  %68 = ashr i32 %65, %67
  %69 = add nsw i32 %64, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %13, align 4
  %72 = ashr i32 %70, %71
  %73 = sdiv i32 %69, %72
  store i32 %73, i32* %15, align 4
  br label %89

74:                                               ; preds = %49
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 30, %76
  %78 = shl i32 %75, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 -1, %80
  %82 = shl i32 %79, %81
  %83 = add nsw i32 %78, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 0, %85
  %87 = shl i32 %84, %86
  %88 = sdiv i32 %83, %87
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %74, %60
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %90, 11
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 31, %96
  %98 = shl i32 %95, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %14, align 4
  %101 = ashr i32 %99, %100
  %102 = sdiv i32 %98, %101
  store i32 %102, i32* %16, align 4
  br label %113

103:                                              ; preds = %89
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 31, %105
  %107 = shl i32 %104, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 0, %109
  %111 = shl i32 %108, %110
  %112 = sdiv i32 %107, %111
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %103, %94
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %16, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @int_sqrt(i32 %119)
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %15, align 4
  %123 = ashr i32 %122, 3
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %16, align 4
  %125 = ashr i32 %124, 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %113, %48, %36
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %128 = load i32, i32* @B43_LPPHY_RX_COMP_COEFF_S, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @b43_phy_maskset(%struct.b43_wldev* %127, i32 %128, i32 65280, i32 %129)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = load i32, i32* @B43_LPPHY_RX_COMP_COEFF_S, align 4
  %133 = load i32, i32* %6, align 4
  %134 = shl i32 %133, 8
  %135 = call i32 @b43_phy_maskset(%struct.b43_wldev* %131, i32 %132, i32 255, i32 %134)
  %136 = load i32, i32* %17, align 4
  ret i32 %136
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_rx_iq_est(%struct.b43_wldev*, i32, i32, %struct.lpphy_iq_est*) #1

declare dso_local i32 @fls(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @int_sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
