; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_icm.c_mlx4_init_icm_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_icm.c_mlx4_init_icm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_icm_table = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i32 }

@MLX4_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MLX4_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_icm_table(%struct.mlx4_dev* %0, %struct.mlx4_icm_table* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca %struct.mlx4_icm_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %10, align 8
  store %struct.mlx4_icm_table* %1, %struct.mlx4_icm_table** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %24 = load i32, i32* %13, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %18, align 4
  %28 = add nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %18, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.TYPE_6__** @kcalloc(i32 %32, i32 8, i32 %33)
  %35 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %36 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %35, i32 0, i32 6
  store %struct.TYPE_6__** %34, %struct.TYPE_6__*** %36, align 8
  %37 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %38 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %37, i32 0, i32 6
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %38, align 8
  %40 = icmp ne %struct.TYPE_6__** %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %8
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %218

44:                                               ; preds = %8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %47 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %19, align 4
  %49 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %53 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %56 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %59 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %62 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %64 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %63, i32 0, i32 7
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %69

69:                                               ; preds = %168, %44
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 %73, %74
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %171

77:                                               ; preds = %69
  %78 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %22, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sub nsw i32 %86, %89
  %91 = call i32 @PAGE_ALIGN(i32 %90)
  store i32 %91, i32* %20, align 4
  br label %92

92:                                               ; preds = %85, %77
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* @PAGE_SHIFT, align 4
  %96 = lshr i32 %94, %95
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @GFP_KERNEL, align 4
  br label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @GFP_HIGHUSER, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = load i32, i32* @__GFP_NOWARN, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %17, align 4
  %108 = call %struct.TYPE_6__* @mlx4_alloc_icm(%struct.mlx4_dev* %93, i32 %96, i32 %106, i32 %107)
  %109 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %110 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %109, i32 0, i32 6
  %111 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %110, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %111, i64 %113
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %114, align 8
  %115 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %116 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %115, i32 0, i32 6
  %117 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %116, align 8
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %117, i64 %119
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = icmp ne %struct.TYPE_6__* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %103
  br label %172

124:                                              ; preds = %103
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %126 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %127 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %126, i32 0, i32 6
  %128 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %127, align 8
  %129 = load i32, i32* %21, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %128, i64 %130
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %133, %136
  %138 = call i64 @mlx4_MAP_ICM(%struct.mlx4_dev* %125, %struct.TYPE_6__* %132, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %124
  %141 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %142 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %143 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %142, i32 0, i32 6
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %143, align 8
  %145 = load i32, i32* %21, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %141, %struct.TYPE_6__* %148, i32 %149)
  %151 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %152 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %151, i32 0, i32 6
  %153 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %152, align 8
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %153, i64 %155
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %156, align 8
  br label %172

157:                                              ; preds = %124
  %158 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %159 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %158, i32 0, i32 6
  %160 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %159, align 8
  %161 = load i32, i32* %21, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %160, i64 %162
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %157
  %169 = load i32, i32* %21, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %21, align 4
  br label %69

171:                                              ; preds = %69
  store i32 0, i32* %9, align 4
  br label %218

172:                                              ; preds = %140, %123
  store i32 0, i32* %21, align 4
  br label %173

173:                                              ; preds = %208, %172
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %19, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %211

177:                                              ; preds = %173
  %178 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %179 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %178, i32 0, i32 6
  %180 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %179, align 8
  %181 = load i32, i32* %21, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %180, i64 %182
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = icmp ne %struct.TYPE_6__* %184, null
  br i1 %185, label %186, label %207

186:                                              ; preds = %177
  %187 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %191 = mul nsw i32 %189, %190
  %192 = add nsw i32 %188, %191
  %193 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %194 = load i32, i32* @MLX4_ICM_PAGE_SIZE, align 4
  %195 = sdiv i32 %193, %194
  %196 = call i32 @mlx4_UNMAP_ICM(%struct.mlx4_dev* %187, i32 %192, i32 %195)
  %197 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %198 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %199 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %198, i32 0, i32 6
  %200 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %199, align 8
  %201 = load i32, i32* %21, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %200, i64 %202
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %197, %struct.TYPE_6__* %204, i32 %205)
  br label %207

207:                                              ; preds = %186, %177
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %21, align 4
  br label %173

211:                                              ; preds = %173
  %212 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %213 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %212, i32 0, i32 6
  %214 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %213, align 8
  %215 = call i32 @kfree(%struct.TYPE_6__** %214)
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %211, %171, %41
  %219 = load i32, i32* %9, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_6__** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local %struct.TYPE_6__* @mlx4_alloc_icm(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i64 @mlx4_MAP_ICM(%struct.mlx4_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx4_UNMAP_ICM(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
