; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_tceb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_tceb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pt_regs = type { i32 }

@SA = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@SA_e = common dso_local global i32 0, align 4
@_FP_QNANBIT_S = common dso_local global i32 0, align 4
@SA_s = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i64)* @emu_tceb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_tceb(%struct.pt_regs* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @SA, align 4
  %9 = call i32 @FP_DECL_S(i32 %8)
  %10 = load i32, i32* @SA, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @FP_UNPACK_RAW_SP(i32 %10, i32* %19)
  %21 = load i32, i32* @SA_e, align 4
  switch i32 %21, label %22 [
    i32 0, label %23
    i32 128, label %30
  ]

22:                                               ; preds = %3
  store i32 8, i32* %7, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load i32, i32* @SA, align 4
  %25 = call i32 @_FP_FRAC_ZEROP_1(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 10, i32* %7, align 4
  br label %29

28:                                               ; preds = %23
  store i32 6, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %45

30:                                               ; preds = %3
  %31 = load i32, i32* @SA, align 4
  %32 = call i32 @_FP_FRAC_ZEROP_1(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 4, i32* %7, align 4
  br label %44

35:                                               ; preds = %30
  %36 = load i32, i32* @SA, align 4
  %37 = call i32 @_FP_FRAC_HIGH_RAW_S(i32 %36)
  %38 = load i32, i32* @_FP_QNANBIT_S, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 2, i32* %7, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44, %29, %22
  %46 = load i32, i32* @SA_s, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %54, %55
  %57 = and i32 %56, 1
  %58 = call i32 @emu_set_CC(%struct.pt_regs* %52, i32 %57)
  ret i32 0
}

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_RAW_SP(i32, i32*) #1

declare dso_local i32 @_FP_FRAC_ZEROP_1(i32) #1

declare dso_local i32 @_FP_FRAC_HIGH_RAW_S(i32) #1

declare dso_local i32 @emu_set_CC(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
