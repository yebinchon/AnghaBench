; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_destroy_busmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_destroy_busmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__**, %struct.TYPE_4__** }

@ehca_bmap = common dso_local global %struct.TYPE_4__* null, align 8
@EHCA_MAP_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ehca_destroy_busmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehca_bmap, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %77

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %71, %6
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @EHCA_MAP_ENTRIES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %74

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehca_bmap, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @ehca_bmap_valid(%struct.TYPE_4__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %71

22:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @EHCA_MAP_ENTRIES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehca_bmap, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @ehca_bmap_valid(%struct.TYPE_4__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %27
  br label %59

44:                                               ; preds = %27
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehca_bmap, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @kfree(%struct.TYPE_4__* %57)
  br label %59

59:                                               ; preds = %44, %43
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %23

62:                                               ; preds = %23
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehca_bmap, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @kfree(%struct.TYPE_4__* %69)
  br label %71

71:                                               ; preds = %62, %21
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %7

74:                                               ; preds = %7
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehca_bmap, align 8
  %76 = call i32 @kfree(%struct.TYPE_4__* %75)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @ehca_bmap, align 8
  br label %77

77:                                               ; preds = %74, %5
  ret void
}

declare dso_local i32 @ehca_bmap_valid(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
