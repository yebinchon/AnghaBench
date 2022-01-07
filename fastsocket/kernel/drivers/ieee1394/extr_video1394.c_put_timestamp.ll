; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_put_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_put_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32 }
%struct.dma_iso_ctx = type { i32, i32, i32*, i32*, i32, %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i8* }

@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@curr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_ohci*, %struct.dma_iso_ctx*, i32)* @put_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_timestamp(%struct.ti_ohci* %0, %struct.dma_iso_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.ti_ohci*, align 8
  %5 = alloca %struct.dma_iso_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %4, align 8
  store %struct.dma_iso_ctx* %1, %struct.dma_iso_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %13, i64 %19
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %162

24:                                               ; preds = %3
  %25 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %26 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %27 = call i32 @reg_read(%struct.ti_ohci* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 4095
  %30 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = srem i32 %34, 3072
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %36, 3072
  %38 = shl i32 %37, 12
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 61440
  %42 = add nsw i32 %39, %41
  %43 = and i32 %42, 65535
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  store i8 %46, i8* %48, align 1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  store i8 %51, i8* %53, align 1
  %54 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = ashr i32 %66, 16
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %86

69:                                               ; preds = %24
  %70 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 8
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 6
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 255
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 7
  store i8 %83, i8* %85, align 1
  br label %86

86:                                               ; preds = %69, %24
  %87 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %162

97:                                               ; preds = %86
  %98 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %101, i64 %107
  store i8* %108, i8** %7, align 8
  %109 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 12
  %117 = and i32 %116, 65535
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = ashr i32 %120, 8
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 6
  store i8 %122, i8* %124, align 1
  %125 = load i32, i32* %9, align 4
  %126 = and i32 %125, 255
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 7
  store i8 %127, i8* %129, align 1
  %130 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %131 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %130, i32 0, i32 5
  %132 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %132, i64 %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @le32_to_cpu(i32 %141)
  %143 = ashr i32 %142, 16
  %144 = icmp eq i32 %143, 8
  br i1 %144, label %145, label %162

145:                                              ; preds = %97
  %146 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %147 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %7, align 8
  %152 = load i32, i32* %9, align 4
  %153 = ashr i32 %152, 8
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 6
  store i8 %154, i8* %156, align 1
  %157 = load i32, i32* %9, align 4
  %158 = and i32 %157, 255
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 7
  store i8 %159, i8* %161, align 1
  br label %162

162:                                              ; preds = %23, %96, %145, %97
  ret void
}

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
