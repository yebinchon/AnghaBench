; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198sendbreak.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198sendbreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"stl_sc26198sendbreak(portp=%p,len=%d)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@SCCR = common dso_local global i32 0, align 4
@CR_TXSTARTBREAK = common dso_local global i32 0, align 4
@CR_TXSTOPBREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32)* @stl_sc26198sendbreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198sendbreak(%struct.stlport* %0, i32 %1) #0 {
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stlport*, %struct.stlport** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.stlport* %6, i32 %7)
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %9)
  %11 = load %struct.stlport*, %struct.stlport** %3, align 8
  %12 = getelementptr inbounds %struct.stlport, %struct.stlport* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.stlport*, %struct.stlport** %3, align 8
  %15 = getelementptr inbounds %struct.stlport, %struct.stlport* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BRDENABLE(i32 %13, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.stlport*, %struct.stlport** %3, align 8
  %22 = load i32, i32* @SCCR, align 4
  %23 = load i32, i32* @CR_TXSTARTBREAK, align 4
  %24 = call i32 @stl_sc26198setreg(%struct.stlport* %21, i32 %22, i32 %23)
  %25 = load %struct.stlport*, %struct.stlport** %3, align 8
  %26 = getelementptr inbounds %struct.stlport, %struct.stlport* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.stlport*, %struct.stlport** %3, align 8
  %32 = load i32, i32* @SCCR, align 4
  %33 = load i32, i32* @CR_TXSTOPBREAK, align 4
  %34 = call i32 @stl_sc26198setreg(%struct.stlport* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %20
  %36 = load %struct.stlport*, %struct.stlport** %3, align 8
  %37 = getelementptr inbounds %struct.stlport, %struct.stlport* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BRDDISABLE(i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %40)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32) #1

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
