; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32 }

@SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PM3393 intr cause 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*)* @pm3393_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_interrupt_handler(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %4 = load %struct.cmac*, %struct.cmac** %2, align 8
  %5 = load i32, i32* @SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS, align 4
  %6 = call i32 @pmread(%struct.cmac* %4, i32 %5, i32* %3)
  %7 = load %struct.cmac*, %struct.cmac** %2, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @INTR, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CH_DBG(i32 %9, i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.cmac*, %struct.cmac** %2, align 8
  %14 = call i32 @pm3393_interrupt_clear(%struct.cmac* %13)
  ret i32 0
}

declare dso_local i32 @pmread(%struct.cmac*, i32, i32*) #1

declare dso_local i32 @CH_DBG(i32, i32, i8*, i32) #1

declare dso_local i32 @pm3393_interrupt_clear(%struct.cmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
