; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_alloc_fmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_alloc_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_fmr_attr = type { i32, i32 }
%struct.ipath_fmr = type { %struct.TYPE_4__, %struct.ib_fmr, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.ipath_fmr**, i64, i64, i64, i64, %struct.ib_pd*, i32 }
%struct.TYPE_3__ = type { i32 }

@IPATH_SEGSZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fmr* @ipath_alloc_fmr(%struct.ib_pd* %0, i32 %1, %struct.ib_fmr_attr* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_fmr_attr*, align 8
  %7 = alloca %struct.ipath_fmr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_fmr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_fmr_attr* %2, %struct.ib_fmr_attr** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %6, align 8
  %12 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IPATH_SEGSZ, align 4
  %15 = add nsw i32 %13, %14
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* @IPATH_SEGSZ, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = add i64 88, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  %26 = bitcast i8* %25 to %struct.ipath_fmr*
  store %struct.ipath_fmr* %26, %struct.ipath_fmr** %7, align 8
  %27 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %28 = icmp ne %struct.ipath_fmr* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %119

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i32 88, i32 %36)
  %38 = bitcast i8* %37 to %struct.ipath_fmr*
  %39 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %40 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load %struct.ipath_fmr**, %struct.ipath_fmr*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ipath_fmr*, %struct.ipath_fmr** %42, i64 %44
  store %struct.ipath_fmr* %38, %struct.ipath_fmr** %45, align 8
  %46 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %47 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load %struct.ipath_fmr**, %struct.ipath_fmr*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ipath_fmr*, %struct.ipath_fmr** %49, i64 %51
  %53 = load %struct.ipath_fmr*, %struct.ipath_fmr** %52, align 8
  %54 = icmp ne %struct.ipath_fmr* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %35
  br label %119

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %63 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %66 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_3__* @to_idev(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %71 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %70, i32 0, i32 0
  %72 = call i32 @ipath_alloc_lkey(i32* %69, %struct.TYPE_4__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %119

75:                                               ; preds = %60
  %76 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %77 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %81 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %84 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %84, i32 0, i32 1
  store i32 %79, i32* %85, align 4
  %86 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %87 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %88 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 8
  store %struct.ib_pd* %86, %struct.ib_pd** %89, align 8
  %90 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %91 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 7
  store i64 0, i64* %92, align 8
  %93 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %94 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  %96 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %97 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 5
  store i64 0, i64* %98, align 8
  %99 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %100 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %104 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %110 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %6, align 8
  %113 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %116 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %118 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %117, i32 0, i32 1
  store %struct.ib_fmr* %118, %struct.ib_fmr** %10, align 8
  br label %140

119:                                              ; preds = %74, %55, %29
  br label %120

120:                                              ; preds = %123, %119
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %125 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load %struct.ipath_fmr**, %struct.ipath_fmr*** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ipath_fmr*, %struct.ipath_fmr** %127, i64 %130
  %132 = load %struct.ipath_fmr*, %struct.ipath_fmr** %131, align 8
  %133 = call i32 @kfree(%struct.ipath_fmr* %132)
  br label %120

134:                                              ; preds = %120
  %135 = load %struct.ipath_fmr*, %struct.ipath_fmr** %7, align 8
  %136 = call i32 @kfree(%struct.ipath_fmr* %135)
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  %139 = call %struct.ib_fmr* @ERR_PTR(i32 %138)
  store %struct.ib_fmr* %139, %struct.ib_fmr** %10, align 8
  br label %140

140:                                              ; preds = %134, %75
  %141 = load %struct.ib_fmr*, %struct.ib_fmr** %10, align 8
  ret %struct.ib_fmr* %141
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ipath_alloc_lkey(i32*, %struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_3__* @to_idev(i32) #1

declare dso_local i32 @kfree(%struct.ipath_fmr*) #1

declare dso_local %struct.ib_fmr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
