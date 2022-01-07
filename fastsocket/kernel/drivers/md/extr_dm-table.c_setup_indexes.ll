; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_setup_indexes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_setup_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32*, i32** }

@CHILDREN_PER_NODE = common dso_local global i32 0, align 4
@NODE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@KEYS_PER_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*)* @setup_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_indexes(%struct.dm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %8 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 2
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %16 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CHILDREN_PER_NODE, align 4
  %24 = call i32 @dm_div_up(i32 %22, i32 %23)
  %25 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %26 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  %31 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %32 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %14
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* @NODE_SIZE, align 8
  %46 = call i64 @dm_vcalloc(i32 %44, i64 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %88

53:                                               ; preds = %43
  %54 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %55 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 2
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %84, %53
  %59 = load i32, i32* %4, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %58
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %64 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %63, i32 0, i32 2
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  store i32* %62, i32** %68, align 8
  %69 = load i32, i32* @KEYS_PER_NODE, align 4
  %70 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %71 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = mul i32 %69, %76
  %78 = load i32*, i32** %6, align 8
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %83 = call i32 @setup_btree_index(i32 %81, %struct.dm_table* %82)
  br label %84

84:                                               ; preds = %61
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %4, align 4
  br label %58

87:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @dm_div_up(i32, i32) #1

declare dso_local i64 @dm_vcalloc(i32, i64) #1

declare dso_local i32 @setup_btree_index(i32, %struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
