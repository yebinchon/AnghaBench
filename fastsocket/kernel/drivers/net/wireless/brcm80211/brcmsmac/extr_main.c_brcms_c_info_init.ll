; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_info_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i8**, i8*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BRCMS_SHORTSLOT_AUTO = common dso_local global i32 0, align 4
@BRCMS_PROT_G_OVR = common dso_local global i32 0, align 4
@BRCMS_PROTECTION_AUTO = common dso_local global i32 0, align 4
@BRCMS_PROT_G_SPEC = common dso_local global i32 0, align 4
@BRCMS_PROT_N_CFG_OVR = common dso_local global i32 0, align 4
@BRCMS_PROT_N_CFG = common dso_local global i32 0, align 4
@BRCMS_N_PROTECTION_OFF = common dso_local global i32 0, align 4
@BRCMS_PROT_N_NONGF_OVR = common dso_local global i32 0, align 4
@BRCMS_PROT_N_NONGF = common dso_local global i32 0, align 4
@BRCMS_PROT_N_PAM_OVR = common dso_local global i32 0, align 4
@AUTO = common dso_local global i32 0, align 4
@BRCMS_PROT_OVERLAP = common dso_local global i32 0, align 4
@BRCMS_PROTECTION_CTL_OVERLAP = common dso_local global i32 0, align 4
@ANT_RX_DIV_DEF = common dso_local global i32 0, align 4
@ANT_TX_DEF = common dso_local global i32 0, align 4
@BRCMS_PRB_RESP_TIMEOUT = common dso_local global i32 0, align 4
@DOT11_DEFAULT_FRAG_LEN = common dso_local global i8* null, align 8
@NFIFO = common dso_local global i32 0, align 4
@DOT11_DEFAULT_RTS_LEN = common dso_local global i32 0, align 4
@RETRY_SHORT_FB = common dso_local global i32 0, align 4
@RETRY_LONG_FB = common dso_local global i32 0, align 4
@RETRY_SHORT_DEF = common dso_local global i32 0, align 4
@RETRY_LONG_DEF = common dso_local global i32 0, align 4
@AMPDU_AGG_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i32)* @brcms_c_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_info_init(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @ch20mhz_chspec(i32 1)
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 13
  store i32 %6, i32* %8, align 4
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load i32, i32* @BRCMS_SHORTSLOT_AUTO, align 4
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 12
  store i32 %11, i32* %13, align 8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %15 = load i32, i32* @BRCMS_PROT_G_OVR, align 4
  %16 = load i32, i32* @BRCMS_PROTECTION_AUTO, align 4
  %17 = call i32 @brcms_c_protection_upd(%struct.brcms_c_info* %14, i32 %15, i32 %16)
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %19 = load i32, i32* @BRCMS_PROT_G_SPEC, align 4
  %20 = call i32 @brcms_c_protection_upd(%struct.brcms_c_info* %18, i32 %19, i32 0)
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %22 = load i32, i32* @BRCMS_PROT_N_CFG_OVR, align 4
  %23 = load i32, i32* @BRCMS_PROTECTION_AUTO, align 4
  %24 = call i32 @brcms_c_protection_upd(%struct.brcms_c_info* %21, i32 %22, i32 %23)
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %26 = load i32, i32* @BRCMS_PROT_N_CFG, align 4
  %27 = load i32, i32* @BRCMS_N_PROTECTION_OFF, align 4
  %28 = call i32 @brcms_c_protection_upd(%struct.brcms_c_info* %25, i32 %26, i32 %27)
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %30 = load i32, i32* @BRCMS_PROT_N_NONGF_OVR, align 4
  %31 = load i32, i32* @BRCMS_PROTECTION_AUTO, align 4
  %32 = call i32 @brcms_c_protection_upd(%struct.brcms_c_info* %29, i32 %30, i32 %31)
  %33 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %34 = load i32, i32* @BRCMS_PROT_N_NONGF, align 4
  %35 = call i32 @brcms_c_protection_upd(%struct.brcms_c_info* %33, i32 %34, i32 0)
  %36 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %37 = load i32, i32* @BRCMS_PROT_N_PAM_OVR, align 4
  %38 = load i32, i32* @AUTO, align 4
  %39 = call i32 @brcms_c_protection_upd(%struct.brcms_c_info* %36, i32 %37, i32 %38)
  %40 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %41 = load i32, i32* @BRCMS_PROT_OVERLAP, align 4
  %42 = load i32, i32* @BRCMS_PROTECTION_CTL_OVERLAP, align 4
  %43 = call i32 @brcms_c_protection_upd(%struct.brcms_c_info* %40, i32 %41, i32 %42)
  %44 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %45 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @ANT_RX_DIV_DEF, align 4
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 11
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @ANT_TX_DEF, align 4
  %52 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %53 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %52, i32 0, i32 11
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @BRCMS_PRB_RESP_TIMEOUT, align 4
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %58 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @DOT11_DEFAULT_FRAG_LEN, align 8
  %60 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %61 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %60, i32 0, i32 9
  store i8* %59, i8** %61, align 8
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %74, %2
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @NFIFO, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i8*, i8** @DOT11_DEFAULT_FRAG_LEN, align 8
  %68 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %69 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %68, i32 0, i32 8
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %67, i8** %73, align 8
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load i32, i32* @DOT11_DEFAULT_RTS_LEN, align 4
  %79 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %80 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @RETRY_SHORT_FB, align 4
  %82 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %83 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @RETRY_LONG_FB, align 4
  %85 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %86 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @RETRY_SHORT_DEF, align 4
  %88 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %89 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @RETRY_LONG_DEF, align 4
  %91 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %92 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @AMPDU_AGG_HOST, align 4
  %94 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %95 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 8
  %98 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %99 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  ret void
}

declare dso_local i32 @ch20mhz_chspec(i32) #1

declare dso_local i32 @brcms_c_protection_upd(%struct.brcms_c_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
