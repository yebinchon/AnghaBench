; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_get_htc_epid_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_get_htc_epid_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff_head = type { i32 }
%struct.ath9k_htc_priv = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath_common = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid EPID: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff_head* (%struct.ath9k_htc_priv*, i32)* @get_htc_epid_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff_head* @get_htc_epid_queue(%struct.ath9k_htc_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ath_common* @ath9k_hw_common(i32 %9)
  store %struct.ath_common* %10, %struct.ath_common** %5, align 8
  store %struct.sk_buff_head* null, %struct.sk_buff_head** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  store %struct.sk_buff_head* %19, %struct.sk_buff_head** %6, align 8
  br label %79

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store %struct.sk_buff_head* %29, %struct.sk_buff_head** %6, align 8
  br label %78

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store %struct.sk_buff_head* %39, %struct.sk_buff_head** %6, align 8
  br label %77

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %43 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store %struct.sk_buff_head* %49, %struct.sk_buff_head** %6, align 8
  br label %76

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store %struct.sk_buff_head* %59, %struct.sk_buff_head** %6, align 8
  br label %75

60:                                               ; preds = %50
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.sk_buff_head* %69, %struct.sk_buff_head** %6, align 8
  br label %74

70:                                               ; preds = %60
  %71 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @ath_err(%struct.ath_common* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76, %36
  br label %78

78:                                               ; preds = %77, %26
  br label %79

79:                                               ; preds = %78, %16
  %80 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  ret %struct.sk_buff_head* %80
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
