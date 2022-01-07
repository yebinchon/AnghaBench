; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_node_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_node_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_node*, i32)* @node_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_shift(%struct.btree_node* %0, i32 %1) #0 {
  %3 = alloca %struct.btree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btree_node* %0, %struct.btree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %8 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %13 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @key_ptr(%struct.btree_node* %27, i32 %28)
  %30 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @value_ptr(%struct.btree_node* %30, i32 %31)
  %33 = icmp uge i8* %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %37 = call i8* @key_ptr(%struct.btree_node* %36, i32 0)
  %38 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i8* @key_ptr(%struct.btree_node* %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memmove(i8* %37, i8* %40, i32 %46)
  %48 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %49 = call i8* @value_ptr(%struct.btree_node* %48, i32 0)
  %50 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i8* @value_ptr(%struct.btree_node* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %55, %56
  %58 = call i32 @memmove(i8* %49, i8* %52, i32 %57)
  br label %90

59:                                               ; preds = %2
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %64 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = icmp sgt i32 %62, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i8* @key_ptr(%struct.btree_node* %71, i32 %72)
  %74 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %75 = call i8* @key_ptr(%struct.btree_node* %74, i32 0)
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memmove(i8* %73, i8* %75, i32 %79)
  %81 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i8* @value_ptr(%struct.btree_node* %81, i32 %82)
  %84 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %85 = call i8* @value_ptr(%struct.btree_node* %84, i32 0)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call i32 @memmove(i8* %83, i8* %85, i32 %88)
  br label %90

90:                                               ; preds = %59, %19
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @key_ptr(%struct.btree_node*, i32) #1

declare dso_local i8* @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
