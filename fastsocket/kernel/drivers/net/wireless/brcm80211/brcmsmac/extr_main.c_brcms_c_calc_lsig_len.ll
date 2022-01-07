; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_calc_lsig_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_calc_lsig_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }

@RSPEC_RATE_MASK = common dso_local global i32 0, align 4
@APHY_SERVICE_NBITS = common dso_local global i32 0, align 4
@APHY_TAIL_NBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_calc_lsig_len(%struct.brcms_c_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @is_mcs_rate(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RSPEC_RATE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @mcs_2_txstreams(i32 %19)
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rspec_stc(i32 %22)
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @rspec_is40mhz(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @rspec_issgi(i32 %28)
  %30 = call i32 @mcs_2_rate(i32 %25, i32 %27, i32 %29)
  %31 = mul nsw i32 %30, 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @rspec_stc(i32 %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %15
  %36 = load i32, i32* @APHY_SERVICE_NBITS, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 8, %37
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* @APHY_TAIL_NBITS, align 4
  %41 = add nsw i32 %39, %40
  %42 = mul nsw i32 %41, 1000
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @CEIL(i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %57

45:                                               ; preds = %15
  %46 = load i32, i32* @APHY_SERVICE_NBITS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 8, %47
  %49 = add nsw i32 %46, %48
  %50 = load i32, i32* @APHY_TAIL_NBITS, align 4
  %51 = add nsw i32 %49, %50
  %52 = mul nsw i32 %51, 1000
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 2, %53
  %55 = call i32 @CEIL(i32 %52, i32 %54)
  %56 = mul nsw i32 2, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %45, %35
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 3
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 3, %62
  %64 = sub nsw i32 %63, 3
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %57, %3
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i64 @is_mcs_rate(i32) #1

declare dso_local i32 @mcs_2_txstreams(i32) #1

declare dso_local i32 @rspec_stc(i32) #1

declare dso_local i32 @mcs_2_rate(i32, i32, i32) #1

declare dso_local i32 @rspec_is40mhz(i32) #1

declare dso_local i32 @rspec_issgi(i32) #1

declare dso_local i32 @CEIL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
