; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_xsave.c___sanitize_i387_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_xsave.c___sanitize_i387_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.i387_fxsave_struct }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i387_fxsave_struct = type { i32, i32*, i32*, i64, i64, i64, i64, i64 }

@pcntxt_mask = common dso_local global i32 0, align 4
@XSTATE_FP = common dso_local global i32 0, align 4
@XSTATE_SSE = common dso_local global i32 0, align 4
@xstate_offsets = common dso_local global i32* null, align 8
@xstate_sizes = common dso_local global i32* null, align 8
@init_xstate_buf = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__sanitize_i387_state(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.i387_fxsave_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i32 2, i32* %4, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store %struct.i387_fxsave_struct* %12, %struct.i387_fxsave_struct** %5, align 8
  %13 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %14 = icmp ne %struct.i387_fxsave_struct* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %106

16:                                               ; preds = %1
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @pcntxt_mask, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @pcntxt_mask, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %106

31:                                               ; preds = %16
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @XSTATE_FP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  %37 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %38 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %37, i32 0, i32 0
  store i32 895, i32* %38, align 8
  %39 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %40 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %42 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %44 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %46 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %48 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %50 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = call i32 @memset(i32* %52, i32 0, i32 128)
  br label %54

54:                                               ; preds = %36, %31
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @XSTATE_SSE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %61 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i32 @memset(i32* %63, i32 0, i32 256)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* @pcntxt_mask, align 4
  %67 = load i32, i32* %3, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = ashr i32 %69, 2
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %101, %65
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load i32*, i32** @xstate_offsets, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32*, i32** @xstate_sizes, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %7, align 4
  %89 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %90 = bitcast %struct.i387_fxsave_struct* %89 to i8*
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %90, i64 %92
  %94 = load i64, i64* @init_xstate_buf, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr i8, i8* %95, i64 %97
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @memcpy(i8* %93, i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %78, %74
  %102 = load i32, i32* %3, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %71

106:                                              ; preds = %15, %30, %71
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
