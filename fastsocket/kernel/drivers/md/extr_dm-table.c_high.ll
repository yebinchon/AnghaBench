; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_high.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32* }

@CHILDREN_PER_NODE = common dso_local global i64 0, align 8
@KEYS_PER_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, i32, i32)* @high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @high(%struct.dm_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %11 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* @CHILDREN_PER_NODE, align 8
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @get_child(i32 %16, i64 %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %26 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp uge i32 %24, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %44

34:                                               ; preds = %23
  %35 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32* @get_node(%struct.dm_table* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @KEYS_PER_NODE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %34, %33
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @get_child(i32, i64) #1

declare dso_local i32* @get_node(%struct.dm_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
