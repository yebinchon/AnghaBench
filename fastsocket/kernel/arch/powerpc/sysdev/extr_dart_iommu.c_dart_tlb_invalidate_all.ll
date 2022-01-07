; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_dart_iommu.c_dart_tlb_invalidate_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_dart_iommu.c_dart_tlb_invalidate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@invalidate_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dart: flush\0A\00", align 1
@dart_is_u4 = common dso_local global i64 0, align 8
@DART_CNTL_U4_FLUSHTLB = common dso_local global i32 0, align 4
@DART_CNTL_U3_FLUSHTLB = common dso_local global i32 0, align 4
@DART_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"DART: TLB did not flush after waiting a long time. Buggy U3 ?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dart_tlb_invalidate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dart_tlb_invalidate_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @invalidate_lock, i64 %6)
  %8 = call i32 @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  %9 = load i64, i64* @dart_is_u4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @DART_CNTL_U4_FLUSHTLB, align 4
  br label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @DART_CNTL_U3_FLUSHTLB, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %50, %15
  store i64 0, i64* %1, align 8
  %18 = load i32, i32* @DART_CNTL, align 4
  %19 = call i32 @DART_IN(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* @DART_CNTL, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @DART_OUT(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %39, %17
  %27 = load i32, i32* @DART_CNTL, align 4
  %28 = call i32 @DART_IN(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* %4, align 8
  %35 = shl i64 1, %34
  %36 = icmp ult i64 %33, %35
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i1 [ false, %26 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i64, i64* %1, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %1, align 8
  br label %26

42:                                               ; preds = %37
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* %4, align 8
  %45 = shl i64 1, %44
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = icmp ult i64 %48, 4
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  %53 = load i32, i32* @DART_CNTL, align 4
  %54 = call i32 @DART_IN(i32 %53)
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %2, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* @DART_CNTL, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @DART_OUT(i32 %59, i32 %60)
  br label %17

62:                                               ; preds = %47
  %63 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* @invalidate_lock, i64 %66)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @DART_IN(i32) #1

declare dso_local i32 @DART_OUT(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
