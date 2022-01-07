; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_read_7220portcntrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_read_7220portcntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__*, %struct.qib_pportdata* }
%struct.TYPE_2__ = type { i64, i32, i32* }
%struct.qib_pportdata = type { i32 }

@portcntr7220names = common dso_local global i64 0, align 8
@portcntr7220indices = common dso_local global i32* null, align 8
@_PORT_VIRT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_devdata*, i64, i64, i8**, i32**)* @qib_read_7220portcntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_read_7220portcntrs(%struct.qib_devdata* %0, i64 %1, i64 %2, i8** %3, i32** %4) #0 {
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.qib_pportdata*, align 8
  %14 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i64 0, i64* %11, align 8
  br label %113

22:                                               ; preds = %5
  %23 = load i8**, i8*** %9, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i64, i64* @portcntr7220names, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i8**, i8*** %9, align 8
  store i8* %27, i8** %28, align 8
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i64 0, i64* %11, align 8
  br label %38

38:                                               ; preds = %37, %25
  br label %112

39:                                               ; preds = %22
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %12, align 8
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 1
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %47, i64 %48
  store %struct.qib_pportdata* %49, %struct.qib_pportdata** %13, align 8
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  store i64 %56, i64* %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %39
  store i64 0, i64* %11, align 8
  br label %113

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = load i32**, i32*** %10, align 8
  store i32* %65, i32** %66, align 8
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %108, %64
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %70 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %67
  %76 = load i32*, i32** @portcntr7220indices, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @_PORT_VIRT_FLAG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  %86 = load i32*, i32** @portcntr7220indices, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @_PORT_VIRT_FLAG, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = call i32 @qib_portcntr_7220(%struct.qib_pportdata* %85, i32 %93)
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %12, align 8
  store i32 %94, i32* %95, align 4
  br label %107

97:                                               ; preds = %75
  %98 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %99 = load i32*, i32** @portcntr7220indices, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @read_7220_creg32(%struct.qib_devdata* %98, i32 %103)
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %12, align 8
  store i32 %104, i32* %105, align 4
  br label %107

107:                                              ; preds = %97, %84
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %67

111:                                              ; preds = %67
  br label %112

112:                                              ; preds = %111, %38
  br label %113

113:                                              ; preds = %112, %63, %21
  %114 = load i64, i64* %11, align 8
  ret i64 %114
}

declare dso_local i32 @qib_portcntr_7220(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @read_7220_creg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
