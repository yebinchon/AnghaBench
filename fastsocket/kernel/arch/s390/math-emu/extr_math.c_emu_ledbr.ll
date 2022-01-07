; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_ledbr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_ledbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pt_regs = type { i32 }

@DA = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@S = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@_fex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32)* @emu_ledbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_ledbr(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @DA, align 4
  %9 = call i32 @FP_DECL_D(i32 %8)
  %10 = load i32, i32* @SR, align 4
  %11 = call i32 @FP_DECL_S(i32 %10)
  %12 = load i32, i32* @FP_DECL_EX, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 3
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @DA, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = call i32 @FP_UNPACK_DP(i32 %19, i32* %28)
  %30 = load i32, i32* @S, align 4
  %31 = load i32, i32* @D, align 4
  %32 = load i32, i32* @SR, align 4
  %33 = load i32, i32* @DA, align 4
  %34 = call i32 @FP_CONV(i32 %30, i32 %31, i32 1, i32 2, i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* @SR, align 4
  %45 = call i32 @FP_PACK_SP(i32* %43, i32 %44)
  %46 = load i32, i32* @_fex, align 4
  ret i32 %46
}

declare dso_local i32 @FP_DECL_D(i32) #1

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_DP(i32, i32*) #1

declare dso_local i32 @FP_CONV(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FP_PACK_SP(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
