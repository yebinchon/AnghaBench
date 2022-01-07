; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_scan_add_rates_tlv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_scan_add_rates_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrvl_ie_rates_param_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@TLV_TYPE_RATES = common dso_local global i32 0, align 4
@MAX_RATES = common dso_local global i32 0, align 4
@lbs_bg_rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lbs_scan_add_rates_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_scan_add_rates_tlv(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrvl_ie_rates_param_set*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = bitcast i8* %6 to %struct.mrvl_ie_rates_param_set*
  store %struct.mrvl_ie_rates_param_set* %7, %struct.mrvl_ie_rates_param_set** %4, align 8
  %8 = load i32, i32* @TLV_TYPE_RATES, align 4
  %9 = call i8* @cpu_to_le16(i32 %8)
  %10 = load %struct.mrvl_ie_rates_param_set*, %struct.mrvl_ie_rates_param_set** %4, align 8
  %11 = getelementptr inbounds %struct.mrvl_ie_rates_param_set, %struct.mrvl_ie_rates_param_set* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 16
  store i32* %14, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %53, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MAX_RATES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load i32*, i32** @lbs_bg_rates, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %2, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %56

30:                                               ; preds = %19
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 11
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 22
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %38, %34, %30
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, 128
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %2, align 8
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %15

56:                                               ; preds = %29, %15
  %57 = load i32, i32* %3, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.mrvl_ie_rates_param_set*, %struct.mrvl_ie_rates_param_set** %4, align 8
  %60 = getelementptr inbounds %struct.mrvl_ie_rates_param_set, %struct.mrvl_ie_rates_param_set* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 16, %63
  %65 = trunc i64 %64 to i32
  ret i32 %65
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
