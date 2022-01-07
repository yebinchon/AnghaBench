; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_init_txdds_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_init_txdds_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txdds_ent = type { i32 }
%struct.qib_pportdata = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QIB_HAS_QSFP = common dso_local global i32 0, align 4
@TXDDS_TABLE_SZ = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QIB_IB_QDR = common dso_local global i64 0, align 8
@QIB_IB_DDR = common dso_local global i64 0, align 8
@txdds_sdr = common dso_local global %struct.txdds_ent* null, align 8
@txdds_ddr = common dso_local global %struct.txdds_ent* null, align 8
@txdds_qdr = common dso_local global %struct.txdds_ent* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @init_txdds_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_txdds_table(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.txdds_ent*, align 8
  %6 = alloca %struct.txdds_ent*, align 8
  %7 = alloca %struct.txdds_ent*, align 8
  %8 = alloca %struct.txdds_ent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @find_best_ent(%struct.qib_pportdata* %11, %struct.txdds_ent** %5, %struct.txdds_ent** %6, %struct.txdds_ent** %7, i32 %12)
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QIB_HAS_QSFP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %2
  store i32 1, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %28 = load %struct.txdds_ent*, %struct.txdds_ent** %5, align 8
  %29 = call i32 @set_txdds(%struct.qib_pportdata* %27, i32 0, %struct.txdds_ent* %28)
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %31 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %32 = load %struct.txdds_ent*, %struct.txdds_ent** %6, align 8
  %33 = call i32 @set_txdds(%struct.qib_pportdata* %30, i32 %31, %struct.txdds_ent* %32)
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %35 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %36 = mul nsw i32 2, %35
  %37 = load %struct.txdds_ent*, %struct.txdds_ent** %7, align 8
  %38 = call i32 @set_txdds(%struct.qib_pportdata* %34, i32 %36, %struct.txdds_ent* %37)
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @QIBL_LINKINIT, align 4
  %43 = load i32, i32* @QIBL_LINKARMED, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %26
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %51 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QIB_IB_QDR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load %struct.txdds_ent*, %struct.txdds_ent** %7, align 8
  br label %69

57:                                               ; preds = %49
  %58 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %59 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @QIB_IB_DDR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load %struct.txdds_ent*, %struct.txdds_ent** %6, align 8
  br label %67

65:                                               ; preds = %57
  %66 = load %struct.txdds_ent*, %struct.txdds_ent** %5, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi %struct.txdds_ent* [ %64, %63 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67, %55
  %70 = phi %struct.txdds_ent* [ %56, %55 ], [ %68, %67 ]
  store %struct.txdds_ent* %70, %struct.txdds_ent** %8, align 8
  %71 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %72 = load %struct.txdds_ent*, %struct.txdds_ent** %8, align 8
  %73 = call i32 @write_tx_serdes_param(%struct.qib_pportdata* %71, %struct.txdds_ent* %72)
  br label %74

74:                                               ; preds = %69, %26
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %128, %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_sdr, align 8
  %78 = call i32 @ARRAY_SIZE(%struct.txdds_ent* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %75
  %81 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load %struct.txdds_ent*, %struct.txdds_ent** %5, align 8
  br label %92

87:                                               ; preds = %80
  %88 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_sdr, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %88, i64 %90
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi %struct.txdds_ent* [ %86, %85 ], [ %91, %87 ]
  %94 = call i32 @set_txdds(%struct.qib_pportdata* %81, i32 %82, %struct.txdds_ent* %93)
  %95 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load %struct.txdds_ent*, %struct.txdds_ent** %6, align 8
  br label %108

103:                                              ; preds = %92
  %104 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_ddr, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %104, i64 %106
  br label %108

108:                                              ; preds = %103, %101
  %109 = phi %struct.txdds_ent* [ %102, %101 ], [ %107, %103 ]
  %110 = call i32 @set_txdds(%struct.qib_pportdata* %95, i32 %98, %struct.txdds_ent* %109)
  %111 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %114 = mul nsw i32 2, %113
  %115 = add nsw i32 %112, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load %struct.txdds_ent*, %struct.txdds_ent** %7, align 8
  br label %125

120:                                              ; preds = %108
  %121 = load %struct.txdds_ent*, %struct.txdds_ent** @txdds_qdr, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %121, i64 %123
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi %struct.txdds_ent* [ %119, %118 ], [ %124, %120 ]
  %127 = call i32 @set_txdds(%struct.qib_pportdata* %111, i32 %115, %struct.txdds_ent* %126)
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %75

131:                                              ; preds = %75
  ret void
}

declare dso_local i32 @find_best_ent(%struct.qib_pportdata*, %struct.txdds_ent**, %struct.txdds_ent**, %struct.txdds_ent**, i32) #1

declare dso_local i32 @set_txdds(%struct.qib_pportdata*, i32, %struct.txdds_ent*) #1

declare dso_local i32 @write_tx_serdes_param(%struct.qib_pportdata*, %struct.txdds_ent*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.txdds_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
