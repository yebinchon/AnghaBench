; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac_regs.h_set_desc_eol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac_regs.h_set_desc_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ATC_SRC_DSCR_DIS = common dso_local global i32 0, align 4
@ATC_DST_DSCR_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_desc*)* @set_desc_eol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_desc_eol(%struct.at_desc* %0) #0 {
  %2 = alloca %struct.at_desc*, align 8
  store %struct.at_desc* %0, %struct.at_desc** %2, align 8
  %3 = load i32, i32* @ATC_SRC_DSCR_DIS, align 4
  %4 = load i32, i32* @ATC_DST_DSCR_DIS, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.at_desc*, %struct.at_desc** %2, align 8
  %7 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, %5
  store i32 %10, i32* %8, align 8
  %11 = load %struct.at_desc*, %struct.at_desc** %2, align 8
  %12 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
