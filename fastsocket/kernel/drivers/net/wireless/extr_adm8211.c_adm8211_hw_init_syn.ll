; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_hw_init_syn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_hw_init_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @adm8211_hw_init_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_hw_init_syn(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.adm8211_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  store %struct.adm8211_priv* %6, %struct.adm8211_priv** %3, align 8
  %7 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %8 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %70 [
    i32 129, label %10
    i32 128, label %10
    i32 131, label %33
    i32 132, label %44
    i32 130, label %69
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %11, i32 31, i32 0)
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %13, i32 12, i32 196639)
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %15, i32 1, i32 171011)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %17, i32 3, i32 130927)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %19, i32 4, i32 168963)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %21, i32 7, i32 83311)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %25 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 129
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 65616, i32 80
  %30 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %23, i32 9, i32 %29)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %31, i32 8, i32 262136)
  br label %71

33:                                               ; preds = %1
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = call i32 @adm8211_rf_write_syn_max2820(%struct.ieee80211_hw* %34, i32 1, i32 30)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = call i32 @adm8211_rf_write_syn_max2820(%struct.ieee80211_hw* %36, i32 2, i32 1)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = call i32 @adm8211_rf_write_syn_max2820(%struct.ieee80211_hw* %38, i32 3, i32 84)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %41 = call i32 @adm8211_rf_write_syn_max2820(%struct.ieee80211_hw* %40, i32 4, i32 784)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = call i32 @adm8211_rf_write_syn_max2820(%struct.ieee80211_hw* %42, i32 5, i32 0)
  br label %71

44:                                               ; preds = %1
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %45, i32 0, i32 6508)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %47, i32 1, i32 1995)
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %50 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %49, i32 2, i32 219183)
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %51, i32 3, i32 4265)
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %54 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %53, i32 4, i32 488064)
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %56 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %55, i32 5, i32 284225)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %57, i32 6, i32 958768)
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %60 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %59, i32 7, i32 524288)
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %62 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %61, i32 8, i32 492815)
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %64 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %63, i32 9, i32 1019916)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %65, i32 10, i32 0)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %67, i32 11, i32 0)
  br label %71

69:                                               ; preds = %1
  br label %70

70:                                               ; preds = %1, %69
  br label %71

71:                                               ; preds = %70, %44, %33, %10
  ret void
}

declare dso_local i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @adm8211_rf_write_syn_max2820(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
