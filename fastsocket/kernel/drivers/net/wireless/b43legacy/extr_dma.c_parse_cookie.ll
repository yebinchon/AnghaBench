; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_parse_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_parse_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32 }
%struct.b43legacy_wldev = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43legacy_dmaring* (%struct.b43legacy_wldev*, i32, i32*)* @parse_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43legacy_dmaring* @parse_cookie(%struct.b43legacy_wldev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.b43legacy_dma*, align 8
  %8 = alloca %struct.b43legacy_dmaring*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 0
  store %struct.b43legacy_dma* %10, %struct.b43legacy_dma** %7, align 8
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 61440
  switch i32 %12, label %37 [
    i32 40960, label %13
    i32 45056, label %17
    i32 49152, label %21
    i32 53248, label %25
    i32 57344, label %29
    i32 61440, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %7, align 8
  %15 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %14, i32 0, i32 5
  %16 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %15, align 8
  store %struct.b43legacy_dmaring* %16, %struct.b43legacy_dmaring** %8, align 8
  br label %39

17:                                               ; preds = %3
  %18 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %7, align 8
  %19 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %18, i32 0, i32 4
  %20 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %19, align 8
  store %struct.b43legacy_dmaring* %20, %struct.b43legacy_dmaring** %8, align 8
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %7, align 8
  %23 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %22, i32 0, i32 3
  %24 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %23, align 8
  store %struct.b43legacy_dmaring* %24, %struct.b43legacy_dmaring** %8, align 8
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %7, align 8
  %27 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %26, i32 0, i32 2
  %28 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %27, align 8
  store %struct.b43legacy_dmaring* %28, %struct.b43legacy_dmaring** %8, align 8
  br label %39

29:                                               ; preds = %3
  %30 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %7, align 8
  %31 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %30, i32 0, i32 1
  %32 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %31, align 8
  store %struct.b43legacy_dmaring* %32, %struct.b43legacy_dmaring** %8, align 8
  br label %39

33:                                               ; preds = %3
  %34 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %7, align 8
  %35 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %34, i32 0, i32 0
  %36 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %35, align 8
  store %struct.b43legacy_dmaring* %36, %struct.b43legacy_dmaring** %8, align 8
  br label %39

37:                                               ; preds = %3
  %38 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %39

39:                                               ; preds = %37, %33, %29, %25, %21, %17, %13
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 4095
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %8, align 8
  %44 = icmp ne %struct.b43legacy_dmaring* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %8, align 8
  %53 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br label %56

56:                                               ; preds = %49, %45, %39
  %57 = phi i1 [ false, %45 ], [ false, %39 ], [ %55, %49 ]
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @B43legacy_WARN_ON(i32 %59)
  %61 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %8, align 8
  ret %struct.b43legacy_dmaring* %61
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
