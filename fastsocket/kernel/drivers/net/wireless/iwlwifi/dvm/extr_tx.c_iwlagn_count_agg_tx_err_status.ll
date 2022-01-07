; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_count_agg_tx_err_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_count_agg_tx_err_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AGG_TX_STATUS_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i32)* @iwlagn_count_agg_tx_err_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_count_agg_tx_err_status(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @AGG_TX_STATUS_MSK, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %81 [
    i32 128, label %9
    i32 138, label %15
    i32 135, label %21
    i32 139, label %27
    i32 132, label %33
    i32 133, label %39
    i32 134, label %45
    i32 130, label %51
    i32 129, label %57
    i32 131, label %63
    i32 136, label %69
    i32 137, label %75
  ]

9:                                                ; preds = %2
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %87

21:                                               ; preds = %2
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %87

27:                                               ; preds = %2
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %87

33:                                               ; preds = %2
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %87

39:                                               ; preds = %2
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %87

45:                                               ; preds = %2
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %87

51:                                               ; preds = %2
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %87

57:                                               ; preds = %2
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %87

63:                                               ; preds = %2
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %87

69:                                               ; preds = %2
  %70 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %87

75:                                               ; preds = %2
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %77 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %87

81:                                               ; preds = %2
  %82 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %15, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
