; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_credit_entropy_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_credit_entropy_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"added %d entropy credits to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"negative entropy/overflow\0A\00", align 1
@input_pool = common dso_local global %struct.entropy_store zeroinitializer, align 8
@random_read_wakeup_thresh = common dso_local global i32 0, align 4
@random_read_wait = common dso_local global i32 0, align 4
@fasync = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entropy_store*, i32)* @credit_entropy_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @credit_entropy_bits(%struct.entropy_store* %0, i32 %1) #0 {
  %3 = alloca %struct.entropy_store*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.entropy_store* %0, %struct.entropy_store** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %65

10:                                               ; preds = %2
  %11 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %12 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %17 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @DEBUG_ENT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %21 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %10
  %29 = call i32 (i8*, ...) @DEBUG_ENT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %45

30:                                               ; preds = %10
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %33 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %31, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %40 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %30
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %48 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %50 = icmp eq %struct.entropy_store* %49, @input_pool
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @random_read_wakeup_thresh, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = call i32 @wake_up_interruptible(i32* @random_read_wait)
  %57 = load i32, i32* @SIGIO, align 4
  %58 = load i32, i32* @POLL_IN, align 4
  %59 = call i32 @kill_fasync(i32* @fasync, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %51, %45
  %61 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %62 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %61, i32 0, i32 1
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %60, %9
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DEBUG_ENT(i8*, ...) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
