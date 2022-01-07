; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_reg_phys_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_reg_phys_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_phys_buf = type { i64, i64 }
%struct.qib_mr = type { %struct.ib_mr, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__**, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8* }

@QIB_SEGSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @qib_reg_phys_mr(%struct.ib_pd* %0, %struct.ib_phys_buf* %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_phys_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.qib_mr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store %struct.ib_phys_buf* %1, %struct.ib_phys_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %18 = call %struct.qib_mr* @alloc_mr(i32 %16, %struct.ib_pd* %17)
  store %struct.qib_mr* %18, %struct.qib_mr** %11, align 8
  %19 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %20 = call i64 @IS_ERR(%struct.qib_mr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %24 = bitcast %struct.qib_mr* %23 to %struct.ib_mr*
  store %struct.ib_mr* %24, %struct.ib_mr** %15, align 8
  br label %114

25:                                               ; preds = %5
  %26 = load i8**, i8*** %10, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %29 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i8* %27, i8** %30, align 8
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %34 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %38 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %108, %25
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %111

44:                                               ; preds = %40
  %45 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %45, i64 %47
  %49 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %53 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i8* %51, i8** %65, align 8
  %66 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %66, i64 %68
  %70 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %73 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %75, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 %71, i64* %85, align 8
  %86 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %86, i64 %88
  %90 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %93 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %91
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @QIB_SEGSZ, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %44
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %104, %44
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %40

111:                                              ; preds = %40
  %112 = load %struct.qib_mr*, %struct.qib_mr** %11, align 8
  %113 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %112, i32 0, i32 0
  store %struct.ib_mr* %113, %struct.ib_mr** %15, align 8
  br label %114

114:                                              ; preds = %111, %22
  %115 = load %struct.ib_mr*, %struct.ib_mr** %15, align 8
  ret %struct.ib_mr* %115
}

declare dso_local %struct.qib_mr* @alloc_mr(i32, %struct.ib_pd*) #1

declare dso_local i64 @IS_ERR(%struct.qib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
