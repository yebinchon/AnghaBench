; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_read_6120cntrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_read_6120cntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@cntr6120names = common dso_local global i64 0, align 8
@cntr6120indices = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_devdata*, i64, i8**, i32**)* @qib_read_6120cntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_read_6120cntrs(%struct.qib_devdata* %0, i64 %1, i8** %2, i32** %3) #0 {
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i64 0, i64* %9, align 8
  br label %28

24:                                               ; preds = %14
  %25 = load i64, i64* @cntr6120names, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %23
  br label %79

29:                                               ; preds = %4
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  store i64 %41, i64* %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %29
  store i64 0, i64* %9, align 8
  br label %80

49:                                               ; preds = %44
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i64 0, i64* %9, align 8
  br label %80

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = load i32**, i32*** %8, align 8
  store i32* %55, i32** %56, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %75, %54
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %67 = load i32*, i32** @cntr6120indices, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @read_6120_creg32(%struct.qib_devdata* %66, i32 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %57

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %28
  br label %80

80:                                               ; preds = %79, %53, %48
  %81 = load i64, i64* %9, align 8
  ret i64 %81
}

declare dso_local i32 @read_6120_creg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
