; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_init_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_init_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.antsel_info = type { i64, i64 }
%struct.brcms_antselcfg = type { i64, i8** }

@ANTSEL_2x3 = common dso_local global i64 0, align 8
@ANT_SELCFG_DEF_2x3 = common dso_local global i32 0, align 4
@ANT_SELCFG_AUTO = common dso_local global i32 0, align 4
@ANT_SELCFG_TX_DEF = common dso_local global i64 0, align 8
@ANT_SELCFG_TX_UNICAST = common dso_local global i64 0, align 8
@ANT_SELCFG_RX_DEF = common dso_local global i64 0, align 8
@ANT_SELCFG_RX_UNICAST = common dso_local global i64 0, align 8
@ANT_SELCFG_NUM_2x3 = common dso_local global i64 0, align 8
@ANTSEL_2x4 = common dso_local global i64 0, align 8
@ANT_SELCFG_DEF_2x4 = common dso_local global i8* null, align 8
@ANT_SELCFG_NUM_2x4 = common dso_local global i64 0, align 8
@ANT_SELCFG_DEF_2x2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.antsel_info*, %struct.brcms_antselcfg*, i32)* @brcms_c_antsel_init_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_antsel_init_cfg(%struct.antsel_info* %0, %struct.brcms_antselcfg* %1, i32 %2) #0 {
  %4 = alloca %struct.antsel_info*, align 8
  %5 = alloca %struct.brcms_antselcfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.antsel_info* %0, %struct.antsel_info** %4, align 8
  store %struct.brcms_antselcfg* %1, %struct.brcms_antselcfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %9 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ANTSEL_2x3, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %3
  %14 = load i32, i32* @ANT_SELCFG_DEF_2x3, align 4
  %15 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %16 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ANT_SELCFG_AUTO, align 4
  br label %25

24:                                               ; preds = %19, %13
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %14, %26
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %32 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i64, i64* @ANT_SELCFG_TX_DEF, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8* %30, i8** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %38 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* @ANT_SELCFG_TX_UNICAST, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %44 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* @ANT_SELCFG_RX_DEF, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %42, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %50 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* @ANT_SELCFG_RX_UNICAST, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %48, i8** %53, align 8
  %54 = load i64, i64* @ANT_SELCFG_NUM_2x3, align 8
  %55 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %56 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %119

57:                                               ; preds = %3
  %58 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %59 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ANTSEL_2x4, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %57
  %64 = load i8*, i8** @ANT_SELCFG_DEF_2x4, align 8
  %65 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %66 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* @ANT_SELCFG_TX_DEF, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %64, i8** %69, align 8
  %70 = load i8*, i8** @ANT_SELCFG_DEF_2x4, align 8
  %71 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %72 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* @ANT_SELCFG_TX_UNICAST, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8* %70, i8** %75, align 8
  %76 = load i8*, i8** @ANT_SELCFG_DEF_2x4, align 8
  %77 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %78 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load i64, i64* @ANT_SELCFG_RX_DEF, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  store i8* %76, i8** %81, align 8
  %82 = load i8*, i8** @ANT_SELCFG_DEF_2x4, align 8
  %83 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %84 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i64, i64* @ANT_SELCFG_RX_UNICAST, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  store i8* %82, i8** %87, align 8
  %88 = load i64, i64* @ANT_SELCFG_NUM_2x4, align 8
  %89 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %90 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %118

91:                                               ; preds = %57
  %92 = load i8*, i8** @ANT_SELCFG_DEF_2x2, align 8
  %93 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %94 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i64, i64* @ANT_SELCFG_TX_DEF, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  store i8* %92, i8** %97, align 8
  %98 = load i8*, i8** @ANT_SELCFG_DEF_2x2, align 8
  %99 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %100 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = load i64, i64* @ANT_SELCFG_TX_UNICAST, align 8
  %103 = getelementptr inbounds i8*, i8** %101, i64 %102
  store i8* %98, i8** %103, align 8
  %104 = load i8*, i8** @ANT_SELCFG_DEF_2x2, align 8
  %105 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %106 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* @ANT_SELCFG_RX_DEF, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8* %104, i8** %109, align 8
  %110 = load i8*, i8** @ANT_SELCFG_DEF_2x2, align 8
  %111 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %112 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %111, i32 0, i32 1
  %113 = load i8**, i8*** %112, align 8
  %114 = load i64, i64* @ANT_SELCFG_RX_UNICAST, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  store i8* %110, i8** %115, align 8
  %116 = load %struct.brcms_antselcfg*, %struct.brcms_antselcfg** %5, align 8
  %117 = getelementptr inbounds %struct.brcms_antselcfg, %struct.brcms_antselcfg* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %91, %63
  br label %119

119:                                              ; preds = %118, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
