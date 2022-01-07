; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_reset_ir_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_reset_ir_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_iso_ctx = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_iso_ctx*, i32)* @reset_ir_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_ir_status(%struct.dma_iso_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_iso_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dma_iso_ctx* %0, %struct.dma_iso_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i8* @cpu_to_le32(i32 4)
  %7 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i8* %6, i8** %15, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sub nsw i32 %16, 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %18, i8** %27, align 8
  store i32 2, i32* %5, align 4
  br label %28

28:                                               ; preds = %49, %2
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %37, i8** %48, align 8
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %56, i8** %67, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
