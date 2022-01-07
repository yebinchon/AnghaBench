; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400getsignals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400getsignals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"stl_cd1400getsignals(portp=%p)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@MSVR1 = common dso_local global i32 0, align 4
@MSVR2 = common dso_local global i32 0, align 4
@MSVR1_DCD = common dso_local global i8 0, align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@MSVR1_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@MSVR1_DTR = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@MSVR2_RTS = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@MSVR1_DSR = common dso_local global i8 0, align 1
@MSVR1_RI = common dso_local global i8 0, align 1
@TIOCM_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlport*)* @stl_cd1400getsignals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_cd1400getsignals(%struct.stlport* %0) #0 {
  %2 = alloca %struct.stlport*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.stlport* %0, %struct.stlport** %2, align 8
  %7 = load %struct.stlport*, %struct.stlport** %2, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.stlport* %7)
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %9)
  %11 = load %struct.stlport*, %struct.stlport** %2, align 8
  %12 = getelementptr inbounds %struct.stlport, %struct.stlport* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.stlport*, %struct.stlport** %2, align 8
  %15 = getelementptr inbounds %struct.stlport, %struct.stlport* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BRDENABLE(i32 %13, i32 %16)
  %18 = load %struct.stlport*, %struct.stlport** %2, align 8
  %19 = load i32, i32* @CAR, align 4
  %20 = load %struct.stlport*, %struct.stlport** %2, align 8
  %21 = getelementptr inbounds %struct.stlport, %struct.stlport* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 3
  %24 = call i32 @stl_cd1400setreg(%struct.stlport* %18, i32 %19, i32 %23)
  %25 = load %struct.stlport*, %struct.stlport** %2, align 8
  %26 = load i32, i32* @MSVR1, align 4
  %27 = call zeroext i8 @stl_cd1400getreg(%struct.stlport* %25, i32 %26)
  store i8 %27, i8* %3, align 1
  %28 = load %struct.stlport*, %struct.stlport** %2, align 8
  %29 = load i32, i32* @MSVR2, align 4
  %30 = call zeroext i8 @stl_cd1400getreg(%struct.stlport* %28, i32 %29)
  store i8 %30, i8* %4, align 1
  %31 = load %struct.stlport*, %struct.stlport** %2, align 8
  %32 = getelementptr inbounds %struct.stlport, %struct.stlport* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BRDDISABLE(i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %35)
  store i32 0, i32* %6, align 4
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @MSVR1_DCD, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @TIOCM_CD, align 4
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i8, i8* %3, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @MSVR1_CTS, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @TIOCM_CTS, align 4
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i8, i8* %3, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @MSVR1_DTR, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @TIOCM_DTR, align 4
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i8, i8* %4, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @MSVR2_RTS, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @TIOCM_RTS, align 4
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @TIOCM_DSR, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_cd1400setreg(%struct.stlport*, i32, i32) #1

declare dso_local zeroext i8 @stl_cd1400getreg(%struct.stlport*, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
