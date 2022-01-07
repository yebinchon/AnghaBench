; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_synchronize_one_tick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_synchronize_one_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }

@go = common dso_local global i64* null, align 8
@MASTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"#StoreLoad\00", align 1
@itc_sync_lock = common dso_local global i32 0, align 4
@NUM_ROUNDS = common dso_local global i64 0, align 8
@NUM_ITERS = common dso_local global i64 0, align 8
@tick_ops = common dso_local global %struct.TYPE_2__* null, align 8
@SLAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @smp_synchronize_one_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_synchronize_one_tick(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64*, i64** @go, align 8
  %6 = load i64, i64* @MASTER, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @smp_start_sync_tick_client(i32 %8)
  br label %10

10:                                               ; preds = %17, %1
  %11 = load i64*, i64** @go, align 8
  %12 = load i64, i64* @MASTER, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 (...) @rmb()
  br label %10

19:                                               ; preds = %10
  %20 = load i64*, i64** @go, align 8
  %21 = load i64, i64* @MASTER, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = call i32 @membar_safe(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @itc_sync_lock, i64 %24)
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %55, %19
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @NUM_ROUNDS, align 8
  %29 = load i64, i64* @NUM_ITERS, align 8
  %30 = mul i64 %28, %29
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %40, %32
  %34 = load i64*, i64** @go, align 8
  %35 = load i64, i64* @MASTER, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 (...) @rmb()
  br label %33

42:                                               ; preds = %33
  %43 = load i64*, i64** @go, align 8
  %44 = load i64, i64* @MASTER, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 0, i64* %45, align 8
  %46 = call i32 (...) @wmb()
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tick_ops, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64 (...)*, i64 (...)** %48, align 8
  %50 = call i64 (...) %49()
  %51 = load i64*, i64** @go, align 8
  %52 = load i64, i64* @SLAVE, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %53, align 8
  %54 = call i32 @membar_safe(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %42
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %26

58:                                               ; preds = %26
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* @itc_sync_lock, i64 %59)
  ret void
}

declare dso_local i32 @smp_start_sync_tick_client(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @membar_safe(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
