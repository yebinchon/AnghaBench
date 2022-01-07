; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_tcxb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_tcxb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@QA = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_12__* null, align 8
@QA_e = common dso_local global i32 0, align 4
@_FP_QNANBIT_Q = common dso_local global i32 0, align 4
@QA_s = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i64)* @emu_tcxb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_tcxb(%struct.pt_regs* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @QA, align 4
  %10 = call i32 @FP_DECL_Q(i32 %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @QA, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %38 = call i32 @FP_UNPACK_RAW_QP(i32 %36, i32* %37)
  %39 = load i32, i32* @QA_e, align 4
  switch i32 %39, label %40 [
    i32 0, label %41
    i32 128, label %48
  ]

40:                                               ; preds = %3
  store i32 8, i32* %8, align 4
  br label %63

41:                                               ; preds = %3
  %42 = load i32, i32* @QA, align 4
  %43 = call i32 @_FP_FRAC_ZEROP_4(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 10, i32* %8, align 4
  br label %47

46:                                               ; preds = %41
  store i32 6, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %45
  br label %63

48:                                               ; preds = %3
  %49 = load i32, i32* @QA, align 4
  %50 = call i32 @_FP_FRAC_ZEROP_4(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 4, i32* %8, align 4
  br label %62

53:                                               ; preds = %48
  %54 = load i32, i32* @QA, align 4
  %55 = call i32 @_FP_FRAC_HIGH_RAW_Q(i32 %54)
  %56 = load i32, i32* @_FP_QNANBIT_Q, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 2, i32* %8, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %52
  br label %63

63:                                               ; preds = %62, %47, %40
  %64 = load i32, i32* @QA_s, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %72, %73
  %75 = and i32 %74, 1
  %76 = call i32 @emu_set_CC(%struct.pt_regs* %70, i32 %75)
  ret i32 0
}

declare dso_local i32 @FP_DECL_Q(i32) #1

declare dso_local i32 @FP_UNPACK_RAW_QP(i32, i32*) #1

declare dso_local i32 @_FP_FRAC_ZEROP_4(i32) #1

declare dso_local i32 @_FP_FRAC_HIGH_RAW_Q(i32) #1

declare dso_local i32 @emu_set_CC(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
