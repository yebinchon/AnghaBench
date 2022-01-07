; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_keb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_keb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float }
%struct.pt_regs = type { i32 }

@SA = common dso_local global i32 0, align 4
@SB = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@FP_EX_INVALID = common dso_local global i32 0, align 4
@_fex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, float*)* @emu_keb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_keb(%struct.pt_regs* %0, i32 %1, float* %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  %8 = load i32, i32* @SA, align 4
  %9 = call i32 @FP_DECL_S(i32 %8)
  %10 = load i32, i32* @SB, align 4
  %11 = call i32 @FP_DECL_S(i32 %10)
  %12 = load i32, i32* @FP_DECL_EX, align 4
  %13 = load i32, i32* @SA, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @FP_UNPACK_RAW_SP(i32 %13, float* %22)
  %24 = load i32, i32* @SB, align 4
  %25 = load float*, float** %6, align 8
  %26 = call i32 @FP_UNPACK_RAW_SP(i32 %24, float* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SA, align 4
  %29 = load i32, i32* @SB, align 4
  %30 = call i32 @FP_CMP_S(i32 %27, i32 %28, i32 %29, i32 3)
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %43

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ 2, %38 ], [ %40, %39 ]
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi i32 [ 1, %34 ], [ %42, %41 ]
  %45 = call i32 @emu_set_CC(%struct.pt_regs* %31, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @FP_EX_INVALID, align 4
  %50 = call i32 @FP_SET_EXCEPTION(i32 %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* @_fex, align 4
  ret i32 %52
}

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_RAW_SP(i32, float*) #1

declare dso_local i32 @FP_CMP_S(i32, i32, i32, i32) #1

declare dso_local i32 @emu_set_CC(%struct.pt_regs*, i32) #1

declare dso_local i32 @FP_SET_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
