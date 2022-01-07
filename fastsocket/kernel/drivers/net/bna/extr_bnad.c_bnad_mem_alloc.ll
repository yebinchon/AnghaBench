; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bna_mem_info = type { i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNA_MEM_T_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bna_mem_info*)* @bnad_mem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_mem_alloc(%struct.bnad* %0, %struct.bna_mem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna_mem_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store %struct.bna_mem_info* %1, %struct.bna_mem_info** %5, align 8
  %8 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %9 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %14 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %19 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %18, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  store i32 0, i32* %3, align 4
  br label %151

20:                                               ; preds = %12
  %21 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %22 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.TYPE_4__* @kcalloc(i32 %23, i32 4, i32 %24)
  %26 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %27 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %26, i32 0, i32 3
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %29 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %151

35:                                               ; preds = %20
  %36 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %37 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BNA_MEM_T_DMA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %99

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %95, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %45 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %98

48:                                               ; preds = %42
  %49 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %50 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %53 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 %51, i64* %58, align 8
  %59 = load %struct.bnad*, %struct.bnad** %4, align 8
  %60 = getelementptr inbounds %struct.bnad, %struct.bnad* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %64 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32* @dma_alloc_coherent(i32* %62, i64 %65, i32* %7, i32 %66)
  %68 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %69 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32* %67, i32** %74, align 8
  %75 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %76 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %48
  br label %145

85:                                               ; preds = %48
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %88 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = call i32 @BNA_SET_DMA_ADDR(i32 %86, i32* %93)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %42

98:                                               ; preds = %42
  br label %144

99:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %140, %99
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %103 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %100
  %107 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %108 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %111 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i64 %109, i64* %116, align 8
  %117 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %118 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i32* @kzalloc(i64 %119, i32 %120)
  %122 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %123 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32* %121, i32** %128, align 8
  %129 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %130 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %129, i32 0, i32 3
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %106
  br label %145

139:                                              ; preds = %106
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %100

143:                                              ; preds = %100
  br label %144

144:                                              ; preds = %143, %98
  store i32 0, i32* %3, align 4
  br label %151

145:                                              ; preds = %138, %84
  %146 = load %struct.bnad*, %struct.bnad** %4, align 8
  %147 = load %struct.bna_mem_info*, %struct.bna_mem_info** %5, align 8
  %148 = call i32 @bnad_mem_free(%struct.bnad* %146, %struct.bna_mem_info* %147)
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %144, %32, %17
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @BNA_SET_DMA_ADDR(i32, i32*) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @bnad_mem_free(%struct.bnad*, %struct.bna_mem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
