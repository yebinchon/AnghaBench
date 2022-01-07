; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_antcfg_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_antcfg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.antsel_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ANT_SELCFG_TX_DEF = common dso_local global i64 0, align 8
@ANT_SELCFG_TX_UNICAST = common dso_local global i64 0, align 8
@ANT_SELCFG_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_antsel_antcfg_get(%struct.antsel_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.antsel_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.antsel_info* %0, %struct.antsel_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %7
  %19 = load %struct.antsel_info*, %struct.antsel_info** %8, align 8
  %20 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @ANT_SELCFG_TX_DEF, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %14, align 8
  store i32 %28, i32* %29, align 4
  br label %81

30:                                               ; preds = %7
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load %struct.antsel_info*, %struct.antsel_info** %8, align 8
  %35 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @ANT_SELCFG_TX_UNICAST, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %14, align 8
  store i32 %43, i32* %44, align 4
  br label %80

45:                                               ; preds = %30
  %46 = load %struct.antsel_info*, %struct.antsel_info** %8, align 8
  %47 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @ANT_SELCFG_TX_UNICAST, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @ANT_SELCFG_AUTO, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @ANT_SELCFG_AUTO, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %45
  %59 = load %struct.antsel_info*, %struct.antsel_info** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @brcms_c_antsel_id2antcfg(%struct.antsel_info* %59, i32 %60)
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.antsel_info*, %struct.antsel_info** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @brcms_c_antsel_id2antcfg(%struct.antsel_info* %63, i32 %64)
  %66 = load i32*, i32** %14, align 8
  store i32 %65, i32* %66, align 4
  br label %79

67:                                               ; preds = %45
  %68 = load %struct.antsel_info*, %struct.antsel_info** %8, align 8
  %69 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @ANT_SELCFG_TX_UNICAST, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %13, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %14, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %67, %58
  br label %80

80:                                               ; preds = %79, %33
  br label %81

81:                                               ; preds = %80, %18
  ret void
}

declare dso_local i32 @brcms_c_antsel_id2antcfg(%struct.antsel_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
