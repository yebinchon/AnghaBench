; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400setsignals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400setsignals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"stl_cd1400setsignals(portp=%p,dtr=%d,rts=%d)\0A\00", align 1
@MSVR1_DTR = common dso_local global i8 0, align 1
@MSVR2_RTS = common dso_local global i8 0, align 1
@brd_lock = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@MSVR2 = common dso_local global i32 0, align 4
@MSVR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32, i32)* @stl_cd1400setsignals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400setsignals(%struct.stlport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stlport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.stlport* %0, %struct.stlport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.stlport*, %struct.stlport** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.stlport* %10, i32 %11, i32 %12)
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8, i8* @MSVR1_DTR, align 1
  store i8 %17, i8* %7, align 1
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8, i8* @MSVR2_RTS, align 1
  store i8 %22, i8* %8, align 1
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %24)
  %26 = load %struct.stlport*, %struct.stlport** %4, align 8
  %27 = getelementptr inbounds %struct.stlport, %struct.stlport* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.stlport*, %struct.stlport** %4, align 8
  %30 = getelementptr inbounds %struct.stlport, %struct.stlport* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BRDENABLE(i32 %28, i32 %31)
  %33 = load %struct.stlport*, %struct.stlport** %4, align 8
  %34 = load i32, i32* @CAR, align 4
  %35 = load %struct.stlport*, %struct.stlport** %4, align 8
  %36 = getelementptr inbounds %struct.stlport, %struct.stlport* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 3
  %39 = trunc i32 %38 to i8
  %40 = call i32 @stl_cd1400setreg(%struct.stlport* %33, i32 %34, i8 zeroext %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %23
  %44 = load %struct.stlport*, %struct.stlport** %4, align 8
  %45 = load i32, i32* @MSVR2, align 4
  %46 = load i8, i8* %8, align 1
  %47 = call i32 @stl_cd1400setreg(%struct.stlport* %44, i32 %45, i8 zeroext %46)
  br label %48

48:                                               ; preds = %43, %23
  %49 = load i32, i32* %5, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.stlport*, %struct.stlport** %4, align 8
  %53 = load i32, i32* @MSVR1, align 4
  %54 = load i8, i8* %7, align 1
  %55 = call i32 @stl_cd1400setreg(%struct.stlport* %52, i32 %53, i8 zeroext %54)
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.stlport*, %struct.stlport** %4, align 8
  %58 = getelementptr inbounds %struct.stlport, %struct.stlport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BRDDISABLE(i32 %59)
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %61)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_cd1400setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
