; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_rfd_ftl.c_find_free_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_rfd_ftl.c_find_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@BLOCK_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.partition*)* @find_free_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_block(%struct.partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.partition* %0, %struct.partition** %3, align 8
  %6 = load %struct.partition*, %struct.partition** %3, align 8
  %7 = getelementptr inbounds %struct.partition, %struct.partition* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @jiffies, align 4
  %12 = load %struct.partition*, %struct.partition** %3, align 8
  %13 = getelementptr inbounds %struct.partition, %struct.partition* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %11, %14
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.partition*, %struct.partition** %3, align 8
  %18 = getelementptr inbounds %struct.partition, %struct.partition* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %15, %10 ], [ %19, %16 ]
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %65, %20
  %24 = load %struct.partition*, %struct.partition** %3, align 8
  %25 = getelementptr inbounds %struct.partition, %struct.partition* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.partition*, %struct.partition** %3, align 8
  %36 = getelementptr inbounds %struct.partition, %struct.partition* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %70

41:                                               ; preds = %33, %23
  %42 = load %struct.partition*, %struct.partition** %3, align 8
  %43 = getelementptr inbounds %struct.partition, %struct.partition* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BLOCK_UNUSED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.partition*, %struct.partition** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @erase_block(%struct.partition* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %41
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load %struct.partition*, %struct.partition** %3, align 8
  %60 = getelementptr inbounds %struct.partition, %struct.partition* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %23, label %69

69:                                               ; preds = %65
  store i32 -1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @erase_block(%struct.partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
