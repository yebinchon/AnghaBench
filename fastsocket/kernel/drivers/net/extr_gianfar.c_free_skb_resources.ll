; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_free_skb_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_free_skb_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i32, i32, i32**, i32, %struct.TYPE_3__*, %struct.rxbd8*, i32**, %struct.txbd8* }
%struct.TYPE_3__ = type { i32 }
%struct.rxbd8 = type { i64, i64 }
%struct.txbd8 = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_private*)* @free_skb_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_skb_resources(%struct.gfar_private* %0) #0 {
  %2 = alloca %struct.gfar_private*, align 8
  %3 = alloca %struct.rxbd8*, align 8
  %4 = alloca %struct.txbd8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gfar_private* %0, %struct.gfar_private** %2, align 8
  %7 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %8 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %7, i32 0, i32 7
  %9 = load %struct.txbd8*, %struct.txbd8** %8, align 8
  store %struct.txbd8* %9, %struct.txbd8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %89, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %13 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %10
  %17 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %18 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %17, i32 0, i32 6
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %89

26:                                               ; preds = %16
  %27 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %28 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %32 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %35 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @dma_unmap_single(i32* %30, i64 %33, i32 %36, i32 %37)
  %39 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %40 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %69, %26
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %44 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %43, i32 0, i32 6
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call %struct.TYPE_4__* @skb_shinfo(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %42, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %41
  %55 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %56 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %55, i32 1
  store %struct.txbd8* %56, %struct.txbd8** %4, align 8
  %57 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %58 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %57, i32 0, i32 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %62 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %65 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @dma_unmap_page(i32* %60, i64 %63, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %41

72:                                               ; preds = %41
  %73 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %74 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %73, i32 1
  store %struct.txbd8* %74, %struct.txbd8** %4, align 8
  %75 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %76 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %75, i32 0, i32 6
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @dev_kfree_skb_any(i32* %81)
  %83 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %84 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %83, i32 0, i32 6
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %72, %25
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %10

92:                                               ; preds = %10
  %93 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %94 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %93, i32 0, i32 6
  %95 = load i32**, i32*** %94, align 8
  %96 = call i32 @kfree(i32** %95)
  %97 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %98 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %97, i32 0, i32 5
  %99 = load %struct.rxbd8*, %struct.rxbd8** %98, align 8
  store %struct.rxbd8* %99, %struct.rxbd8** %3, align 8
  %100 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %101 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %100, i32 0, i32 2
  %102 = load i32**, i32*** %101, align 8
  %103 = icmp ne i32** %102, null
  br i1 %103, label %104, label %162

104:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %154, %104
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %108 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %157

111:                                              ; preds = %105
  %112 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %113 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %112, i32 0, i32 2
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %147

120:                                              ; preds = %111
  %121 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %122 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %121, i32 0, i32 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load %struct.rxbd8*, %struct.rxbd8** %3, align 8
  %126 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %129 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %132 = call i32 @dma_unmap_single(i32* %124, i64 %127, i32 %130, i32 %131)
  %133 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %134 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %133, i32 0, i32 2
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @dev_kfree_skb_any(i32* %139)
  %141 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %142 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %141, i32 0, i32 2
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  store i32* null, i32** %146, align 8
  br label %147

147:                                              ; preds = %120, %111
  %148 = load %struct.rxbd8*, %struct.rxbd8** %3, align 8
  %149 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load %struct.rxbd8*, %struct.rxbd8** %3, align 8
  %151 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load %struct.rxbd8*, %struct.rxbd8** %3, align 8
  %153 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %152, i32 1
  store %struct.rxbd8* %153, %struct.rxbd8** %3, align 8
  br label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %105

157:                                              ; preds = %105
  %158 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %159 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %158, i32 0, i32 2
  %160 = load i32**, i32*** %159, align 8
  %161 = call i32 @kfree(i32** %160)
  br label %162

162:                                              ; preds = %157, %92
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(i32*) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
