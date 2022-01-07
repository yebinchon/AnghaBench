; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_keys.c_ipath_alloc_lkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_keys.c_ipath_alloc_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_lkey_table = type { i64, i32, i32, i32, %struct.ipath_mregion** }
%struct.ipath_mregion = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"LKEY table full\0A\00", align 1
@ib_ipath_lkey_table_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_alloc_lkey(%struct.ipath_lkey_table* %0, %struct.ipath_mregion* %1) #0 {
  %3 = alloca %struct.ipath_lkey_table*, align 8
  %4 = alloca %struct.ipath_mregion*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ipath_lkey_table* %0, %struct.ipath_lkey_table** %3, align 8
  store %struct.ipath_mregion* %1, %struct.ipath_mregion** %4, align 8
  %9 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %10 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %9, i32 0, i32 3
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %14 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %43, %2
  %17 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %18 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %17, i32 0, i32 4
  %19 = load %struct.ipath_mregion**, %struct.ipath_mregion*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.ipath_mregion*, %struct.ipath_mregion** %19, i64 %20
  %22 = load %struct.ipath_mregion*, %struct.ipath_mregion** %21, align 8
  %23 = icmp eq %struct.ipath_mregion* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %44

25:                                               ; preds = %16
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  %28 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %29 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = and i64 %27, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %39 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %38, i32 0, i32 3
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = call i32 @ipath_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %101

43:                                               ; preds = %25
  br label %16

44:                                               ; preds = %24
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  %47 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %48 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = and i64 %46, %51
  %53 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %54 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %56 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* @ib_ipath_lkey_table_size, align 4
  %61 = sub nsw i32 32, %60
  %62 = zext i32 %61 to i64
  %63 = shl i64 %59, %62
  %64 = load i32, i32* @ib_ipath_lkey_table_size, align 4
  %65 = sub nsw i32 24, %64
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %69 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  %72 = shl i32 %71, 8
  %73 = sext i32 %72 to i64
  %74 = or i64 %63, %73
  %75 = load %struct.ipath_mregion*, %struct.ipath_mregion** %4, align 8
  %76 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.ipath_mregion*, %struct.ipath_mregion** %4, align 8
  %78 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %44
  %82 = load %struct.ipath_mregion*, %struct.ipath_mregion** %4, align 8
  %83 = getelementptr inbounds %struct.ipath_mregion, %struct.ipath_mregion* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %84, 256
  store i64 %85, i64* %83, align 8
  %86 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %87 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %81, %44
  %91 = load %struct.ipath_mregion*, %struct.ipath_mregion** %4, align 8
  %92 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %93 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %92, i32 0, i32 4
  %94 = load %struct.ipath_mregion**, %struct.ipath_mregion*** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.ipath_mregion*, %struct.ipath_mregion** %94, i64 %95
  store %struct.ipath_mregion* %91, %struct.ipath_mregion** %96, align 8
  %97 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %3, align 8
  %98 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %97, i32 0, i32 3
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %90, %37
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
