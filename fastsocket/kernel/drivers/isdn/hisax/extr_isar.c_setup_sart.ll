; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_setup_sart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_setup_sart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, %struct.TYPE_4__, %struct.IsdnCardState* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.IsdnCardState = type { i32 }

@ISAR_HIS_SARTCFG = common dso_local global i8 0, align 1
@SMODE_DISABLE = common dso_local global i8 0, align 1
@SMODE_BINARY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@SMODE_HDLC = common dso_local global i8 0, align 1
@SMODE_V14 = common dso_local global i8 0, align 1
@SCTRL_HDMC_BOTH = common dso_local global i8 0, align 1
@S_P1_CHS_8 = common dso_local global i8 0, align 1
@S_P2_BFT_DEF = common dso_local global i8 0, align 1
@ISAR_HIS_BSTREQ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @setup_sart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sart(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x i8], align 1
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %7 = load %struct.BCState*, %struct.BCState** %2, align 8
  %8 = getelementptr inbounds %struct.BCState, %struct.BCState* %7, i32 0, i32 2
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %8, align 8
  store %struct.IsdnCardState* %9, %struct.IsdnCardState** %3, align 8
  %10 = load %struct.BCState*, %struct.BCState** %2, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call signext i8 @SET_DPS(i32 %14)
  store i8 %15, i8* %4, align 1
  %16 = load %struct.BCState*, %struct.BCState** %2, align 8
  %17 = getelementptr inbounds %struct.BCState, %struct.BCState* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %73 [
    i32 130, label %19
    i32 129, label %29
    i32 131, label %39
    i32 128, label %51
    i32 132, label %72
  ]

19:                                               ; preds = %1
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @ISAR_HIS_SARTCFG, align 1
  %24 = sext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8, i8* @SMODE_DISABLE, align 1
  %28 = call i32 @sendmsg(%struct.IsdnCardState* %20, i8 signext %26, i8 signext %27, i32 0, i8* null)
  br label %73

29:                                               ; preds = %1
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @ISAR_HIS_SARTCFG, align 1
  %34 = sext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8, i8* @SMODE_BINARY, align 1
  %38 = call i32 @sendmsg(%struct.IsdnCardState* %30, i8 signext %36, i8 signext %37, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %73

39:                                               ; preds = %1
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %40, align 1
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %42 = load i8, i8* %4, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @ISAR_HIS_SARTCFG, align 1
  %45 = sext i8 %44 to i32
  %46 = or i32 %43, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8, i8* @SMODE_HDLC, align 1
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %50 = call i32 @sendmsg(%struct.IsdnCardState* %41, i8 signext %47, i8 signext %48, i32 1, i8* %49)
  br label %73

51:                                               ; preds = %1
  %52 = load i8, i8* @SMODE_V14, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @SCTRL_HDMC_BOTH, align 1
  %55 = sext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %5, align 1
  %58 = load i8, i8* @S_P1_CHS_8, align 1
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %58, i8* %59, align 1
  %60 = load i8, i8* @S_P2_BFT_DEF, align 1
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %60, i8* %61, align 1
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %63 = load i8, i8* %4, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @ISAR_HIS_SARTCFG, align 1
  %66 = sext i8 %65 to i32
  %67 = or i32 %64, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8, i8* %5, align 1
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %71 = call i32 @sendmsg(%struct.IsdnCardState* %62, i8 signext %68, i8 signext %69, i32 2, i8* %70)
  br label %73

72:                                               ; preds = %1
  br label %73

73:                                               ; preds = %1, %72, %51, %39, %29, %19
  %74 = call i32 @udelay(i32 1000)
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %76 = load i8, i8* %4, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @ISAR_HIS_BSTREQ, align 1
  %79 = sext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = trunc i32 %80 to i8
  %82 = call i32 @sendmsg(%struct.IsdnCardState* %75, i8 signext %81, i8 signext 0, i32 0, i8* null)
  %83 = call i32 @udelay(i32 1000)
  ret void
}

declare dso_local signext i8 @SET_DPS(i32) #1

declare dso_local i32 @sendmsg(%struct.IsdnCardState*, i8 signext, i8 signext, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
