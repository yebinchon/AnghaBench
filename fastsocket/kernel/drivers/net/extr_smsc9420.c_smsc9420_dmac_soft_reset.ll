; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_dmac_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_dmac_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32 }

@BUS_MODE = common dso_local global i32 0, align 4
@BUS_MODE_SWR_ = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Software reset not cleared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc9420_pdata*)* @smsc9420_dmac_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_dmac_soft_reset(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca %struct.smsc9420_pdata*, align 8
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %2, align 8
  %3 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %4 = load i32, i32* @BUS_MODE, align 4
  %5 = load i32, i32* @BUS_MODE_SWR_, align 4
  %6 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %3, i32 %4, i32 %5)
  %7 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %8 = load i32, i32* @BUS_MODE, align 4
  %9 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %7, i32 %8)
  %10 = call i32 @udelay(i32 2)
  %11 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %12 = load i32, i32* @BUS_MODE, align 4
  %13 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %11, i32 %12)
  %14 = load i32, i32* @BUS_MODE_SWR_, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @DRV, align 4
  %19 = call i32 @smsc_warn(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smsc_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
