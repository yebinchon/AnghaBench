; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_hash_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_hash_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i64*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_priv*, i32*)* @hash_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_del(%struct.emac_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @hash_get(i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %11 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %19 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %27 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %57

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %35, 32
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @BIT(i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = xor i64 %40, -1
  %42 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %43 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %56

46:                                               ; preds = %34
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, 32
  %49 = call i64 @BIT(i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = xor i64 %50, -1
  %52 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %53 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %46, %37
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @hash_get(i32*) #1

declare dso_local i64 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
