; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_alloc_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_alloc_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_frag_info* }
%struct.mlx4_en_frag_info = type { i64 }
%struct.mlx4_en_rx_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_rx_alloc = type { i64, i64, i64, i64 }
%struct.page = type { i32 }

@MLX4_EN_MAX_RX_FRAGS = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc*, i32)* @mlx4_en_alloc_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_alloc_frags(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_desc* %1, %struct.mlx4_en_rx_alloc* %2, %struct.mlx4_en_rx_alloc* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_rx_desc*, align 8
  %9 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %10 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mlx4_en_frag_info*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store %struct.mlx4_en_rx_desc* %1, %struct.mlx4_en_rx_desc** %8, align 8
  store %struct.mlx4_en_rx_alloc* %2, %struct.mlx4_en_rx_alloc** %9, align 8
  store %struct.mlx4_en_rx_alloc* %3, %struct.mlx4_en_rx_alloc** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @MLX4_EN_MAX_RX_FRAGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.mlx4_en_rx_alloc, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %82, %5
  %24 = load i32, i32* %17, align 4
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %23
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 2
  %32 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %31, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %32, i64 %34
  store %struct.mlx4_en_frag_info* %35, %struct.mlx4_en_frag_info** %14, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %37
  %39 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %39, i64 %41
  %43 = bitcast %struct.mlx4_en_rx_alloc* %38 to i8*
  %44 = bitcast %struct.mlx4_en_rx_alloc* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 8 %44, i64 32, i1 false)
  %45 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %14, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %49
  %51 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 16
  %53 = add nsw i64 %52, %47
  store i64 %53, i64* %51, align 16
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %55
  %57 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 16
  %59 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %14, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %63, i64 %65
  %67 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %29
  br label %82

71:                                               ; preds = %29
  %72 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %74
  %76 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %14, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @mlx4_alloc_pages(%struct.mlx4_en_priv* %72, %struct.mlx4_en_rx_alloc* %75, %struct.mlx4_en_frag_info* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %138

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %23

85:                                               ; preds = %23
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %134, %85
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %137

92:                                               ; preds = %86
  %93 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %9, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %93, i64 %95
  %97 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %97, i64 %99
  %101 = bitcast %struct.mlx4_en_rx_alloc* %96 to i8*
  %102 = bitcast %struct.mlx4_en_rx_alloc* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 32, i1 false)
  %103 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %103, i64 %105
  %107 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %109, i64 %111
  %113 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %108, %114
  store i64 %115, i64* %16, align 8
  %116 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %116, i64 %118
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %121
  %123 = bitcast %struct.mlx4_en_rx_alloc* %119 to i8*
  %124 = bitcast %struct.mlx4_en_rx_alloc* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 16 %124, i64 32, i1 false)
  %125 = load i64, i64* %16, align 8
  %126 = call i32 @cpu_to_be64(i64 %125)
  %127 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %8, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 4
  br label %134

134:                                              ; preds = %92
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %86

137:                                              ; preds = %86
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %193

138:                                              ; preds = %80
  br label %139

139:                                              ; preds = %189, %138
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %17, align 4
  %142 = icmp ne i32 %140, 0
  br i1 %142, label %143, label %190

143:                                              ; preds = %139
  %144 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %145 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %144, i32 0, i32 2
  %146 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %146, i64 %148
  store %struct.mlx4_en_frag_info* %149, %struct.mlx4_en_frag_info** %14, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %151
  %153 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %155, i64 %157
  %159 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %154, %160
  br i1 %161, label %162, label %189

162:                                              ; preds = %143
  %163 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %164 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %167
  %169 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 16
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %172
  %174 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %177 = call i32 @dma_unmap_page(i32 %165, i64 %170, i64 %175, i32 %176)
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %22, i64 %179
  %181 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to %struct.page*
  store %struct.page* %183, %struct.page** %15, align 8
  %184 = load %struct.page*, %struct.page** %15, align 8
  %185 = getelementptr inbounds %struct.page, %struct.page* %184, i32 0, i32 0
  %186 = call i32 @atomic_set(i32* %185, i32 1)
  %187 = load %struct.page*, %struct.page** %15, align 8
  %188 = call i32 @put_page(%struct.page* %187)
  br label %189

189:                                              ; preds = %162, %143
  br label %139

190:                                              ; preds = %139
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %193

193:                                              ; preds = %190, %137
  %194 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mlx4_alloc_pages(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_frag_info*, i32) #3

declare dso_local i32 @cpu_to_be64(i64) #3

declare dso_local i32 @dma_unmap_page(i32, i64, i64, i32) #3

declare dso_local i32 @atomic_set(i32*, i32) #3

declare dso_local i32 @put_page(%struct.page*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
