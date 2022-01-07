; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_btree_split_beneath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_btree_split_beneath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32, %struct.dm_block**, %struct.TYPE_7__* }
%struct.dm_block = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }

@INTERNAL_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, i64)* @btree_split_beneath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_split_beneath(%struct.shadow_spine* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shadow_spine*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_block*, align 8
  %11 = alloca %struct.dm_block*, align 8
  %12 = alloca %struct.dm_block*, align 8
  %13 = alloca %struct.btree_node*, align 8
  %14 = alloca %struct.btree_node*, align 8
  %15 = alloca %struct.btree_node*, align 8
  %16 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %18 = call %struct.dm_block* @shadow_current(%struct.shadow_spine* %17)
  store %struct.dm_block* %18, %struct.dm_block** %12, align 8
  %19 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %20 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @new_block(%struct.TYPE_7__* %21, %struct.dm_block** %10)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %286

27:                                               ; preds = %2
  %28 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %29 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @new_block(%struct.TYPE_7__* %30, %struct.dm_block** %11)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %286

36:                                               ; preds = %27
  %37 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %38 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %37)
  store %struct.btree_node* %38, %struct.btree_node** %13, align 8
  %39 = load %struct.dm_block*, %struct.dm_block** %10, align 8
  %40 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %39)
  store %struct.btree_node* %40, %struct.btree_node** %14, align 8
  %41 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %42 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %41)
  store %struct.btree_node* %42, %struct.btree_node** %15, align 8
  %43 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %44 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @le32_to_cpu(i8* %46)
  %48 = sdiv i32 %47, 2
  store i32 %48, i32* %8, align 4
  %49 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %50 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @le32_to_cpu(i8* %52)
  %54 = load i32, i32* %8, align 4
  %55 = sub i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %57 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %61 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %66 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i8* %64, i8** %67, align 8
  %68 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %69 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %73 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  %75 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %76 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %80 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %83 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %87 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i8* %85, i8** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %92 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %95 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %99 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %102 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %106 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %109 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %112 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i32* %110, i32* %113, i32 %117)
  %119 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %120 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %123 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memcpy(i32* %121, i32* %127, i32 %131)
  %133 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %134 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @le32_to_cpu(i8* %136)
  %138 = load i32, i32* @INTERNAL_NODE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %36
  br label %150

142:                                              ; preds = %36
  %143 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %144 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  br label %150

