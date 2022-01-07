; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_redistribute3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_redistribute3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.child = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*, %struct.child*, %struct.btree_node*, %struct.btree_node*, %struct.btree_node*, i32, i32, i32)* @redistribute3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redistribute3(%struct.dm_btree_info* %0, %struct.btree_node* %1, %struct.child* %2, %struct.child* %3, %struct.child* %4, %struct.btree_node* %5, %struct.btree_node* %6, %struct.btree_node* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.dm_btree_info*, align 8
  %13 = alloca %struct.btree_node*, align 8
  %14 = alloca %struct.child*, align 8
  %15 = alloca %struct.child*, align 8
  %16 = alloca %struct.child*, align 8
  %17 = alloca %struct.btree_node*, align 8
  %18 = alloca %struct.btree_node*, align 8
  %19 = alloca %struct.btree_node*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %12, align 8
  store %struct.btree_node* %1, %struct.btree_node** %13, align 8
  store %struct.child* %2, %struct.child** %14, align 8
  store %struct.child* %3, %struct.child** %15, align 8
  store %struct.child* %4, %struct.child** %16, align 8
  store %struct.btree_node* %5, %struct.btree_node** %17, align 8
  store %struct.btree_node* %6, %struct.btree_node** %18, align 8
  store %struct.btree_node* %7, %struct.btree_node** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %26 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %27 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %24, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %21, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %22, align 4
  %35 = add nsw i32 %33, %34
  %36 = sdiv i32 %35, 3
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %25, align 4
  %38 = load i32, i32* %24, align 4
  %39 = icmp ugt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %22, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %11
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %25, align 4
  %48 = sub i32 %46, %47
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %23, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %58 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %59 = load i32, i32* %21, align 4
  %60 = call i32 @shift(%struct.btree_node* %57, %struct.btree_node* %58, i32 %59)
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %25, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %23, align 4
  %64 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %65 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @shift(%struct.btree_node* %64, %struct.btree_node* %65, i32 %66)
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %22, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %22, align 4
  br label %76

71:                                               ; preds = %51, %45
  %72 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %73 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %74 = load i32, i32* %23, align 4
  %75 = call i32 @shift(%struct.btree_node* %72, %struct.btree_node* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %56
  %77 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %78 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %22, align 4
  %81 = sub i32 %79, %80
  %82 = call i32 @shift(%struct.btree_node* %77, %struct.btree_node* %78, i32 %81)
  br label %120

83:                                               ; preds = %11
  %84 = load i32, i32* %25, align 4
  %85 = load i32, i32* %22, align 4
  %86 = sub i32 %84, %85
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %23, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %95 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %96 = load i32, i32* %21, align 4
  %97 = call i32 @shift(%struct.btree_node* %94, %struct.btree_node* %95, i32 %96)
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %21, align 4
  %100 = sub i32 %98, %99
  store i32 %100, i32* %23, align 4
  %101 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %102 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %103 = load i32, i32* %23, align 4
  %104 = call i32 @shift(%struct.btree_node* %101, %struct.btree_node* %102, i32 %103)
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %20, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %20, align 4
  br label %113

108:                                              ; preds = %89, %83
  %109 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %110 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %111 = load i32, i32* %23, align 4
  %112 = call i32 @shift(%struct.btree_node* %109, %struct.btree_node* %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %93
  %114 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %115 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %25, align 4
  %118 = sub i32 %116, %117
  %119 = call i32 @shift(%struct.btree_node* %114, %struct.btree_node* %115, i32 %118)
  br label %120

120:                                              ; preds = %113, %76
  %121 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %122 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %127 = load %struct.child*, %struct.child** %15, align 8
  %128 = getelementptr inbounds %struct.child, %struct.child* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32* @key_ptr(%struct.btree_node* %126, i32 %129)
  store i32 %125, i32* %130, align 4
  %131 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %132 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %137 = load %struct.child*, %struct.child** %16, align 8
  %138 = getelementptr inbounds %struct.child, %struct.child* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32* @key_ptr(%struct.btree_node* %136, i32 %139)
  store i32 %135, i32* %140, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @shift(%struct.btree_node*, %struct.btree_node*, i32) #1

declare dso_local i32* @key_ptr(%struct.btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
