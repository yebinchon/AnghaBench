; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400startrxtx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400startrxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"stl_cd1400startrxtx(portp=%p,rx=%d,tx=%d)\0A\00", align 1
@SRER_TXDATA = common dso_local global i8 0, align 1
@SRER_TXEMPTY = common dso_local global i8 0, align 1
@SRER_RXDATA = common dso_local global i8 0, align 1
@brd_lock = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@SRER = common dso_local global i32 0, align 4
@ASYI_TXBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32, i32)* @stl_cd1400startrxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400startrxtx(%struct.stlport* %0, i32 %1, i32 %2) #0 {
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
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.stlport* %10, i32 %11, i32 %12)
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i8, i8* @SRER_TXDATA, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @SRER_TXEMPTY, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %8, align 1
  br label %48

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8, i8* @SRER_TXDATA, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %7, align 1
  br label %47

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i8, i8* @SRER_TXEMPTY, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %7, align 1
  br label %46

46:                                               ; preds = %39, %36
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i8, i8* @SRER_RXDATA, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, %53
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %8, align 1
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i8, i8* @SRER_RXDATA, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %7, align 1
  br label %68

68:                                               ; preds = %61, %58
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %70)
  %72 = load %struct.stlport*, %struct.stlport** %4, align 8
  %73 = getelementptr inbounds %struct.stlport, %struct.stlport* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.stlport*, %struct.stlport** %4, align 8
  %76 = getelementptr inbounds %struct.stlport, %struct.stlport* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @BRDENABLE(i32 %74, i32 %77)
  %79 = load %struct.stlport*, %struct.stlport** %4, align 8
  %80 = load i32, i32* @CAR, align 4
  %81 = load %struct.stlport*, %struct.stlport** %4, align 8
  %82 = getelementptr inbounds %struct.stlport, %struct.stlport* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 3
  %85 = trunc i32 %84 to i8
  %86 = call i32 @stl_cd1400setreg(%struct.stlport* %79, i32 %80, i8 zeroext %85)
  %87 = load %struct.stlport*, %struct.stlport** %4, align 8
  %88 = load i32, i32* @SRER, align 4
  %89 = load %struct.stlport*, %struct.stlport** %4, align 8
  %90 = load i32, i32* @SRER, align 4
  %91 = call zeroext i8 @stl_cd1400getreg(%struct.stlport* %89, i32 %90)
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* %8, align 1
  %94 = zext i8 %93 to i32
  %95 = xor i32 %94, -1
  %96 = and i32 %92, %95
  %97 = load i8, i8* %7, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  %101 = call i32 @stl_cd1400setreg(%struct.stlport* %87, i32 %88, i8 zeroext %100)
  %102 = load %struct.stlport*, %struct.stlport** %4, align 8
  %103 = getelementptr inbounds %struct.stlport, %struct.stlport* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @BRDDISABLE(i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %69
  %109 = load i32, i32* @ASYI_TXBUSY, align 4
  %110 = load %struct.stlport*, %struct.stlport** %4, align 8
  %111 = getelementptr inbounds %struct.stlport, %struct.stlport* %110, i32 0, i32 1
  %112 = call i32 @set_bit(i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %108, %69
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %114)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_cd1400setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @stl_cd1400getreg(%struct.stlport*, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
