; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_btree_split_sibling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_btree_split_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { %struct.dm_block**, %struct.TYPE_7__* }
%struct.dm_block = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i32, i8* }

@INTERNAL_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, i32, i32, i64)* @btree_split_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_split_sibling(%struct.shadow_spine* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shadow_spine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dm_block*, align 8
  %15 = alloca %struct.dm_block*, align 8
  %16 = alloca %struct.dm_block*, align 8
  %17 = alloca %struct.btree_node*, align 8
  %18 = alloca %struct.btree_node*, align 8
  %19 = alloca %struct.btree_node*, align 8
  %20 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %21 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %22 = call %struct.dm_block* @shadow_current(%struct.shadow_spine* %21)
  store %struct.dm_block* %22, %struct.dm_block** %14, align 8
  %23 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %24 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i32 @new_block(%struct.TYPE_7__* %25, %struct.dm_block** %15)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %184

31:                                               ; preds = %4
  %32 = load %struct.dm_block*, %struct.dm_block** %14, align 8
  %33 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %32)
  store %struct.btree_node* %33, %struct.btree_node** %17, align 8
  %34 = load %struct.dm_block*, %struct.dm_block** %15, align 8
  %35 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %34)
  store %struct.btree_node* %35, %struct.btree_node** %18, align 8
  %36 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %37 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @le32_to_cpu(i8* %39)
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %12, align 4
  %42 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %43 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @le32_to_cpu(i8* %45)
  %47 = load i32, i32* %12, align 4
  %48 = sub i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %52 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %55 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %59 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %64 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %67 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %71 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  %73 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %74 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %78 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %81 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %84 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = call i32 @memcpy(i32* %82, i32* %88, i64 %91)
  %93 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %94 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @le32_to_cpu(i8* %96)
  %98 = load i32, i32* @INTERNAL_NODE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %31
  br label %110

102:                                              ; preds = %31
  %103 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %104 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  br label %110

110:                                              ; preds = %102, %101
  %111 = phi i64 [ 8, %101 ], [ %109, %102 ]
  store i64 %111, i64* %11, align 8
  %112 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %113 = call i32* @value_ptr(%struct.btree_node* %112, i32 0)
  %114 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32* @value_ptr(%struct.btree_node* %114, i32 %115)
  %117 = load i64, i64* %11, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = mul i64 %117, %119
  %121 = call i32 @memcpy(i32* %113, i32* %116, i64 %120)
  %122 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %123 = call %struct.dm_block* @shadow_parent(%struct.shadow_spine* %122)
  store %struct.dm_block* %123, %struct.dm_block** %16, align 8
  %124 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %125 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %124)
  store %struct.btree_node* %125, %struct.btree_node** %19, align 8
  %126 = load %struct.dm_block*, %struct.dm_block** %14, align 8
  %127 = call i32 @dm_block_location(%struct.dm_block* %126)
  %128 = call i32 @cpu_to_le64(i32 %127)
  store i32 %128, i32* %20, align 4
  %129 = call i32 @__dm_bless_for_disk(i32* %20)
  %130 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32* @value_ptr(%struct.btree_node* %130, i32 %131)
  %133 = call i32 @memcpy_disk(i32* %132, i32* %20, i32 4)
  %134 = load %struct.dm_block*, %struct.dm_block** %15, align 8
  %135 = call i32 @dm_block_location(%struct.dm_block* %134)
  %136 = call i32 @cpu_to_le64(i32 %135)
  store i32 %136, i32* %20, align 4
  %137 = call i32 @__dm_bless_for_disk(i32* %20)
  %138 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, 1
  %141 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %142 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @le64_to_cpu(i32 %145)
  %147 = call i32 @insert_at(i32 4, %struct.btree_node* %138, i32 %140, i64 %146, i32* %20)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %110
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %5, align 4
  br label %184

152:                                              ; preds = %110
  %153 = load i64, i64* %9, align 8
  %154 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %155 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @le64_to_cpu(i32 %158)
  %160 = icmp slt i64 %153, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %152
  %162 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %163 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %162, i32 0, i32 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = load %struct.dm_block*, %struct.dm_block** %15, align 8
  %166 = call i32 @unlock_block(%struct.TYPE_7__* %164, %struct.dm_block* %165)
  %167 = load %struct.dm_block*, %struct.dm_block** %14, align 8
  %168 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %169 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %168, i32 0, i32 0
  %170 = load %struct.dm_block**, %struct.dm_block*** %169, align 8
  %171 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %170, i64 1
  store %struct.dm_block* %167, %struct.dm_block** %171, align 8
  br label %183

172:                                              ; preds = %152
  %173 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %174 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = load %struct.dm_block*, %struct.dm_block** %14, align 8
  %177 = call i32 @unlock_block(%struct.TYPE_7__* %175, %struct.dm_block* %176)
  %178 = load %struct.dm_block*, %struct.dm_block** %15, align 8
  %179 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %180 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %179, i32 0, i32 0
  %181 = load %struct.dm_block**, %struct.dm_block*** %180, align 8
  %182 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %181, i64 1
  store %struct.dm_block* %178, %struct.dm_block** %182, align 8
  br label %183

183:                                              ; preds = %172, %161
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %183, %150, %29
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local %struct.dm_block* @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @new_block(%struct.TYPE_7__*, %struct.dm_block**) #1

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32* @value_ptr(%struct.btree_node*, i32) #1

declare dso_local %struct.dm_block* @shadow_parent(%struct.shadow_spine*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i32 @memcpy_disk(i32*, i32*, i32) #1

declare dso_local i32 @insert_at(i32, %struct.btree_node*, i32, i64, i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @unlock_block(%struct.TYPE_7__*, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
