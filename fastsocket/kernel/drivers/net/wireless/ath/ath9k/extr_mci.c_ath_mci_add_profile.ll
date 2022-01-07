; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_add_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_add_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32 }
%struct.ath_mci_profile = type { i64, i32, i32 }
%struct.ath_mci_profile_info = type { i64, i32, i32 }

@__const.ath_mci_add_profile.voice_priority = private unnamed_addr constant [9 x i32] [i32 110, i32 110, i32 110, i32 112, i32 110, i32 110, i32 114, i32 116, i32 118], align 16
@ATH_MCI_MAX_SCO_PROFILE = common dso_local global i64 0, align 8
@MCI_GPM_COEX_PROFILE_VOICE = common dso_local global i64 0, align 8
@ATH_MCI_MAX_ACL_PROFILE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, %struct.ath_mci_profile*, %struct.ath_mci_profile_info*)* @ath_mci_add_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_mci_add_profile(%struct.ath_common* %0, %struct.ath_mci_profile* %1, %struct.ath_mci_profile_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_mci_profile*, align 8
  %7 = alloca %struct.ath_mci_profile_info*, align 8
  %8 = alloca %struct.ath_mci_profile_info*, align 8
  %9 = alloca [9 x i32], align 16
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store %struct.ath_mci_profile* %1, %struct.ath_mci_profile** %6, align 8
  store %struct.ath_mci_profile_info* %2, %struct.ath_mci_profile_info** %7, align 8
  %10 = bitcast [9 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([9 x i32]* @__const.ath_mci_add_profile.voice_priority to i8*), i64 36, i1 false)
  %11 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %6, align 8
  %12 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATH_MCI_MAX_SCO_PROFILE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %7, align 8
  %18 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MCI_GPM_COEX_PROFILE_VOICE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %82

23:                                               ; preds = %16, %3
  %24 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %6, align 8
  %25 = call i64 @NUM_PROF(%struct.ath_mci_profile* %24)
  %26 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %6, align 8
  %27 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load i64, i64* @ATH_MCI_MAX_ACL_PROFILE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %7, align 8
  %34 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MCI_GPM_COEX_PROFILE_VOICE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %82

39:                                               ; preds = %32, %23
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.ath_mci_profile_info* @kzalloc(i32 16, i32 %40)
  store %struct.ath_mci_profile_info* %41, %struct.ath_mci_profile_info** %8, align 8
  %42 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %8, align 8
  %43 = icmp ne %struct.ath_mci_profile_info* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %82

45:                                               ; preds = %39
  %46 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %8, align 8
  %47 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %7, align 8
  %48 = call i32 @memcpy(%struct.ath_mci_profile_info* %46, %struct.ath_mci_profile_info* %47, i32 10)
  %49 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %6, align 8
  %50 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %7, align 8
  %51 = call i32 @INC_PROF(%struct.ath_mci_profile* %49, %struct.ath_mci_profile_info* %50)
  %52 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %8, align 8
  %53 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %52, i32 0, i32 2
  %54 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %6, align 8
  %55 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %54, i32 0, i32 2
  %56 = call i32 @list_add_tail(i32* %53, i32* %55)
  %57 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %7, align 8
  %58 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MCI_GPM_COEX_PROFILE_VOICE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %45
  %63 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %7, align 8
  %64 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 36
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %7, align 8
  %70 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %6, align 8
  %76 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %80

77:                                               ; preds = %62
  %78 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %6, align 8
  %79 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %78, i32 0, i32 1
  store i32 110, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %68
  br label %81

81:                                               ; preds = %80, %45
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %44, %38, %22
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @NUM_PROF(%struct.ath_mci_profile*) #2

declare dso_local %struct.ath_mci_profile_info* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(%struct.ath_mci_profile_info*, %struct.ath_mci_profile_info*, i32) #2

declare dso_local i32 @INC_PROF(%struct.ath_mci_profile*, %struct.ath_mci_profile_info*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
