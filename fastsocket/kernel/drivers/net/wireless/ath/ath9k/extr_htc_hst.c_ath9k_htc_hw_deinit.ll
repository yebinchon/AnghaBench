; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_hw_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_hw_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_hw_deinit(%struct.htc_target* %0, i32 %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %6 = icmp ne %struct.htc_target* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ath9k_htc_disconnect_device(%struct.htc_target* %8, i32 %9)
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @ath9k_htc_disconnect_device(%struct.htc_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
