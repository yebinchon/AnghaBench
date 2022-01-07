; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dma_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dma_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_dma_rx(%struct.b43legacy_dmaring* %0) #0 {
  %2 = alloca %struct.b43legacy_dmaring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %7 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @B43legacy_WARN_ON(i32 %8)
  %10 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %11 = call i32 @op32_get_current_rxslot(%struct.b43legacy_dmaring* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %17 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %1
  %21 = phi i1 [ false, %1 ], [ %19, %14 ]
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @B43legacy_WARN_ON(i32 %23)
  %25 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %26 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %39, %20
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %34 = call i32 @dma_rx(%struct.b43legacy_dmaring* %33, i32* %3)
  %35 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = call i32 @update_max_used_slots(%struct.b43legacy_dmaring* %35, i32 %37)
  br label %39

39:                                               ; preds = %32
  %40 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @next_slot(%struct.b43legacy_dmaring* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @op32_set_current_rxslot(%struct.b43legacy_dmaring* %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %49 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @op32_get_current_rxslot(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @dma_rx(%struct.b43legacy_dmaring*, i32*) #1

declare dso_local i32 @update_max_used_slots(%struct.b43legacy_dmaring*, i32) #1

declare dso_local i32 @next_slot(%struct.b43legacy_dmaring*, i32) #1

declare dso_local i32 @op32_set_current_rxslot(%struct.b43legacy_dmaring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
