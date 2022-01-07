; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_reprogram_dma_it_prg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_reprogram_dma_it_prg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_iso_ctx = type { i32, i32*, i32, i32, %struct.TYPE_4__, %struct.it_dma_prg** }
%struct.TYPE_4__ = type { i64 }
%struct.it_dma_prg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_iso_ctx*, i32, i32)* @reprogram_dma_it_prg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprogram_dma_it_prg(%struct.dma_iso_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dma_iso_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.it_dma_prg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dma_iso_ctx* %0, %struct.dma_iso_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %10, i32 0, i32 5
  %12 = load %struct.it_dma_prg**, %struct.it_dma_prg*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.it_dma_prg*, %struct.it_dma_prg** %12, i64 %14
  %16 = load %struct.it_dma_prg*, %struct.it_dma_prg** %15, align 8
  store %struct.it_dma_prg* %16, %struct.it_dma_prg** %7, align 8
  %17 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = add i64 %20, %26
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %65, %3
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %42, i32 0, i32 4
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 %44, %50
  %52 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %51, %55
  %57 = call i32 @dma_region_offset_to_bus(%struct.TYPE_4__* %43, i64 %56)
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.it_dma_prg*, %struct.it_dma_prg** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.it_dma_prg, %struct.it_dma_prg* %59, i64 %61
  %63 = getelementptr inbounds %struct.it_dma_prg, %struct.it_dma_prg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %41
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %35

68:                                               ; preds = %35
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_region_offset_to_bus(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
