; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_init_parity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_init_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@F_EGRESS = common dso_local global i32 0, align 4
@SGE_QSETS = common dso_local global i32 0, align 4
@F_RESPONSEQ = common dso_local global i32 0, align 4
@A_CIM_IBQ_DBG_DATA = common dso_local global i32 0, align 4
@M_IBQDBGADDR = common dso_local global i32 0, align 4
@A_CIM_IBQ_DBG_CFG = common dso_local global i32 0, align 4
@F_IBQDBGEN = common dso_local global i32 0, align 4
@F_IBQDBGWR = common dso_local global i32 0, align 4
@F_IBQDBGBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @init_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_parity(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %9 = call i32 @t3_read_reg(%struct.adapter* %7, i32 %8)
  %10 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %115

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 16
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @F_EGRESS, align 4
  %29 = call i32 @clear_sge_ctxt(%struct.adapter* %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %17

33:                                               ; preds = %23
  store i32 65520, i32* %4, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %38, 65535
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %50

42:                                               ; preds = %40
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @F_EGRESS, align 4
  %46 = call i32 @clear_sge_ctxt(%struct.adapter* %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %34

50:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SGE_QSETS, align 4
  %57 = icmp slt i32 %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %60, label %68

60:                                               ; preds = %58
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @F_RESPONSEQ, align 4
  %64 = call i32 @clear_sge_ctxt(%struct.adapter* %61, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %51

68:                                               ; preds = %58
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %115

73:                                               ; preds = %68
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = load i32, i32* @A_CIM_IBQ_DBG_DATA, align 4
  %76 = call i32 @t3_write_reg(%struct.adapter* %74, i32 %75, i32 0)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %111, %73
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %114

80:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %107, %80
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @M_IBQDBGADDR, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %81
  %86 = load %struct.adapter*, %struct.adapter** %3, align 8
  %87 = load i32, i32* @A_CIM_IBQ_DBG_CFG, align 4
  %88 = load i32, i32* @F_IBQDBGEN, align 4
  %89 = load i32, i32* @F_IBQDBGWR, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @V_IBQDBGQID(i32 %91)
  %93 = or i32 %90, %92
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @V_IBQDBGADDR(i32 %94)
  %96 = or i32 %93, %95
  %97 = call i32 @t3_write_reg(%struct.adapter* %86, i32 %87, i32 %96)
  %98 = load %struct.adapter*, %struct.adapter** %3, align 8
  %99 = load i32, i32* @A_CIM_IBQ_DBG_CFG, align 4
  %100 = load i32, i32* @F_IBQDBGBUSY, align 4
  %101 = call i32 @t3_wait_op_done(%struct.adapter* %98, i32 %99, i32 %100, i32 0, i32 2, i32 1)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %85
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %115

106:                                              ; preds = %85
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %81

110:                                              ; preds = %81
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %77

114:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %104, %71, %13
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @clear_sge_ctxt(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_IBQDBGQID(i32) #1

declare dso_local i32 @V_IBQDBGADDR(i32) #1

declare dso_local i32 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
