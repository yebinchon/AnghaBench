; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_process_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_process_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_btcoex }
%struct.ath_btcoex = type { %struct.ath_mci_profile }
%struct.ath_mci_profile = type { i32, i32 }
%struct.ath_mci_profile_status = type { i32, i64, i64 }
%struct.ath_mci_profile_info = type { i32 }

@ATH_MCI_MAX_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ath_mci_profile_status*)* @ath_mci_process_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_mci_process_status(%struct.ath_softc* %0, %struct.ath_mci_profile_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_mci_profile_status*, align 8
  %6 = alloca %struct.ath_btcoex*, align 8
  %7 = alloca %struct.ath_mci_profile*, align 8
  %8 = alloca %struct.ath_mci_profile_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_mci_profile_status* %1, %struct.ath_mci_profile_status** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  store %struct.ath_btcoex* %12, %struct.ath_btcoex** %6, align 8
  %13 = load %struct.ath_btcoex*, %struct.ath_btcoex** %6, align 8
  %14 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %13, i32 0, i32 0
  store %struct.ath_mci_profile* %14, %struct.ath_mci_profile** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %7, align 8
  %16 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ath_mci_profile_status*, %struct.ath_mci_profile_status** %5, align 8
  %19 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

23:                                               ; preds = %2
  %24 = load %struct.ath_mci_profile_status*, %struct.ath_mci_profile_status** %5, align 8
  %25 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %7, align 8
  %29 = call i64 @ath_mci_find_profile(%struct.ath_mci_profile* %28, %struct.ath_mci_profile_info* %8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %91

32:                                               ; preds = %23
  %33 = load %struct.ath_mci_profile_status*, %struct.ath_mci_profile_status** %5, align 8
  %34 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ATH_MCI_MAX_PROFILE, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %91

39:                                               ; preds = %32
  %40 = load %struct.ath_mci_profile_status*, %struct.ath_mci_profile_status** %5, align 8
  %41 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.ath_mci_profile_status*, %struct.ath_mci_profile_status** %5, align 8
  %46 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %7, align 8
  %49 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__set_bit(i32 %47, i32 %50)
  br label %60

52:                                               ; preds = %39
  %53 = load %struct.ath_mci_profile_status*, %struct.ath_mci_profile_status** %5, align 8
  %54 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %7, align 8
  %57 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__clear_bit(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %52, %44
  %61 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %7, align 8
  %62 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %76, %60
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %7, align 8
  %66 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @test_bit(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %7, align 8
  %72 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %63
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @ATH_MCI_MAX_PROFILE, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %63, label %81

81:                                               ; preds = %76
  %82 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %83 = call i32 @ath_mci_set_concur_txprio(%struct.ath_softc* %82)
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %7, align 8
  %86 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %91

90:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %38, %31, %22
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @ath_mci_find_profile(%struct.ath_mci_profile*, %struct.ath_mci_profile_info*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ath_mci_set_concur_txprio(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
