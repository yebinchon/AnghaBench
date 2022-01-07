; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, i32, %struct.ath5k_desc*, i32, i32, i32, i32, %struct.ath5k_buf* }
%struct.ath5k_desc = type { i32 }
%struct.ath5k_buf = type { i32, i32, %struct.ath5k_desc* }

@ATH_TXBUF = common dso_local global i32 0, align 4
@ATH_RXBUF = common dso_local global i32 0, align 4
@ATH_BCBUF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't allocate descriptors\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATH5K_DEBUG_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"DMA map: %p (%zu) -> %llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"can't allocate bufptr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_desc_alloc(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_desc*, align 8
  %5 = alloca %struct.ath5k_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %9 = load i32, i32* @ATH_TXBUF, align 4
  %10 = load i32, i32* @ATH_RXBUF, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @ATH_BCBUF, align 4
  %13 = add nsw i32 %11, %12
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ath5k_desc* @dma_alloc_coherent(i32 %22, i32 %25, i32* %27, i32 %28)
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 3
  store %struct.ath5k_desc* %29, %struct.ath5k_desc** %31, align 8
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 3
  %34 = load %struct.ath5k_desc*, %struct.ath5k_desc** %33, align 8
  %35 = icmp eq %struct.ath5k_desc* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %38 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %188

41:                                               ; preds = %1
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %42, i32 0, i32 3
  %44 = load %struct.ath5k_desc*, %struct.ath5k_desc** %43, align 8
  store %struct.ath5k_desc* %44, %struct.ath5k_desc** %4, align 8
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %49 = load i32, i32* @ATH5K_DEBUG_ANY, align 4
  %50 = load %struct.ath5k_desc*, %struct.ath5k_desc** %4, align 8
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %48, i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.ath5k_desc* %50, i32 %53, i64 %57)
  %59 = load i32, i32* @ATH_TXBUF, align 4
  %60 = add nsw i32 1, %59
  %61 = load i32, i32* @ATH_RXBUF, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @ATH_BCBUF, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.ath5k_buf* @kcalloc(i32 %64, i32 16, i32 %65)
  store %struct.ath5k_buf* %66, %struct.ath5k_buf** %5, align 8
  %67 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %68 = icmp eq %struct.ath5k_buf* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %41
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %174

74:                                               ; preds = %41
  %75 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %76, i32 0, i32 8
  store %struct.ath5k_buf* %75, %struct.ath5k_buf** %77, align 8
  %78 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %79 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %78, i32 0, i32 7
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %97, %74
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @ATH_RXBUF, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load %struct.ath5k_desc*, %struct.ath5k_desc** %4, align 8
  %87 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %88 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %87, i32 0, i32 2
  store %struct.ath5k_desc* %86, %struct.ath5k_desc** %88, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %91 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %93 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %92, i32 0, i32 1
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %94, i32 0, i32 7
  %96 = call i32 @list_add_tail(i32* %93, i32* %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %7, align 4
  %100 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %101 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %100, i32 1
  store %struct.ath5k_buf* %101, %struct.ath5k_buf** %5, align 8
  %102 = load %struct.ath5k_desc*, %struct.ath5k_desc** %4, align 8
  %103 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %102, i32 1
  store %struct.ath5k_desc* %103, %struct.ath5k_desc** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 4
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %6, align 4
  br label %81

108:                                              ; preds = %81
  %109 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %110 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %109, i32 0, i32 6
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load i32, i32* @ATH_TXBUF, align 4
  %113 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %114 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %131, %108
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @ATH_TXBUF, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %115
  %120 = load %struct.ath5k_desc*, %struct.ath5k_desc** %4, align 8
  %121 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %122 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %121, i32 0, i32 2
  store %struct.ath5k_desc* %120, %struct.ath5k_desc** %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %125 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %127 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %126, i32 0, i32 1
  %128 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %129 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %128, i32 0, i32 6
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  br label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %7, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %135 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %134, i32 1
  store %struct.ath5k_buf* %135, %struct.ath5k_buf** %5, align 8
  %136 = load %struct.ath5k_desc*, %struct.ath5k_desc** %4, align 8
  %137 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %136, i32 1
  store %struct.ath5k_desc* %137, %struct.ath5k_desc** %4, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, 4
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %6, align 4
  br label %115

142:                                              ; preds = %115
  %143 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %144 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %143, i32 0, i32 5
  %145 = call i32 @INIT_LIST_HEAD(i32* %144)
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %162, %142
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @ATH_BCBUF, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %173

150:                                              ; preds = %146
  %151 = load %struct.ath5k_desc*, %struct.ath5k_desc** %4, align 8
  %152 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %153 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %152, i32 0, i32 2
  store %struct.ath5k_desc* %151, %struct.ath5k_desc** %153, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %156 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %158 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %157, i32 0, i32 1
  %159 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %160 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %159, i32 0, i32 5
  %161 = call i32 @list_add_tail(i32* %158, i32* %160)
  br label %162

162:                                              ; preds = %150
  %163 = load i32, i32* %7, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %7, align 4
  %165 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %166 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %165, i32 1
  store %struct.ath5k_buf* %166, %struct.ath5k_buf** %5, align 8
  %167 = load %struct.ath5k_desc*, %struct.ath5k_desc** %4, align 8
  %168 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %167, i32 1
  store %struct.ath5k_desc* %168, %struct.ath5k_desc** %4, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = add i64 %170, 4
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %6, align 4
  br label %146

173:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %192

174:                                              ; preds = %69
  %175 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %176 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %179 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %181, i32 0, i32 3
  %183 = load %struct.ath5k_desc*, %struct.ath5k_desc** %182, align 8
  %184 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %185 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dma_free_coherent(i32 %177, i32 %180, %struct.ath5k_desc* %183, i32 %186)
  br label %188

188:                                              ; preds = %174, %36
  %189 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %190 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %189, i32 0, i32 3
  store %struct.ath5k_desc* null, %struct.ath5k_desc** %190, align 8
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %188, %173
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.ath5k_desc* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, %struct.ath5k_desc*, i32, i64) #1

declare dso_local %struct.ath5k_buf* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.ath5k_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
