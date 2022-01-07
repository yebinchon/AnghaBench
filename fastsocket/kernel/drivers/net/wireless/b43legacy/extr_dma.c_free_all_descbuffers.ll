; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_free_all_descbuffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_free_all_descbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, i64, i32 }
%struct.b43legacy_dmadesc_meta = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_dmaring*)* @free_all_descbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_all_descbuffers(%struct.b43legacy_dmaring* %0) #0 {
  %2 = alloca %struct.b43legacy_dmaring*, align 8
  %3 = alloca %struct.b43legacy_dmadesc_meta*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %2, align 8
  %5 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %65

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %62, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %14 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %11
  %18 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @op32_idx2desc(%struct.b43legacy_dmaring* %18, i32 %19, %struct.b43legacy_dmadesc_meta** %3)
  %21 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %3, align 8
  %22 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %27 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @B43legacy_WARN_ON(i32 %31)
  br label %62

33:                                               ; preds = %17
  %34 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %35 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %40 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %3, align 8
  %41 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %3, align 8
  %44 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @unmap_descbuffer(%struct.b43legacy_dmaring* %39, i32 %42, i32 %47, i32 1)
  br label %58

49:                                               ; preds = %33
  %50 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %51 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %3, align 8
  %52 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %55 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @unmap_descbuffer(%struct.b43legacy_dmaring* %50, i32 %53, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %49, %38
  %59 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %60 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %3, align 8
  %61 = call i32 @free_descriptor_buffer(%struct.b43legacy_dmaring* %59, %struct.b43legacy_dmadesc_meta* %60, i32 0)
  br label %62

62:                                               ; preds = %58, %25
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %11

65:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @op32_idx2desc(%struct.b43legacy_dmaring*, i32, %struct.b43legacy_dmadesc_meta**) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43legacy_dmaring*, i32, i32, i32) #1

declare dso_local i32 @free_descriptor_buffer(%struct.b43legacy_dmaring*, %struct.b43legacy_dmadesc_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
