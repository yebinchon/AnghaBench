; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_buffer_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_buffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_buffer = type { i32, i32*, i32 }
%struct.fw_card = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_iso_buffer_destroy(%struct.fw_iso_buffer* %0, %struct.fw_card* %1) #0 {
  %3 = alloca %struct.fw_iso_buffer*, align 8
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_iso_buffer* %0, %struct.fw_iso_buffer** %3, align 8
  store %struct.fw_card* %1, %struct.fw_card** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %39, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @page_private(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %23 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dma_unmap_page(i32 %24, i32 %25, i32 %26, i32 %29)
  %31 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__free_page(i32 %37)
  br label %39

39:                                               ; preds = %13
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %7

42:                                               ; preds = %7
  %43 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %3, align 8
  %44 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %3, align 8
  %48 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  ret void
}

declare dso_local i32 @page_private(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
