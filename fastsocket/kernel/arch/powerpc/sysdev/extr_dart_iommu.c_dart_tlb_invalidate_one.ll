; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_dart_iommu.c_dart_tlb_invalidate_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_dart_iommu.c_dart_tlb_invalidate_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@invalidate_lock = common dso_local global i32 0, align 4
@DART_CNTL_U4_ENABLE = common dso_local global i64 0, align 8
@DART_CNTL_U4_IONE = common dso_local global i64 0, align 8
@DART_CNTL_U4_IONE_MASK = common dso_local global i64 0, align 8
@DART_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"DART: TLB did not flush after waiting a long time. Buggy U4 ?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dart_tlb_invalidate_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dart_tlb_invalidate_one(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @invalidate_lock, i64 %7)
  %9 = load i64, i64* @DART_CNTL_U4_ENABLE, align 8
  %10 = load i64, i64* @DART_CNTL_U4_IONE, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @DART_CNTL_U4_IONE_MASK, align 8
  %14 = and i64 %12, %13
  %15 = or i64 %11, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @DART_CNTL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @DART_OUT(i32 %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %50, %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* @DART_CNTL, align 4
  %23 = call i64 @DART_IN(i32 %22)
  %24 = load i64, i64* @DART_CNTL_U4_IONE, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  %33 = icmp slt i64 %29, %32
  br label %34

34:                                               ; preds = %27, %21
  %35 = phi i1 [ false, %21 ], [ %33, %27 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = call i32 (...) @rmb()
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %21

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %20

53:                                               ; preds = %47
  %54 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @invalidate_lock, i64 %57)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DART_OUT(i32, i32) #1

declare dso_local i64 @DART_IN(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
