; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198getsignals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198getsignals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"stl_sc26198getsignals(portp=%p)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@IPR = common dso_local global i32 0, align 4
@IPR_DCD = common dso_local global i8 0, align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@IPR_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@IPR_DTR = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@IPR_RTS = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlport*)* @stl_sc26198getsignals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_sc26198getsignals(%struct.stlport* %0) #0 {
  %2 = alloca %struct.stlport*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.stlport* %0, %struct.stlport** %2, align 8
  %6 = load %struct.stlport*, %struct.stlport** %2, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.stlport* %6)
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %8)
  %10 = load %struct.stlport*, %struct.stlport** %2, align 8
  %11 = getelementptr inbounds %struct.stlport, %struct.stlport* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.stlport*, %struct.stlport** %2, align 8
  %14 = getelementptr inbounds %struct.stlport, %struct.stlport* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BRDENABLE(i32 %12, i32 %15)
  %17 = load %struct.stlport*, %struct.stlport** %2, align 8
  %18 = load i32, i32* @IPR, align 4
  %19 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %17, i32 %18)
  store i8 %19, i8* %3, align 1
  %20 = load %struct.stlport*, %struct.stlport** %2, align 8
  %21 = getelementptr inbounds %struct.stlport, %struct.stlport* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BRDDISABLE(i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %24)
  store i32 0, i32* %5, align 4
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @IPR_DCD, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @TIOCM_CD, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i8, i8* %3, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @IPR_CTS, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @TIOCM_CTS, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i8, i8* %3, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @IPR_DTR, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @TIOCM_DTR, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32 [ 0, %58 ], [ %60, %59 ]
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i8, i8* %3, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @IPR_RTS, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @TIOCM_RTS, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ 0, %71 ], [ %73, %72 ]
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @TIOCM_DSR, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local zeroext i8 @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
