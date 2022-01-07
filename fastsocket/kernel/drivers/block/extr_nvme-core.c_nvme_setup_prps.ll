; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_setup_prps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_setup_prps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.dma_pool*, %struct.dma_pool* }
%struct.dma_pool = type { i32 }
%struct.nvme_common_command = type { i8*, i8* }
%struct.nvme_iod = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_setup_prps(%struct.nvme_dev* %0, %struct.nvme_common_command* %1, %struct.nvme_iod* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_dev*, align 8
  %8 = alloca %struct.nvme_common_command*, align 8
  %9 = alloca %struct.nvme_iod*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_pool*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i8***, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %7, align 8
  store %struct.nvme_common_command* %1, %struct.nvme_common_command** %8, align 8
  store %struct.nvme_iod* %2, %struct.nvme_iod** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %26 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %25, i32 0, i32 2
  %27 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  store %struct.scatterlist* %27, %struct.scatterlist** %14, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %29 = call i32 @sg_dma_len(%struct.scatterlist* %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %31 = call i32 @sg_dma_address(%struct.scatterlist* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @offset_in_page(i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %35 = call i8*** @iod_list(%struct.nvme_iod* %34)
  store i8*** %35, i8**** %19, align 8
  %36 = load i32, i32* %16, align 4
  %37 = call i8* @cpu_to_le64(i32 %36)
  %38 = load %struct.nvme_common_command*, %struct.nvme_common_command** %8, align 8
  %39 = getelementptr inbounds %struct.nvme_common_command, %struct.nvme_common_command* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i32, i32* %17, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %6, align 4
  br label %204

49:                                               ; preds = %5
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* %17, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %15, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* %17, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %16, align 4
  br label %70

63:                                               ; preds = %49
  %64 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %65 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %64)
  store %struct.scatterlist* %65, %struct.scatterlist** %14, align 8
  %66 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %67 = call i32 @sg_dma_address(%struct.scatterlist* %66)
  store i32 %67, i32* %16, align 4
  %68 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %69 = call i32 @sg_dma_len(%struct.scatterlist* %68)
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %63, %57
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %16, align 4
  %76 = call i8* @cpu_to_le64(i32 %75)
  %77 = load %struct.nvme_common_command*, %struct.nvme_common_command** %8, align 8
  %78 = getelementptr inbounds %struct.nvme_common_command, %struct.nvme_common_command* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %6, align 4
  br label %204

80:                                               ; preds = %70
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = call i32 @DIV_ROUND_UP(i32 %81, i32 %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %21, align 4
  %85 = icmp sle i32 %84, 32
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  %88 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %87, i32 0, i32 1
  %89 = load %struct.dma_pool*, %struct.dma_pool** %88, align 8
  store %struct.dma_pool* %89, %struct.dma_pool** %12, align 8
  %90 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %91 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %98

92:                                               ; preds = %80
  %93 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  %94 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %93, i32 0, i32 0
  %95 = load %struct.dma_pool*, %struct.dma_pool** %94, align 8
  store %struct.dma_pool* %95, %struct.dma_pool** %12, align 8
  %96 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %97 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.dma_pool*, %struct.dma_pool** %12, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i8** @dma_pool_alloc(%struct.dma_pool* %99, i32 %100, i32* %20)
  store i8** %101, i8*** %18, align 8
  %102 = load i8**, i8*** %18, align 8
  %103 = icmp ne i8** %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %16, align 4
  %106 = call i8* @cpu_to_le64(i32 %105)
  %107 = load %struct.nvme_common_command*, %struct.nvme_common_command** %8, align 8
  %108 = getelementptr inbounds %struct.nvme_common_command, %struct.nvme_common_command* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %110 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %109, i32 0, i32 0
  store i32 -1, i32* %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %6, align 4
  br label %204

116:                                              ; preds = %98
  %117 = load i8**, i8*** %18, align 8
  %118 = load i8***, i8**** %19, align 8
  %119 = getelementptr inbounds i8**, i8*** %118, i64 0
  store i8** %117, i8*** %119, align 8
  %120 = load i32, i32* %20, align 4
  %121 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %122 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %20, align 4
  %124 = call i8* @cpu_to_le64(i32 %123)
  %125 = load %struct.nvme_common_command*, %struct.nvme_common_command** %8, align 8
  %126 = getelementptr inbounds %struct.nvme_common_command, %struct.nvme_common_command* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  store i32 0, i32* %22, align 4
  br label %127

127:                                              ; preds = %191, %190, %116
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = sdiv i32 %129, 8
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %167

132:                                              ; preds = %127
  %133 = load i8**, i8*** %18, align 8
  store i8** %133, i8*** %23, align 8
  %134 = load %struct.dma_pool*, %struct.dma_pool** %12, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i8** @dma_pool_alloc(%struct.dma_pool* %134, i32 %135, i32* %20)
  store i8** %136, i8*** %18, align 8
  %137 = load i8**, i8*** %18, align 8
  %138 = icmp ne i8** %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %13, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %6, align 4
  br label %204

143:                                              ; preds = %132
  %144 = load i8**, i8*** %18, align 8
  %145 = load i8***, i8**** %19, align 8
  %146 = load %struct.nvme_iod*, %struct.nvme_iod** %9, align 8
  %147 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8**, i8*** %145, i64 %150
  store i8** %144, i8*** %151, align 8
  %152 = load i8**, i8*** %23, align 8
  %153 = load i32, i32* %22, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = load i8**, i8*** %18, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* %20, align 4
  %161 = call i8* @cpu_to_le64(i32 %160)
  %162 = load i8**, i8*** %23, align 8
  %163 = load i32, i32* %22, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %162, i64 %165
  store i8* %161, i8** %166, align 8
  store i32 1, i32* %22, align 4
  br label %167

167:                                              ; preds = %143, %127
  %168 = load i32, i32* %16, align 4
  %169 = call i8* @cpu_to_le64(i32 %168)
  %170 = load i8**, i8*** %18, align 8
  %171 = load i32, i32* %22, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %22, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8*, i8** %170, i64 %173
  store i8* %169, i8** %174, align 8
  %175 = load i32, i32* @PAGE_SIZE, align 4
  %176 = load i32, i32* %15, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* @PAGE_SIZE, align 4
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* @PAGE_SIZE, align 4
  %182 = load i32, i32* %13, align 4
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %167
  br label %202

187:                                              ; preds = %167
  %188 = load i32, i32* %15, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %127

191:                                              ; preds = %187
  %192 = load i32, i32* %15, align 4
  %193 = icmp slt i32 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @BUG_ON(i32 %194)
  %196 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %197 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %196)
  store %struct.scatterlist* %197, %struct.scatterlist** %14, align 8
  %198 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %199 = call i32 @sg_dma_address(%struct.scatterlist* %198)
  store i32 %199, i32* %16, align 4
  %200 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %201 = call i32 @sg_dma_len(%struct.scatterlist* %200)
  store i32 %201, i32* %15, align 4
  br label %127

202:                                              ; preds = %186
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %202, %139, %104, %74, %47
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i8*** @iod_list(%struct.nvme_iod*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8** @dma_pool_alloc(%struct.dma_pool*, i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
