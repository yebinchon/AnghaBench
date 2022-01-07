; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_mutate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_mutate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry.0*)*, i32, i32, i32, i32, i32 }
%struct.disk_index_entry = type opaque
%struct.disk_index_entry.0 = type opaque
%struct.dm_block = type { i32 }
%struct.disk_index_entry.1 = type { i8*, i32, i32 }

@dm_sm_bitmap_validator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dm_tm_shadow_block() failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ref count insert failed\00", align 1
@SM_ALLOC = common dso_local global i32 0, align 4
@SM_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_disk*, i32, i32 (i8*, i32, i32*)*, i8*, i32*)* @sm_ll_mutate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_ll_mutate(%struct.ll_disk* %0, i32 %1, i32 (i8*, i32, i32*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ll_disk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, i32, i32*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dm_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.disk_index_entry.1, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 (i8*, i32, i32*)* %2, i32 (i8*, i32, i32*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %25 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @do_div(i32 %23, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %29 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %28, i32 0, i32 0
  %30 = load i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)** %29, align 8
  %31 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %32 = load i32, i32* %17, align 4
  %33 = bitcast %struct.disk_index_entry.1* %18 to %struct.disk_index_entry*
  %34 = call i32 %30(%struct.ll_disk* %31, i32 %32, %struct.disk_index_entry* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %215

39:                                               ; preds = %5
  %40 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %41 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = call i32 @dm_tm_shadow_block(i32 %42, i32 %45, i32* @dm_sm_bitmap_validator, %struct.dm_block** %16, i32* %20)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = call i32 @DMERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %215

52:                                               ; preds = %39
  %53 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %54 = call i32 @dm_block_location(%struct.dm_block* %53)
  %55 = call i32 @cpu_to_le64(i32 %54)
  %56 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %58 = call i8* @dm_bitmap_data(%struct.dm_block* %57)
  store i8* %58, i8** %19, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @sm_lookup_bitmap(i8* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %78

64:                                               ; preds = %52
  %65 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @sm_ll_lookup_big_ref_count(%struct.ll_disk* %65, i32 %66, i32* %14)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %72 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %75 = call i32 @dm_tm_unlock(i32 %73, %struct.dm_block* %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %215

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 %79(i8* %80, i32 %81, i32* %15)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %87 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %90 = call i32 @dm_tm_unlock(i32 %88, %struct.dm_block* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %215

92:                                               ; preds = %78
  %93 = load i32, i32* %15, align 4
  %94 = icmp sle i32 %93, 2
  br i1 %94, label %95, label %127

95:                                               ; preds = %92
  %96 = load i8*, i8** %19, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @sm_set_bitmap(i8* %96, i32 %97, i32 %98)
  %100 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %101 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %104 = call i32 @dm_tm_unlock(i32 %102, %struct.dm_block* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %6, align 4
  br label %215

109:                                              ; preds = %95
  %110 = load i32, i32* %14, align 4
  %111 = icmp sgt i32 %110, 2
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %114 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %113, i32 0, i32 4
  %115 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %116 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %119 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %118, i32 0, i32 3
  %120 = call i32 @dm_btree_remove(i32* %114, i32 %117, i32* %8, i32* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %6, align 4
  br label %215

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %109
  br label %158

127:                                              ; preds = %92
  %128 = load i32, i32* %15, align 4
  %129 = call i8* @cpu_to_le32(i32 %128)
  store i8* %129, i8** %21, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @sm_set_bitmap(i8* %130, i32 %131, i32 3)
  %133 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %134 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %137 = call i32 @dm_tm_unlock(i32 %135, %struct.dm_block* %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %6, align 4
  br label %215

142:                                              ; preds = %127
  %143 = call i32 @__dm_bless_for_disk(i8** %21)
  %144 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %145 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %144, i32 0, i32 4
  %146 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %147 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %150 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %149, i32 0, i32 3
  %151 = call i32 @dm_btree_insert(i32* %145, i32 %148, i32* %8, i8** %21, i32* %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %142
  %155 = call i32 @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %6, align 4
  br label %215

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %126
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %184

161:                                              ; preds = %158
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* @SM_ALLOC, align 4
  %166 = load i32*, i32** %11, align 8
  store i32 %165, i32* %166, align 4
  %167 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %168 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  %171 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 1
  %172 = call i32 @le32_add_cpu(i32* %171, i32 -1)
  %173 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @le32_to_cpu(i8* %174)
  %176 = load i32, i32* %13, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %164
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  %181 = call i8* @cpu_to_le32(i32 %180)
  %182 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 0
  store i8* %181, i8** %182, align 8
  br label %183

183:                                              ; preds = %178, %164
  br label %207

184:                                              ; preds = %161, %158
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %184
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %206, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @SM_FREE, align 4
  %192 = load i32*, i32** %11, align 8
  store i32 %191, i32* %192, align 4
  %193 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %194 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %194, align 8
  %197 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 1
  %198 = call i32 @le32_add_cpu(i32* %197, i32 1)
  %199 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @le32_to_cpu(i8* %200)
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @min(i32 %201, i32 %202)
  %204 = call i8* @cpu_to_le32(i32 %203)
  %205 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 0
  store i8* %204, i8** %205, align 8
  br label %206

206:                                              ; preds = %190, %187, %184
  br label %207

207:                                              ; preds = %206, %183
  %208 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %209 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %208, i32 0, i32 1
  %210 = load i32 (%struct.ll_disk*, i32, %struct.disk_index_entry.0*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry.0*)** %209, align 8
  %211 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %212 = load i32, i32* %17, align 4
  %213 = bitcast %struct.disk_index_entry.1* %18 to %struct.disk_index_entry.0*
  %214 = call i32 %210(%struct.ll_disk* %211, i32 %212, %struct.disk_index_entry.0* %213)
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %207, %154, %140, %123, %107, %85, %70, %49, %37
  %216 = load i32, i32* %6, align 4
  ret i32 %216
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @dm_tm_shadow_block(i32, i32, i32*, %struct.dm_block**, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i8* @dm_bitmap_data(%struct.dm_block*) #1

declare dso_local i32 @sm_lookup_bitmap(i8*, i32) #1

declare dso_local i32 @sm_ll_lookup_big_ref_count(%struct.ll_disk*, i32, i32*) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

declare dso_local i32 @sm_set_bitmap(i8*, i32, i32) #1

declare dso_local i32 @dm_btree_remove(i32*, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @__dm_bless_for_disk(i8**) #1

declare dso_local i32 @dm_btree_insert(i32*, i32, i32*, i8**, i32*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
