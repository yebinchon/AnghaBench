; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_map_phys_fmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_map_phys_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32 }
%struct.ipath_fmr = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__**, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.ipath_lkey_table = type { i32 }
%struct.TYPE_8__ = type { %struct.ipath_lkey_table }

@EINVAL = common dso_local global i32 0, align 4
@IPATH_SEGSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_map_phys_fmr(%struct.ib_fmr* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ib_fmr*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipath_fmr*, align 8
  %10 = alloca %struct.ipath_lkey_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_fmr* %0, %struct.ib_fmr** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %17 = load %struct.ib_fmr*, %struct.ib_fmr** %5, align 8
  %18 = call %struct.ipath_fmr* @to_ifmr(%struct.ib_fmr* %17)
  store %struct.ipath_fmr* %18, %struct.ipath_fmr** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ipath_fmr*, %struct.ipath_fmr** %9, align 8
  %21 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %16, align 4
  br label %115

28:                                               ; preds = %4
  %29 = load %struct.ib_fmr*, %struct.ib_fmr** %5, align 8
  %30 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_8__* @to_idev(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store %struct.ipath_lkey_table* %33, %struct.ipath_lkey_table** %10, align 8
  %34 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %10, align 8
  %35 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %34, i32 0, i32 0
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.ipath_fmr*, %struct.ipath_fmr** %9, align 8
  %40 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.ipath_fmr*, %struct.ipath_fmr** %9, align 8
  %44 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  %46 = load %struct.ipath_fmr*, %struct.ipath_fmr** %9, align 8
  %47 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 1, %48
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %15, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load %struct.ipath_fmr*, %struct.ipath_fmr** %9, align 8
  %54 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %56 = load %struct.ipath_fmr*, %struct.ipath_fmr** %9, align 8
  %57 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  store i32 %59, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %107, %28
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %110

64:                                               ; preds = %60
  %65 = load i8**, i8*** %6, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.ipath_fmr*, %struct.ipath_fmr** %9, align 8
  %71 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i8* %69, i8** %83, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.ipath_fmr*, %struct.ipath_fmr** %9, align 8
  %86 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %84, i32* %98, align 8
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* @IPATH_SEGSZ, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %64
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %103, %64
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %60

110:                                              ; preds = %60
  %111 = load %struct.ipath_lkey_table*, %struct.ipath_lkey_table** %10, align 8
  %112 = getelementptr inbounds %struct.ipath_lkey_table, %struct.ipath_lkey_table* %111, i32 0, i32 0
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %110, %25
  %116 = load i32, i32* %16, align 4
  ret i32 %116
}

declare dso_local %struct.ipath_fmr* @to_ifmr(%struct.ib_fmr*) #1

declare dso_local %struct.TYPE_8__* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
