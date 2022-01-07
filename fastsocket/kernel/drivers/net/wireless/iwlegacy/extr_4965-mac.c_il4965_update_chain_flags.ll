; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_update_chain_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_update_chain_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.il_priv*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_update_chain_flags(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %4 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %6, align 8
  %8 = icmp ne i32 (%struct.il_priv*)* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %13, align 8
  %15 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %16 = call i32 %14(%struct.il_priv* %15)
  %17 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %28 = call i32 @il_commit_rxon(%struct.il_priv* %27)
  br label %29

29:                                               ; preds = %26, %9
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @il_commit_rxon(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
