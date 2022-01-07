; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_read_6120portcntrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_read_6120portcntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__*, %struct.qib_pportdata* }
%struct.TYPE_2__ = type { i64, i32, i32* }
%struct.qib_pportdata = type { i32 }

@portcntr6120names = common dso_local global i64 0, align 8
@portcntr6120indices = common dso_local global i32* null, align 8
@_PORT_VIRT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_devdata*, i64, i64, i8**, i32**)* @qib_read_6120portcntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_read_6120portcntrs(%struct.qib_devdata* %0, i64 %1, i64 %2, i8** %3, i32** %4) #0 {
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
  %15 = load i8**, i8*** %9, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %5
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i64 0, i64* %11, align 8
  br label %31

27:                                               ; preds = %17
  %28 = load i64, i64* @portcntr6120names, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8**, i8*** %9, align 8
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %26
  br label %105

32:                                               ; preds = %5
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 1
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %40, i64 %41
  store %struct.qib_pportdata* %42, %struct.qib_pportdata** %13, align 8
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  store i64 %49, i64* %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %32
  store i64 0, i64* %11, align 8
  br label %106

57:                                               ; preds = %52
  %58 = load i32*, i32** %12, align 8
  %59 = load i32**, i32*** %10, align 8
  store i32* %58, i32** %59, align 8
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %101, %57
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %104

68:                                               ; preds = %60
  %69 = load i32*, i32** @portcntr6120indices, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @_PORT_VIRT_FLAG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %68
  %78 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  %79 = load i32*, i32** @portcntr6120indices, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @_PORT_VIRT_FLAG, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @qib_portcntr_6120(%struct.qib_pportdata* %78, i32 %86)
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  br label %100

90:                                               ; preds = %68
  %91 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %92 = load i32*, i32** @portcntr6120indices, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @read_6120_creg32(%struct.qib_devdata* %91, i32 %96)
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %12, align 8
  store i32 %97, i32* %98, align 4
  br label %100

100:                                              ; preds = %90, %77
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %60

104:                                              ; preds = %60
  br label %105

105:                                              ; preds = %104, %31
  br label %106

106:                                              ; preds = %105, %56
  %107 = load i64, i64* %11, align 8
  ret i64 %107
}

declare dso_local i32 @qib_portcntr_6120(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @read_6120_creg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
