; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_setup_pump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_setup_pump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, i32, %struct.TYPE_4__, %struct.IsdnCardState* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.IsdnCardState = type { i32 }

@ISAR_HIS_PUMPCFG = common dso_local global i32 0, align 4
@PMOD_BYPASS = common dso_local global i32 0, align 4
@PMOD_DATAMODEM = common dso_local global i32 0, align 4
@BC_FLG_ORIG = common dso_local global i32 0, align 4
@PCTRL_ORIG = common dso_local global i32 0, align 4
@PV32P6_CTN = common dso_local global i32 0, align 4
@PV32P6_ATN = common dso_local global i32 0, align 4
@para_TOA = common dso_local global i32 0, align 4
@PV32P2_V23R = common dso_local global i32 0, align 4
@PV32P2_V22A = common dso_local global i32 0, align 4
@PV32P2_V22B = common dso_local global i32 0, align 4
@PV32P2_V22C = common dso_local global i32 0, align 4
@PV32P2_V21 = common dso_local global i32 0, align 4
@PV32P2_BEL = common dso_local global i32 0, align 4
@PV32P3_AMOD = common dso_local global i32 0, align 4
@PV32P3_V32B = common dso_local global i32 0, align 4
@PV32P3_V23B = common dso_local global i32 0, align 4
@PV32P4_UT144 = common dso_local global i32 0, align 4
@PV32P5_UT144 = common dso_local global i32 0, align 4
@PMOD_FAX = common dso_local global i32 0, align 4
@PFAXP2_CTN = common dso_local global i32 0, align 4
@PFAXP2_ATN = common dso_local global i32 0, align 4
@STFAX_NULL = common dso_local global i32 0, align 4
@BC_FLG_FTI_RUN = common dso_local global i32 0, align 4
@ISAR_HIS_PSTREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @setup_pump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pump(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i32], align 16
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %7 = load %struct.BCState*, %struct.BCState** %2, align 8
  %8 = getelementptr inbounds %struct.BCState, %struct.BCState* %7, i32 0, i32 3
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %8, align 8
  store %struct.IsdnCardState* %9, %struct.IsdnCardState** %3, align 8
  %10 = load %struct.BCState*, %struct.BCState** %2, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SET_DPS(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.BCState*, %struct.BCState** %2, align 8
  %17 = getelementptr inbounds %struct.BCState, %struct.BCState* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %117 [
    i32 130, label %19
    i32 129, label %19
    i32 131, label %19
    i32 128, label %26
    i32 132, label %74
  ]

19:                                               ; preds = %1, %1, %1
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ISAR_HIS_PUMPCFG, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PMOD_BYPASS, align 4
  %25 = call i32 @sendmsg(%struct.IsdnCardState* %20, i32 %23, i32 %24, i32 0, i32* null)
  br label %117

26:                                               ; preds = %1
  %27 = load i32, i32* @PMOD_DATAMODEM, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @BC_FLG_ORIG, align 4
  %29 = load %struct.BCState*, %struct.BCState** %2, align 8
  %30 = getelementptr inbounds %struct.BCState, %struct.BCState* %29, i32 0, i32 1
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @PCTRL_ORIG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @PV32P6_CTN, align 4
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 %37, i32* %38, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @PV32P6_ATN, align 4
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* @para_TOA, align 4
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 %43, i32* %44, align 16
  %45 = load i32, i32* @PV32P2_V23R, align 4
  %46 = load i32, i32* @PV32P2_V22A, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PV32P2_V22B, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PV32P2_V22C, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PV32P2_V21, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PV32P2_BEL, align 4
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @PV32P3_AMOD, align 4
  %58 = load i32, i32* @PV32P3_V32B, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PV32P3_V23B, align 4
  %61 = or i32 %59, %60
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* @PV32P4_UT144, align 4
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @PV32P5_UT144, align 4
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 %65, i32* %66, align 16
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @ISAR_HIS_PUMPCFG, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %73 = call i32 @sendmsg(%struct.IsdnCardState* %67, i32 %70, i32 %71, i32 6, i32* %72)
  br label %117

74:                                               ; preds = %1
  %75 = load i32, i32* @PMOD_FAX, align 4
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @BC_FLG_ORIG, align 4
  %77 = load %struct.BCState*, %struct.BCState** %2, align 8
  %78 = getelementptr inbounds %struct.BCState, %struct.BCState* %77, i32 0, i32 1
  %79 = call i32 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @PCTRL_ORIG, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @PFAXP2_CTN, align 4
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  br label %90

87:                                               ; preds = %74
  %88 = load i32, i32* @PFAXP2_ATN, align 4
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* @para_TOA, align 4
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 %91, i32* %92, align 16
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @ISAR_HIS_PUMPCFG, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %5, align 4
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %99 = call i32 @sendmsg(%struct.IsdnCardState* %93, i32 %96, i32 %97, i32 2, i32* %98)
  %100 = load i32, i32* @STFAX_NULL, align 4
  %101 = load %struct.BCState*, %struct.BCState** %2, align 8
  %102 = getelementptr inbounds %struct.BCState, %struct.BCState* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 8
  %105 = load %struct.BCState*, %struct.BCState** %2, align 8
  %106 = getelementptr inbounds %struct.BCState, %struct.BCState* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.BCState*, %struct.BCState** %2, align 8
  %110 = getelementptr inbounds %struct.BCState, %struct.BCState* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load i32, i32* @BC_FLG_FTI_RUN, align 4
  %114 = load %struct.BCState*, %struct.BCState** %2, align 8
  %115 = getelementptr inbounds %struct.BCState, %struct.BCState* %114, i32 0, i32 1
  %116 = call i32 @test_and_set_bit(i32 %113, i32* %115)
  br label %117

117:                                              ; preds = %1, %90, %42, %19
  %118 = call i32 @udelay(i32 1000)
  %119 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @ISAR_HIS_PSTREQ, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @sendmsg(%struct.IsdnCardState* %119, i32 %122, i32 0, i32 0, i32* null)
  %124 = call i32 @udelay(i32 1000)
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

declare dso_local i32 @sendmsg(%struct.IsdnCardState*, i32, i32, i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
