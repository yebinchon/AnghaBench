; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_icm.c_mlx4_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_icm.c_mlx4_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_icm = type { i32, i64 }
%struct.mlx4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_icm_chunk = type { i64, i64, i32*, i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MLX4_ICM_ALLOC_SIZE = common dso_local global i32 0, align 4
@MLX4_ICM_CHUNK_LEN = common dso_local global i64 0, align 8
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx4_icm* @mlx4_alloc_icm(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_icm*, align 8
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_icm*, align 8
  %11 = alloca %struct.mlx4_icm_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mlx4_icm_chunk* null, %struct.mlx4_icm_chunk** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @__GFP_HIGHMEM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi i1 [ false, %4 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @__GFP_HIGHMEM, align 4
  %27 = load i32, i32* @__GFP_NOWARN, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = call i8* @kmalloc(i32 16, i32 %30)
  %32 = bitcast i8* %31 to %struct.mlx4_icm*
  store %struct.mlx4_icm* %32, %struct.mlx4_icm** %10, align 8
  %33 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %34 = icmp ne %struct.mlx4_icm* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  store %struct.mlx4_icm* null, %struct.mlx4_icm** %5, align 8
  br label %210

36:                                               ; preds = %21
  %37 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %38 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %40 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load i32, i32* @MLX4_ICM_ALLOC_SIZE, align 4
  %43 = call i32 @get_order(i32 %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %171, %123, %36
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %176

47:                                               ; preds = %44
  %48 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %49 = icmp ne %struct.mlx4_icm_chunk* %48, null
  br i1 %49, label %77, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @__GFP_HIGHMEM, align 4
  %53 = load i32, i32* @__GFP_NOWARN, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  %57 = call i8* @kmalloc(i32 32, i32 %56)
  %58 = bitcast i8* %57 to %struct.mlx4_icm_chunk*
  store %struct.mlx4_icm_chunk* %58, %struct.mlx4_icm_chunk** %11, align 8
  %59 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %60 = icmp ne %struct.mlx4_icm_chunk* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %205

62:                                               ; preds = %50
  %63 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %64 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %67 = call i32 @sg_init_table(i32* %65, i64 %66)
  %68 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %69 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %71 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %73 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %72, i32 0, i32 3
  %74 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %75 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %74, i32 0, i32 0
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  br label %77

77:                                               ; preds = %62, %47
  br label %78

78:                                               ; preds = %83, %77
  %79 = load i32, i32* %12, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %12, align 4
  br label %78

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %91 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %95 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %98 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @mlx4_alloc_icm_coherent(i32* %93, i32* %100, i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  br label %115

104:                                              ; preds = %86
  %105 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %106 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %109 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @mlx4_alloc_icm_pages(i32* %111, i32 %112, i32 %113)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %104, %89
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %12, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %205

123:                                              ; preds = %118
  br label %44

124:                                              ; preds = %115
  %125 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %126 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %133 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %164

136:                                              ; preds = %124
  %137 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %138 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %136
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %144 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %147 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %150 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %153 = call i8* @pci_map_sg(%struct.TYPE_2__* %145, i32* %148, i64 %151, i32 %152)
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %156 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  %157 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %158 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp sle i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %142
  br label %205

162:                                              ; preds = %142
  br label %163

163:                                              ; preds = %162, %136
  br label %164

164:                                              ; preds = %163, %131
  %165 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %166 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store %struct.mlx4_icm_chunk* null, %struct.mlx4_icm_chunk** %11, align 8
  br label %171

171:                                              ; preds = %170, %164
  %172 = load i32, i32* %12, align 4
  %173 = shl i32 1, %172
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %7, align 4
  br label %44

176:                                              ; preds = %44
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %203, label %179

179:                                              ; preds = %176
  %180 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %181 = icmp ne %struct.mlx4_icm_chunk* %180, null
  br i1 %181, label %182, label %203

182:                                              ; preds = %179
  %183 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %184 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %183, i32 0, i32 0
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %187 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %190 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %193 = call i8* @pci_map_sg(%struct.TYPE_2__* %185, i32* %188, i64 %191, i32 %192)
  %194 = ptrtoint i8* %193 to i64
  %195 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %196 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %198 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp sle i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %182
  br label %205

202:                                              ; preds = %182
  br label %203

203:                                              ; preds = %202, %179, %176
  %204 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  store %struct.mlx4_icm* %204, %struct.mlx4_icm** %5, align 8
  br label %210

205:                                              ; preds = %201, %161, %122, %61
  %206 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %207 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %206, %struct.mlx4_icm* %207, i32 %208)
  store %struct.mlx4_icm* null, %struct.mlx4_icm** %5, align 8
  br label %210

210:                                              ; preds = %205, %203, %35
  %211 = load %struct.mlx4_icm*, %struct.mlx4_icm** %5, align 8
  ret %struct.mlx4_icm* %211
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @sg_init_table(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx4_alloc_icm_coherent(i32*, i32*, i32, i32) #1

declare dso_local i32 @mlx4_alloc_icm_pages(i32*, i32, i32) #1

declare dso_local i8* @pci_map_sg(%struct.TYPE_2__*, i32*, i64, i32) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, %struct.mlx4_icm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
