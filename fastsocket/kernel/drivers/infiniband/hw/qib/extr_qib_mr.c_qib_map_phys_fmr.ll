; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_map_phys_fmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_map_phys_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32 }
%struct.qib_fmr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__**, i8*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.qib_lkey_table = type { i32 }
%struct.TYPE_8__ = type { %struct.qib_lkey_table }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QIB_SEGSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_map_phys_fmr(%struct.ib_fmr* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_fmr*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.qib_fmr*, align 8
  %11 = alloca %struct.qib_lkey_table*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_fmr* %0, %struct.ib_fmr** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load %struct.ib_fmr*, %struct.ib_fmr** %6, align 8
  %19 = call %struct.qib_fmr* @to_ifmr(%struct.ib_fmr* %18)
  store %struct.qib_fmr* %19, %struct.qib_fmr** %10, align 8
  %20 = load %struct.qib_fmr*, %struct.qib_fmr** %10, align 8
  %21 = getelementptr inbounds %struct.qib_fmr, %struct.qib_fmr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  %23 = call i32 @atomic_read(i32* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %125

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.qib_fmr*, %struct.qib_fmr** %10, align 8
  %32 = getelementptr inbounds %struct.qib_fmr, %struct.qib_fmr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %17, align 4
  br label %123

39:                                               ; preds = %29
  %40 = load %struct.ib_fmr*, %struct.ib_fmr** %6, align 8
  %41 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_8__* @to_idev(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store %struct.qib_lkey_table* %44, %struct.qib_lkey_table** %11, align 8
  %45 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %11, align 8
  %46 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %45, i32 0, i32 0
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.qib_fmr*, %struct.qib_fmr** %10, align 8
  %51 = getelementptr inbounds %struct.qib_fmr, %struct.qib_fmr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.qib_fmr*, %struct.qib_fmr** %10, align 8
  %55 = getelementptr inbounds %struct.qib_fmr, %struct.qib_fmr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  store i8* %53, i8** %56, align 8
  %57 = load %struct.qib_fmr*, %struct.qib_fmr** %10, align 8
  %58 = getelementptr inbounds %struct.qib_fmr, %struct.qib_fmr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 1, %60
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %16, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load %struct.qib_fmr*, %struct.qib_fmr** %10, align 8
  %66 = getelementptr inbounds %struct.qib_fmr, %struct.qib_fmr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %115, %39
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %118

72:                                               ; preds = %68
  %73 = load i8**, i8*** %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.qib_fmr*, %struct.qib_fmr** %10, align 8
  %79 = getelementptr inbounds %struct.qib_fmr, %struct.qib_fmr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i8* %77, i8** %91, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.qib_fmr*, %struct.qib_fmr** %10, align 8
  %94 = getelementptr inbounds %struct.qib_fmr, %struct.qib_fmr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %96, i64 %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %92, i32* %106, align 8
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* @QIB_SEGSZ, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %72
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %72
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %68

118:                                              ; preds = %68
  %119 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %11, align 8
  %120 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %119, i32 0, i32 0
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  store i32 0, i32* %17, align 4
  br label %123

123:                                              ; preds = %118, %36
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %26
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.qib_fmr* @to_ifmr(%struct.ib_fmr*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_8__* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
