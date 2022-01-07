; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198otherisr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198otherisr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"stl_sc26198otherisr(portp=%p,iack=%x)\0A\00", align 1
@CIR = common dso_local global i32 0, align 4
@CIR_SUBTYPEMASK = common dso_local global i8 0, align 1
@IPR = common dso_local global i32 0, align 4
@IPR_DCDCHANGE = common dso_local global i8 0, align 1
@XISR = common dso_local global i32 0, align 4
@XISR_RXXONGOT = common dso_local global i8 0, align 1
@ASYI_TXFLOWED = common dso_local global i32 0, align 4
@XISR_RXXOFFGOT = common dso_local global i8 0, align 1
@SCCR = common dso_local global i32 0, align 4
@CR_BREAKRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32)* @stl_sc26198otherisr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198otherisr(%struct.stlport* %0, i32 %1) #0 {
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.stlport*, %struct.stlport** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.stlport* %8, i32 %9)
  %11 = load %struct.stlport*, %struct.stlport** %3, align 8
  %12 = load i32, i32* @CIR, align 4
  %13 = call zeroext i8 @stl_sc26198getglobreg(%struct.stlport* %11, i32 %12)
  store i8 %13, i8* %5, align 1
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @CIR_SUBTYPEMASK, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  switch i32 %18, label %83 [
    i32 129, label %19
    i32 128, label %38
    i32 130, label %76
  ]

19:                                               ; preds = %2
  %20 = load %struct.stlport*, %struct.stlport** %3, align 8
  %21 = load i32, i32* @IPR, align 4
  %22 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %20, i32 %21)
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @IPR_DCDCHANGE, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.stlport*, %struct.stlport** %3, align 8
  %31 = call i32 @stl_cd_change(%struct.stlport* %30)
  %32 = load %struct.stlport*, %struct.stlport** %3, align 8
  %33 = getelementptr inbounds %struct.stlport, %struct.stlport* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %29, %19
  br label %84

38:                                               ; preds = %2
  %39 = load %struct.stlport*, %struct.stlport** %3, align 8
  %40 = load i32, i32* @XISR, align 4
  %41 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %39, i32 %40)
  store i8 %41, i8* %7, align 1
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @XISR_RXXONGOT, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load i32, i32* @ASYI_TXFLOWED, align 4
  %50 = load %struct.stlport*, %struct.stlport** %3, align 8
  %51 = getelementptr inbounds %struct.stlport, %struct.stlport* %50, i32 0, i32 1
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load %struct.stlport*, %struct.stlport** %3, align 8
  %54 = getelementptr inbounds %struct.stlport, %struct.stlport* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %48, %38
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @XISR_RXXOFFGOT, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load i32, i32* @ASYI_TXFLOWED, align 4
  %67 = load %struct.stlport*, %struct.stlport** %3, align 8
  %68 = getelementptr inbounds %struct.stlport, %struct.stlport* %67, i32 0, i32 1
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  %70 = load %struct.stlport*, %struct.stlport** %3, align 8
  %71 = getelementptr inbounds %struct.stlport, %struct.stlport* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %65, %58
  br label %84

76:                                               ; preds = %2
  %77 = load %struct.stlport*, %struct.stlport** %3, align 8
  %78 = load i32, i32* @SCCR, align 4
  %79 = load i32, i32* @CR_BREAKRESET, align 4
  %80 = call i32 @stl_sc26198setreg(%struct.stlport* %77, i32 %78, i32 %79)
  %81 = load %struct.stlport*, %struct.stlport** %3, align 8
  %82 = call i32 @stl_sc26198rxbadchars(%struct.stlport* %81)
  br label %84

83:                                               ; preds = %2
  br label %84

84:                                               ; preds = %83, %76, %75, %37
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32) #1

declare dso_local zeroext i8 @stl_sc26198getglobreg(%struct.stlport*, i32) #1

declare dso_local zeroext i8 @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @stl_cd_change(%struct.stlport*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i32) #1

declare dso_local i32 @stl_sc26198rxbadchars(%struct.stlport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
