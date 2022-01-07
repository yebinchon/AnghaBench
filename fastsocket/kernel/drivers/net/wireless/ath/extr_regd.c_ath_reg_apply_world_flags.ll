; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_world_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_world_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ath_regulatory = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32, %struct.ath_regulatory*)* @ath_reg_apply_world_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_reg_apply_world_flags(%struct.wiphy* %0, i32 %1, %struct.ath_regulatory* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_regulatory*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ath_regulatory* %2, %struct.ath_regulatory** %6, align 8
  %7 = load %struct.ath_regulatory*, %struct.ath_regulatory** %6, align 8
  %8 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %23 [
    i32 96, label %12
    i32 99, label %12
    i32 102, label %12
    i32 103, label %12
    i32 108, label %12
    i32 104, label %16
  ]

12:                                               ; preds = %3, %3, %3, %3, %3
  %13 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ath_reg_apply_beaconing_flags(%struct.wiphy* %13, i32 %14)
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ath_reg_apply_beaconing_flags(%struct.wiphy* %17, i32 %18)
  %20 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ath_reg_apply_active_scan_flags(%struct.wiphy* %20, i32 %21)
  br label %23

23:                                               ; preds = %3, %16, %12
  ret void
}

declare dso_local i32 @ath_reg_apply_beaconing_flags(%struct.wiphy*, i32) #1

declare dso_local i32 @ath_reg_apply_active_scan_flags(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
