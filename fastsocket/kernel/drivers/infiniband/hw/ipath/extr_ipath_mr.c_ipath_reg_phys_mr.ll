; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_reg_phys_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_reg_phys_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_phys_buf = type { i64, i64 }
%struct.ipath_mr = type { %struct.ib_mr, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32, i64, %struct.TYPE_6__**, i64, i8*, i8*, %struct.ib_pd* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IPATH_SEGSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ipath_reg_phys_mr(%struct.ib_pd* %0, %struct.ib_phys_buf* %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_phys_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.ipath_mr*, align 8
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
  %18 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_8__* @to_idev(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call %struct.ipath_mr* @alloc_mr(i32 %16, i32* %21)
  store %struct.ipath_mr* %22, %struct.ipath_mr** %11, align 8
  %23 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %24 = icmp eq %struct.ipath_mr* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.ib_mr* @ERR_PTR(i32 %27)
  store %struct.ib_mr* %28, %struct.ib_mr** %15, align 8
  br label %132

29:                                               ; preds = %5
  %30 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %31 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %32 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 7
  store %struct.ib_pd* %30, %struct.ib_pd** %33, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %37 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  store i8* %35, i8** %38, align 8
  %39 = load i8**, i8*** %10, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %42 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i8* %40, i8** %43, align 8
  %44 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %45 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %48 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %52 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %56 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %59 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %126, %29
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %129

64:                                               ; preds = %60
  %65 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %65, i64 %67
  %69 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %73 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %75, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i8* %71, i8** %85, align 8
  %86 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %86, i64 %88
  %90 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %93 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %91, i64* %105, align 8
  %106 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %106, i64 %108
  %110 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %113 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %111
  store i64 %116, i64* %114, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @IPATH_SEGSZ, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %64
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %122, %64
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %60

129:                                              ; preds = %60
  %130 = load %struct.ipath_mr*, %struct.ipath_mr** %11, align 8
  %131 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %130, i32 0, i32 0
  store %struct.ib_mr* %131, %struct.ib_mr** %15, align 8
  br label %132

132:                                              ; preds = %129, %25
  %133 = load %struct.ib_mr*, %struct.ib_mr** %15, align 8
  ret %struct.ib_mr* %133
}

declare dso_local %struct.ipath_mr* @alloc_mr(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @to_idev(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
