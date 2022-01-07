; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_alloc_targets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_alloc_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32, %struct.dm_target*, %struct.dm_target* }
%struct.dm_target = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, i32)* @alloc_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_targets(%struct.dm_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %10 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %12, 1
  %14 = call i64 @dm_vcalloc(i32 %13, i32 8)
  %15 = inttoptr i64 %14 to %struct.dm_target*
  store %struct.dm_target* %15, %struct.dm_target** %6, align 8
  %16 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %17 = icmp ne %struct.dm_target* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i64 %24
  store %struct.dm_target* %25, %struct.dm_target** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %30 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %31 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %30, i32 0, i32 3
  %32 = load %struct.dm_target*, %struct.dm_target** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(%struct.dm_target* %29, %struct.dm_target* %32, i32 %36)
  %38 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %39 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %40 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %39, i32 0, i32 2
  %41 = load %struct.dm_target*, %struct.dm_target** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(%struct.dm_target* %38, %struct.dm_target* %41, i32 %45)
  br label %47

47:                                               ; preds = %28, %21
  %48 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %48, i64 %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memset(%struct.dm_target* %51, i32 -1, i32 %57)
  %59 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %60 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %59, i32 0, i32 3
  %61 = load %struct.dm_target*, %struct.dm_target** %60, align 8
  %62 = call i32 @vfree(%struct.dm_target* %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %65 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %67 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %68 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %67, i32 0, i32 3
  store %struct.dm_target* %66, %struct.dm_target** %68, align 8
  %69 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %70 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %71 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %70, i32 0, i32 2
  store %struct.dm_target* %69, %struct.dm_target** %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %47, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @dm_vcalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.dm_target*, %struct.dm_target*, i32) #1

declare dso_local i32 @memset(%struct.dm_target*, i32, i32) #1

declare dso_local i32 @vfree(%struct.dm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