150:                                              ; preds = %142, %141
  %151 = phi i64 [ 4, %141 ], [ %149, %142 ]
  store i64 %151, i64* %7, align 8
  %152 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %153 = call i32* @value_ptr(%struct.btree_node* %152, i32 0)
  %154 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %155 = call i32* @value_ptr(%struct.btree_node* %154, i32 0)
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %7, align 8
  %159 = mul i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32 @memcpy(i32* %153, i32* %155, i32 %160)
  %162 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %163 = call i32* @value_ptr(%struct.btree_node* %162, i32 0)
  %164 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32* @value_ptr(%struct.btree_node* %164, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %7, align 8
  %170 = mul i64 %168, %169
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memcpy(i32* %163, i32* %166, i32 %171)
  %173 = load i32, i32* @INTERNAL_NODE, align 4
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %176 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  store i8* %174, i8** %177, align 8
  %178 = call i8* @cpu_to_le32(i32 2)
  %179 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %180 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  store i8* %178, i8** %181, align 8
  %182 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %183 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dm_tm_get_bm(i32 %186)
  %188 = call i32 @dm_bm_block_size(i32 %187)
  %189 = call i32 @calc_max_entries(i32 4, i32 %188)
  %190 = call i8* @cpu_to_le32(i32 %189)
  %191 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %192 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  store i8* %190, i8** %193, align 8
  %194 = call i8* @cpu_to_le32(i32 4)
  %195 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %196 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  store i8* %194, i8** %197, align 8
  %198 = load %struct.dm_block*, %struct.dm_block** %10, align 8
  %199 = call i32 @dm_block_location(%struct.dm_block* %198)
  %200 = call i32 @cpu_to_le64(i32 %199)
  store i32 %200, i32* %16, align 4
  %201 = call i32 @__dm_bless_for_disk(i32* %16)
  %202 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %203 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %208 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %206, i32* %210, align 4
  %211 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %212 = call i32* @value_ptr(%struct.btree_node* %211, i32 0)
  %213 = call i32 @memcpy_disk(i32* %212, i32* %16, i32 4)
  %214 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %215 = call i32 @dm_block_location(%struct.dm_block* %214)
  %216 = call i32 @cpu_to_le64(i32 %215)
  store i32 %216, i32* %16, align 4
  %217 = call i32 @__dm_bless_for_disk(i32* %16)
  %218 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %219 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %224 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  store i32 %222, i32* %226, align 4
  %227 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %228 = call i32* @value_ptr(%struct.btree_node* %227, i32 1)
  %229 = call i32 @memcpy_disk(i32* %228, i32* %16, i32 4)
  %230 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %231 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %230, i32 0, i32 1
  %232 = load %struct.dm_block**, %struct.dm_block*** %231, align 8
  %233 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %232, i64 0
  %234 = load %struct.dm_block*, %struct.dm_block** %233, align 8
  %235 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %236 = icmp ne %struct.dm_block* %234, %235
  br i1 %236, label %237, label %252

237:                                              ; preds = %150
  %238 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %239 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %238, i32 0, i32 2
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %242 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %241, i32 0, i32 1
  %243 = load %struct.dm_block**, %struct.dm_block*** %242, align 8
  %244 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %243, i64 0
  %245 = load %struct.dm_block*, %struct.dm_block** %244, align 8
  %246 = call i32 @unlock_block(%struct.TYPE_7__* %240, %struct.dm_block* %245)
  %247 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %248 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %249 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %248, i32 0, i32 1
  %250 = load %struct.dm_block**, %struct.dm_block*** %249, align 8
  %251 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %250, i64 0
  store %struct.dm_block* %247, %struct.dm_block** %251, align 8
  br label %252

252:                                              ; preds = %237, %150
  %253 = load i64, i64* %5, align 8
  %254 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %255 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = call i64 @le64_to_cpu(i32 %258)
  %260 = icmp slt i64 %253, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %252
  %262 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %263 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %262, i32 0, i32 2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %266 = call i32 @unlock_block(%struct.TYPE_7__* %264, %struct.dm_block* %265)
  %267 = load %struct.dm_block*, %struct.dm_block** %10, align 8
  %268 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %269 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %268, i32 0, i32 1
  %270 = load %struct.dm_block**, %struct.dm_block*** %269, align 8
  %271 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %270, i64 1
  store %struct.dm_block* %267, %struct.dm_block** %271, align 8
  br label %283

272:                                              ; preds = %252
  %273 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %274 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %273, i32 0, i32 2
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = load %struct.dm_block*, %struct.dm_block** %10, align 8
  %277 = call i32 @unlock_block(%struct.TYPE_7__* %275, %struct.dm_block* %276)
  %278 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %279 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %280 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %279, i32 0, i32 1
  %281 = load %struct.dm_block**, %struct.dm_block*** %280, align 8
  %282 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %281, i64 1
  store %struct.dm_block* %278, %struct.dm_block** %282, align 8
  br label %283

283:                                              ; preds = %272, %261
  %284 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %285 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %284, i32 0, i32 0
  store i32 2, i32* %285, align 8
  store i32 0, i32* %3, align 4
  br label %286

286:                                              ; preds = %283, %34, %25
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local %struct.dm_block* @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @new_block(%struct.TYPE_7__*, %struct.dm_block**) #1

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @calc_max_entries(i32, i32) #1

declare dso_local i32 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i32 @memcpy_disk(i32*, i32*, i32) #1

declare dso_local i32 @unlock_block(%struct.TYPE_7__*, %struct.dm_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
