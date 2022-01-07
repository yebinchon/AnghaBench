; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_ceb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_ceb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float }
%struct.pt_regs = type { i32 }

@SA = common dso_local global i32 0, align 4
@SB = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, float*)* @emu_ceb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_ceb(%struct.pt_regs* %0, i32 %1, float* %2) #0 {
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
  %12 = load i32, i32* @SA, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @FP_UNPACK_RAW_SP(i32 %12, float* %21)
  %23 = load i32, i32* @SB, align 4
  %24 = load float*, float** %6, align 8
  %25 = call i32 @FP_UNPACK_RAW_SP(i32 %23, float* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SA, align 4
  %28 = load i32, i32* @SB, align 4
  %29 = call i32 @FP_CMP_S(i32 %26, i32 %27, i32 %28, i32 3)
  %30 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %42

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 2, %37 ], [ %39, %38 ]
  br label %42

42:                                               ; preds = %40, %33
  %43 = phi i32 [ 1, %33 ], [ %41, %40 ]
  %44 = call i32 @emu_set_CC(%struct.pt_regs* %30, i32 %43)
  ret i32 0
}

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_RAW_SP(i32, float*) #1

declare dso_local i32 @FP_CMP_S(i32, i32, i32, i32) #1

declare dso_local i32 @emu_set_CC(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
