; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_free_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd8111e_priv = type { i32*, i32, i32, i32*, i32 }

@NUM_RX_RING_DR = common dso_local global i32 0, align 4
@NUM_TX_RING_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd8111e_priv*)* @amd8111e_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111e_free_ring(%struct.amd8111e_priv* %0) #0 {
  %2 = alloca %struct.amd8111e_priv*, align 8
  store %struct.amd8111e_priv* %0, %struct.amd8111e_priv** %2, align 8
  %3 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %4 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NUM_RX_RING_DR, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %16 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %19 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pci_free_consistent(i32 %10, i32 %14, i32* %17, i32 %20)
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %7, %1
  %25 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %26 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %31 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NUM_TX_RING_DR, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %38 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %41 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pci_free_consistent(i32 %32, i32 %36, i32* %39, i32 %42)
  %44 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %45 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
