; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_phys_buf = type { i64, i64 }

@NES_DBG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mr* (%struct.ib_pd*, i32)* @nes_get_dma_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mr* @nes_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_phys_buf, align 8
  %6 = alloca i64, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @NES_DBG_MR, align 4
  %8 = call i32 @nes_debug(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %5, i32 0, i32 1
  store i64 1099511627775, i64* %9, align 8
  %10 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %5, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.ib_mr* @nes_reg_phys_mr(%struct.ib_pd* %11, %struct.ib_phys_buf* %5, i32 1, i32 %12, i64* %6)
  ret %struct.ib_mr* %13
}

declare dso_local i32 @nes_debug(i32, i8*) #1

declare dso_local %struct.ib_mr* @nes_reg_phys_mr(%struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
