; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_sge_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_sge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sge_params = type { i32 }

@F_DROPPKT = common dso_local global i32 0, align 4
@F_FLMODE = common dso_local global i32 0, align 4
@F_AVOIDCQOVFL = common dso_local global i32 0, align 4
@F_CQCRDTCTRL = common dso_local global i32 0, align 4
@F_CONGMODE = common dso_local global i32 0, align 4
@F_TNLFLMODE = common dso_local global i32 0, align 4
@F_FATLPERREN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@F_BIGENDIANINGRESS = common dso_local global i32 0, align 4
@F_ISCSICOALESCING = common dso_local global i32 0, align 4
@USING_MSIX = common dso_local global i32 0, align 4
@USING_MSI = common dso_local global i32 0, align 4
@F_ONEINTMULTQ = common dso_local global i32 0, align 4
@F_OPTONEINTMULTQ = common dso_local global i32 0, align 4
@A_SG_CONTROL = common dso_local global i32 0, align 4
@A_SG_EGR_RCQ_DRB_THRSH = common dso_local global i32 0, align 4
@A_SG_TIMER_TICK = common dso_local global i32 0, align 4
@A_SG_CMDQ_CREDIT_TH = common dso_local global i32 0, align 4
@A_SG_HI_DRB_HI_THRSH = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@A_SG_HI_DRB_LO_THRSH = common dso_local global i32 0, align 4
@A_SG_LO_DRB_HI_THRSH = common dso_local global i32 0, align 4
@A_SG_LO_DRB_LO_THRSH = common dso_local global i32 0, align 4
@A_SG_OCO_BASE = common dso_local global i32 0, align 4
@A_SG_DRB_PRI_THRESH = common dso_local global i32 0, align 4
@F_EGRGENCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_sge_init(%struct.adapter* %0, %struct.sge_params* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_params* %1, %struct.sge_params** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pci_resource_len(i32 %9, i32 2)
  %11 = ashr i32 %10, 12
  %12 = call i32 @ffs(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @F_DROPPKT, align 4
  %14 = call i32 @V_PKTSHIFT(i32 2)
  %15 = or i32 %13, %14
  %16 = load i32, i32* @F_FLMODE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @F_AVOIDCQOVFL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @F_CQCRDTCTRL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @F_CONGMODE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @F_TNLFLMODE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @F_FATLPERREN, align 4
  %27 = or i32 %25, %26
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = sub nsw i64 %28, 11
  %30 = call i32 @V_HOSTPAGESIZE(i64 %29)
  %31 = or i32 %27, %30
  %32 = load i32, i32* @F_BIGENDIANINGRESS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = sub i32 %37, 1
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  %42 = call i32 @V_USERSPACESIZE(i32 %41)
  %43 = or i32 %33, %42
  %44 = load i32, i32* @F_ISCSICOALESCING, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %40
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @USING_MSIX, align 4
  %56 = load i32, i32* @USING_MSI, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @F_ONEINTMULTQ, align 4
  %62 = load i32, i32* @F_OPTONEINTMULTQ, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %51
  br label %67

67:                                               ; preds = %66, %40
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = load i32, i32* @A_SG_CONTROL, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @t3_write_reg(%struct.adapter* %68, i32 %69, i32 %70)
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = load i32, i32* @A_SG_EGR_RCQ_DRB_THRSH, align 4
  %74 = call i32 @V_HIRCQDRBTHRSH(i32 512)
  %75 = call i32 @V_LORCQDRBTHRSH(i32 512)
  %76 = or i32 %74, %75
  %77 = call i32 @t3_write_reg(%struct.adapter* %72, i32 %73, i32 %76)
  %78 = load %struct.adapter*, %struct.adapter** %3, align 8
  %79 = load i32, i32* @A_SG_TIMER_TICK, align 4
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = call i32 @core_ticks_per_usec(%struct.adapter* %80)
  %82 = sdiv i32 %81, 10
  %83 = call i32 @t3_write_reg(%struct.adapter* %78, i32 %79, i32 %82)
  %84 = load %struct.adapter*, %struct.adapter** %3, align 8
  %85 = load i32, i32* @A_SG_CMDQ_CREDIT_TH, align 4
  %86 = call i32 @V_THRESHOLD(i32 32)
  %87 = load %struct.adapter*, %struct.adapter** %3, align 8
  %88 = call i32 @core_ticks_per_usec(%struct.adapter* %87)
  %89 = mul nsw i32 200, %88
  %90 = call i32 @V_TIMEOUT(i32 %89)
  %91 = or i32 %86, %90
  %92 = call i32 @t3_write_reg(%struct.adapter* %84, i32 %85, i32 %91)
  %93 = load %struct.adapter*, %struct.adapter** %3, align 8
  %94 = load i32, i32* @A_SG_HI_DRB_HI_THRSH, align 4
  %95 = load %struct.adapter*, %struct.adapter** %3, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @T3_REV_C, align 8
  %100 = icmp slt i64 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1000, i32 500
  %103 = call i32 @t3_write_reg(%struct.adapter* %93, i32 %94, i32 %102)
  %104 = load %struct.adapter*, %struct.adapter** %3, align 8
  %105 = load i32, i32* @A_SG_HI_DRB_LO_THRSH, align 4
  %106 = call i32 @t3_write_reg(%struct.adapter* %104, i32 %105, i32 256)
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = load i32, i32* @A_SG_LO_DRB_HI_THRSH, align 4
  %109 = call i32 @t3_write_reg(%struct.adapter* %107, i32 %108, i32 1000)
  %110 = load %struct.adapter*, %struct.adapter** %3, align 8
  %111 = load i32, i32* @A_SG_LO_DRB_LO_THRSH, align 4
  %112 = call i32 @t3_write_reg(%struct.adapter* %110, i32 %111, i32 256)
  %113 = load %struct.adapter*, %struct.adapter** %3, align 8
  %114 = load i32, i32* @A_SG_OCO_BASE, align 4
  %115 = call i32 @V_BASE1(i32 4095)
  %116 = call i32 @t3_write_reg(%struct.adapter* %113, i32 %114, i32 %115)
  %117 = load %struct.adapter*, %struct.adapter** %3, align 8
  %118 = load i32, i32* @A_SG_DRB_PRI_THRESH, align 4
  %119 = call i32 @t3_write_reg(%struct.adapter* %117, i32 %118, i32 64512)
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @V_PKTSHIFT(i32) #1

declare dso_local i32 @V_HOSTPAGESIZE(i64) #1

declare dso_local i32 @V_USERSPACESIZE(i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_HIRCQDRBTHRSH(i32) #1

declare dso_local i32 @V_LORCQDRBTHRSH(i32) #1

declare dso_local i32 @core_ticks_per_usec(%struct.adapter*) #1

declare dso_local i32 @V_THRESHOLD(i32) #1

declare dso_local i32 @V_TIMEOUT(i32) #1

declare dso_local i32 @V_BASE1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
