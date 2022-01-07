; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32, i32, i64, i64, i64, %struct.adm8211_desc*, i32*, i32*, i32 }
%struct.adm8211_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @adm8211_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_alloc_rings(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.adm8211_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.adm8211_priv*, %struct.adm8211_priv** %7, align 8
  store %struct.adm8211_priv* %8, %struct.adm8211_priv** %4, align 8
  %9 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %10 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %15 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 %13, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kmalloc(i32 %20, i32 %21)
  %23 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %24 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %23, i32 0, i32 7
  store i32* %22, i32** %24, align 8
  %25 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %26 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %25, i32 0, i32 7
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %105

32:                                               ; preds = %1
  %33 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %34 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %38 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = getelementptr i8, i8* %36, i64 %41
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %45 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %44, i32 0, i32 6
  store i32* %43, i32** %45, align 8
  %46 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %47 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %52 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = add i64 %50, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %59 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %63 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %62, i32 0, i32 2
  %64 = call i64 @pci_alloc_consistent(i32 %60, i32 %61, i64* %63)
  %65 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %66 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %68 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %32
  %72 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %73 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  %76 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %77 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %76, i32 0, i32 7
  store i32* null, i32** %77, align 8
  %78 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %79 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %78, i32 0, i32 6
  store i32* null, i32** %79, align 8
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %105

82:                                               ; preds = %32
  %83 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %84 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %87 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = inttoptr i64 %90 to %struct.adm8211_desc*
  %92 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %93 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %92, i32 0, i32 5
  store %struct.adm8211_desc* %91, %struct.adm8211_desc** %93, align 8
  %94 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %95 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %98 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = add i64 %96, %101
  %103 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %104 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %82, %71, %29
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
