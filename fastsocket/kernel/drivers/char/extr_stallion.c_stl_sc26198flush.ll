; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"stl_sc26198flush(portp=%p)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@SCCR = common dso_local global i32 0, align 4
@CR_TXRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*)* @stl_sc26198flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198flush(%struct.stlport* %0) #0 {
  %2 = alloca %struct.stlport*, align 8
  %3 = alloca i64, align 8
  store %struct.stlport* %0, %struct.stlport** %2, align 8
  %4 = load %struct.stlport*, %struct.stlport** %2, align 8
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.stlport* %4)
  %6 = load %struct.stlport*, %struct.stlport** %2, align 8
  %7 = icmp eq %struct.stlport* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %42

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %10)
  %12 = load %struct.stlport*, %struct.stlport** %2, align 8
  %13 = getelementptr inbounds %struct.stlport, %struct.stlport* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.stlport*, %struct.stlport** %2, align 8
  %16 = getelementptr inbounds %struct.stlport, %struct.stlport* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BRDENABLE(i32 %14, i32 %17)
  %19 = load %struct.stlport*, %struct.stlport** %2, align 8
  %20 = load i32, i32* @SCCR, align 4
  %21 = load i32, i32* @CR_TXRESET, align 4
  %22 = call i32 @stl_sc26198setreg(%struct.stlport* %19, i32 %20, i32 %21)
  %23 = load %struct.stlport*, %struct.stlport** %2, align 8
  %24 = load i32, i32* @SCCR, align 4
  %25 = load %struct.stlport*, %struct.stlport** %2, align 8
  %26 = getelementptr inbounds %struct.stlport, %struct.stlport* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @stl_sc26198setreg(%struct.stlport* %23, i32 %24, i32 %27)
  %29 = load %struct.stlport*, %struct.stlport** %2, align 8
  %30 = getelementptr inbounds %struct.stlport, %struct.stlport* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BRDDISABLE(i32 %31)
  %33 = load %struct.stlport*, %struct.stlport** %2, align 8
  %34 = getelementptr inbounds %struct.stlport, %struct.stlport* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.stlport*, %struct.stlport** %2, align 8
  %38 = getelementptr inbounds %struct.stlport, %struct.stlport* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %40)
  br label %42

42:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
