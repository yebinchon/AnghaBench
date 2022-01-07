; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_setup_pump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_setup_pump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_ch = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ISAR_HIS_PUMPCFG = common dso_local global i32 0, align 4
@PMOD_BYPASS = common dso_local global i32 0, align 4
@FLG_DTMFSEND = common dso_local global i32 0, align 4
@PMOD_DTMF_TRANS = common dso_local global i32 0, align 4
@PMOD_DTMF = common dso_local global i32 0, align 4
@PMOD_DATAMODEM = common dso_local global i32 0, align 4
@FLG_ORIGIN = common dso_local global i32 0, align 4
@PCTRL_ORIG = common dso_local global i32 0, align 4
@PV32P6_CTN = common dso_local global i32 0, align 4
@PV32P6_ATN = common dso_local global i32 0, align 4
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
@FLG_FTI_RUN = common dso_local global i32 0, align 4
@ISAR_HIS_PSTREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isar_ch*)* @setup_pump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pump(%struct.isar_ch* %0) #0 {
  %2 = alloca %struct.isar_ch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  store %struct.isar_ch* %0, %struct.isar_ch** %2, align 8
  %6 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %7 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SET_DPS(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %11 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %143 [
    i32 128, label %14
    i32 130, label %14
    i32 133, label %14
    i32 132, label %23
    i32 131, label %53
    i32 129, label %103
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %16 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ISAR_HIS_PUMPCFG, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PMOD_BYPASS, align 4
  %22 = call i32 @send_mbox(i32 %17, i32 %20, i32 %21, i32 0, i32* null)
  br label %143

23:                                               ; preds = %1
  %24 = load i32, i32* @FLG_DTMFSEND, align 4
  %25 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %26 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %24, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 5, i32* %31, align 16
  %32 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %33 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ISAR_HIS_PUMPCFG, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PMOD_DTMF_TRANS, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %40 = call i32 @send_mbox(i32 %34, i32 %37, i32 %38, i32 1, i32* %39)
  br label %52

41:                                               ; preds = %23
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 40, i32* %42, align 16
  %43 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %44 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @ISAR_HIS_PUMPCFG, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PMOD_DTMF, align 4
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %51 = call i32 @send_mbox(i32 %45, i32 %48, i32 %49, i32 1, i32* %50)
  br label %52

52:                                               ; preds = %41, %30
  br label %53

53:                                               ; preds = %1, %52
  %54 = load i32, i32* @PMOD_DATAMODEM, align 4
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @FLG_ORIGIN, align 4
  %56 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %57 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @test_bit(i32 %55, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* @PCTRL_ORIG, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @PV32P6_CTN, align 4
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 %65, i32* %66, align 4
  br label %70

67:                                               ; preds = %53
  %68 = load i32, i32* @PV32P6_ATN, align 4
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %61
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 6, i32* %71, align 16
  %72 = load i32, i32* @PV32P2_V23R, align 4
  %73 = load i32, i32* @PV32P2_V22A, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @PV32P2_V22B, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @PV32P2_V22C, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @PV32P2_V21, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @PV32P2_BEL, align 4
  %82 = or i32 %80, %81
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @PV32P3_AMOD, align 4
  %85 = load i32, i32* @PV32P3_V32B, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PV32P3_V23B, align 4
  %88 = or i32 %86, %87
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* @PV32P4_UT144, align 4
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @PV32P5_UT144, align 4
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 %92, i32* %93, align 16
  %94 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %95 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @ISAR_HIS_PUMPCFG, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %4, align 4
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %102 = call i32 @send_mbox(i32 %96, i32 %99, i32 %100, i32 6, i32* %101)
  br label %143

103:                                              ; preds = %1
  %104 = load i32, i32* @PMOD_FAX, align 4
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @FLG_ORIGIN, align 4
  %106 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %107 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = call i32 @test_bit(i32 %105, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load i32, i32* @PCTRL_ORIG, align 4
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* @PFAXP2_CTN, align 4
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %115, i32* %116, align 4
  br label %120

117:                                              ; preds = %103
  %118 = load i32, i32* @PFAXP2_ATN, align 4
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %111
  %121 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 6, i32* %121, align 16
  %122 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %123 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @ISAR_HIS_PUMPCFG, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %4, align 4
  %129 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %130 = call i32 @send_mbox(i32 %124, i32 %127, i32 %128, i32 2, i32* %129)
  %131 = load i32, i32* @STFAX_NULL, align 4
  %132 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %133 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %135 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %134, i32 0, i32 3
  store i32 0, i32* %135, align 4
  %136 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %137 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %136, i32 0, i32 2
  store i32 0, i32* %137, align 4
  %138 = load i32, i32* @FLG_FTI_RUN, align 4
  %139 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %140 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = call i32 @test_and_set_bit(i32 %138, i32* %141)
  br label %143

143:                                              ; preds = %1, %120, %70, %14
  %144 = call i32 @udelay(i32 1000)
  %145 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %146 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @ISAR_HIS_PSTREQ, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @send_mbox(i32 %147, i32 %150, i32 0, i32 0, i32* null)
  %152 = call i32 @udelay(i32 1000)
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

declare dso_local i32 @send_mbox(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
