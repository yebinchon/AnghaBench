; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_build_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_build_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32*, i32, i32*, i32 }

@KEYS_PER_NODE = common dso_local global i32 0, align 4
@CHILDREN_PER_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*)* @dm_table_build_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_build_index(%struct.dm_table* %0) #0 {
  %2 = alloca %struct.dm_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %6 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @KEYS_PER_NODE, align 4
  %9 = call i32 @dm_div_up(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CHILDREN_PER_NODE, align 4
  %12 = call i32 @int_log(i32 %10, i32 %11)
  %13 = add nsw i32 1, %12
  %14 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %15 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %18 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %21 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  store i32 %16, i32* %25, align 4
  %26 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %27 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %30 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %33 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  store i32 %28, i32* %37, align 4
  %38 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %39 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %44 = call i32 @setup_indexes(%struct.dm_table* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dm_div_up(i32, i32) #1

declare dso_local i32 @int_log(i32, i32) #1

declare dso_local i32 @setup_indexes(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
