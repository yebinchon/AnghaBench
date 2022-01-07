; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_mr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.ipath_mr**, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ipath_lkey_table = type { i32 }

@IPATH_SEGSZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipath_mr* (i32, %struct.ipath_lkey_table*)* @alloc_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipath_mr* @alloc_mr(i32 %0, %struct.ipath_lkey_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipath_lkey_table*, align 8
  %5 = alloca %struct.ipath_mr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ipath_lkey_table* %1, %struct.ipath_lkey_table** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IPATH_SEGSZ, align 4
  %10 = add nsw i32 %8, %9
  %11 = sub nsw i32 %10, 1
  %12 = load i32, i32* @IPATH_SEGSZ, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = add i64 32, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.ipath_mr*
  store %struct.ipath_mr* %21, %struct.ipath_mr** %5, align 8
  %22 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %23 = icmp ne %struct.ipath_mr* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %96

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i32 32, i32 %31)
  %33 = bitcast i8* %32 to %struct.ipath_mr*
  %34 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %35 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.ipath_mr**, %struct.ipath_mr*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ipath_mr*, %struct.ipath_mr** %37, i64 %39
  store %struct.ipath_mr* %33, %struct.ipath_mr** %40, align 8
  %41 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %42 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.ipath_mr**, %struct.ipath_mr*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ipath_mr*, %struct.ipath_mr** %44, i64 %46
  %48 = load %struct.ipath_mr*, %struct.ipath_mr** %47, align 8
  %49 = icmp ne %struct.ipath_mr* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %30
  br label %77

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %58 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %4, align 8
  %61 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %62 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %61, i32 0, i32 0
  %63 = call i32 @ipath_alloc_lkey(%struct.ipath_lkey_table* %60, %struct.TYPE_4__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %77

66:                                               ; preds = %55
  %67 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %68 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %72 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %75 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %70, i32* %76, align 4
  br label %96

77:                                               ; preds = %65, %50
  br label %78

78:                                               ; preds = %81, %77
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  %84 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %85 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.ipath_mr**, %struct.ipath_mr*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ipath_mr*, %struct.ipath_mr** %87, i64 %89
  %91 = load %struct.ipath_mr*, %struct.ipath_mr** %90, align 8
  %92 = call i32 @kfree(%struct.ipath_mr* %91)
  br label %78

93:                                               ; preds = %78
  %94 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  %95 = call i32 @kfree(%struct.ipath_mr* %94)
  store %struct.ipath_mr* null, %struct.ipath_mr** %5, align 8
  br label %96

96:                                               ; preds = %93, %66, %24
  %97 = load %struct.ipath_mr*, %struct.ipath_mr** %5, align 8
  ret %struct.ipath_mr* %97
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ipath_alloc_lkey(%struct.ipath_lkey_table*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.ipath_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
