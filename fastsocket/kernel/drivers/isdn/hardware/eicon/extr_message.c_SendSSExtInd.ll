; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_SendSSExtInd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_SendSSExtInd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@NCR_FACILITY = common dso_local global i64 0, align 8
@MAX_MULTI_IE = common dso_local global i64 0, align 8
@SSEXT_REQ = common dso_local global i32 0, align 4
@_MANUFACTURER_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dwS\00", align 1
@_DI_MANU_ID = common dso_local global i32 0, align 4
@_DI_SSEXT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32**)* @SendSSExtInd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendSSExtInd(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %98

12:                                               ; preds = %4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %98

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NCR_FACILITY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %94, %24
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @MAX_MULTI_IE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %97

29:                                               ; preds = %25
  %30 = load i32**, i32*** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %94

38:                                               ; preds = %29
  %39 = load i32**, i32*** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SSEXT_REQ, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %94

48:                                               ; preds = %38
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32**, i32*** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @_MANUFACTURER_I, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @_DI_MANU_ID, align 4
  %61 = load i32, i32* @_DI_SSEXT_CTRL, align 4
  %62 = load i32**, i32*** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = call i32 @sendf(i32* %57, i32 %58, i32 %59, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32* %66)
  br label %93

68:                                               ; preds = %48
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load i32**, i32*** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @_MANUFACTURER_I, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @_DI_MANU_ID, align 4
  %85 = load i32, i32* @_DI_SSEXT_CTRL, align 4
  %86 = load i32**, i32*** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = call i32 @sendf(i32* %81, i32 %82, i32 %83, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32* %90)
  br label %92

92:                                               ; preds = %73, %68
  br label %93

93:                                               ; preds = %92, %51
  br label %94

94:                                               ; preds = %93, %47, %37
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %25

97:                                               ; preds = %25
  br label %98

98:                                               ; preds = %97, %17, %12, %4
  ret void
}

declare dso_local i32 @sendf(i32*, i32, i32, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
