; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_qe.c_qe_get_snum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_qe.c_qe_get_snum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@qe_lock = common dso_local global i32 0, align 4
@qe_num_of_snum = common dso_local global i32 0, align 4
@snums = common dso_local global %struct.TYPE_2__* null, align 8
@QE_SNUM_STATE_FREE = common dso_local global i64 0, align 8
@QE_SNUM_STATE_USED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qe_get_snum() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @EBUSY, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %2, align 4
  %6 = load i64, i64* %1, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @qe_lock, i64 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %35, %0
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @qe_num_of_snum, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snums, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QE_SNUM_STATE_FREE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %12
  %22 = load i64, i64* @QE_SNUM_STATE_USED, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snums, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %22, i64* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snums, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %8

38:                                               ; preds = %21, %8
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @qe_lock, i64 %39)
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
