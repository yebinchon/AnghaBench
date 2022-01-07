; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_mdeb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_mdeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float, i32 }
%struct.pt_regs = type { i32 }

@SA = common dso_local global i32 0, align 4
@DA = common dso_local global i32 0, align 4
@DB = common dso_local global i32 0, align 4
@DR = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@D = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@_fex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, float*)* @emu_mdeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_mdeb(%struct.pt_regs* %0, i32 %1, float* %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  %8 = load i32, i32* @SA, align 4
  %9 = call i32 @FP_DECL_S(i32 %8)
  %10 = load i32, i32* @DA, align 4
  %11 = call i32 @FP_DECL_D(i32 %10)
  %12 = load i32, i32* @DB, align 4
  %13 = call i32 @FP_DECL_D(i32 %12)
  %14 = load i32, i32* @DR, align 4
  %15 = call i32 @FP_DECL_D(i32 %14)
  %16 = load i32, i32* @FP_DECL_EX, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 3
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @SA, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @FP_UNPACK_SP(i32 %23, float* %32)
  %34 = load i32, i32* @D, align 4
  %35 = load i32, i32* @S, align 4
  %36 = load i32, i32* @DA, align 4
  %37 = load i32, i32* @SA, align 4
  %38 = call i32 @FP_CONV(i32 %34, i32 %35, i32 2, i32 1, i32 %36, i32 %37)
  %39 = load i32, i32* @SA, align 4
  %40 = load float*, float** %6, align 8
  %41 = call i32 @FP_UNPACK_SP(i32 %39, float* %40)
  %42 = load i32, i32* @D, align 4
  %43 = load i32, i32* @S, align 4
  %44 = load i32, i32* @DB, align 4
  %45 = load i32, i32* @SA, align 4
  %46 = call i32 @FP_CONV(i32 %42, i32 %43, i32 2, i32 1, i32 %44, i32 %45)
  %47 = load i32, i32* @DR, align 4
  %48 = load i32, i32* @DA, align 4
  %49 = load i32, i32* @DB, align 4
  %50 = call i32 @FP_MUL_D(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* @DR, align 4
  %61 = call i32 @FP_PACK_DP(i32* %59, i32 %60)
  %62 = load i32, i32* @_fex, align 4
  ret i32 %62
}

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_DECL_D(i32) #1

declare dso_local i32 @FP_UNPACK_SP(i32, float*) #1

declare dso_local i32 @FP_CONV(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FP_MUL_D(i32, i32, i32) #1

declare dso_local i32 @FP_PACK_DP(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
