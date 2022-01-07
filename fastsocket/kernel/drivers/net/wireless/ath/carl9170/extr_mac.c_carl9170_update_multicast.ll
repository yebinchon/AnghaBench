; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_update_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_update_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }

@AR9170_MAC_REG_GROUP_HASH_TBL_H = common dso_local global i32 0, align 4
@AR9170_MAC_REG_GROUP_HASH_TBL_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_update_multicast(%struct.ar9170* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %8 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %7)
  %9 = load i32, i32* @AR9170_MAC_REG_GROUP_HASH_TBL_H, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 32
  %12 = call i32 @carl9170_regwrite(i32 %9, i32 %11)
  %13 = load i32, i32* @AR9170_MAC_REG_GROUP_HASH_TBL_L, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @carl9170_regwrite(i32 %13, i32 %14)
  %16 = call i32 (...) @carl9170_regwrite_finish()
  %17 = call i32 (...) @carl9170_regwrite_result()
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %25 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
