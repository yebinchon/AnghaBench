; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_prepare_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_prepare_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, i32*, i32*, i8*, i8*, i8*, i64, i32 }

@IWLAGN_FIRST_AMPDU_QUEUE = common dso_local global i32 0, align 4
@IWL_MAX_HW_QUEUES = common dso_local global i32 0, align 4
@IWL_INVALID_MAC80211_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwlagn_prepare_restart(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 9
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 7
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %4, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 6
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 5
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %30 = call i32 @iwl_down(%struct.iwl_priv* %29)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @IWLAGN_FIRST_AMPDU_QUEUE, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %59, %1
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @IWL_MAX_HW_QUEUES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* @IWL_INVALID_MAC80211_QUEUE, align 4
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %47

62:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IWL_MAX_HW_QUEUES, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @atomic_set(i32* %73, i32 0)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %63

78:                                               ; preds = %63
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %80 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @memset(i32 %81, i32 0, i32 4)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_down(%struct.iwl_priv*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
