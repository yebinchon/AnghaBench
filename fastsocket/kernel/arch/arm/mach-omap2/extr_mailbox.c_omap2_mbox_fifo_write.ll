; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_mailbox.c_omap2_mbox_fifo_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_mailbox.c_omap2_mbox_fifo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { i64 }
%struct.omap_mbox2_fifo = type { i32 }
%struct.omap_mbox2_priv = type { %struct.omap_mbox2_fifo }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mbox*, i32)* @omap2_mbox_fifo_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mbox_fifo_write(%struct.omap_mbox* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_mbox2_fifo*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %7 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.omap_mbox2_priv*
  %10 = getelementptr inbounds %struct.omap_mbox2_priv, %struct.omap_mbox2_priv* %9, i32 0, i32 0
  store %struct.omap_mbox2_fifo* %10, %struct.omap_mbox2_fifo** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.omap_mbox2_fifo*, %struct.omap_mbox2_fifo** %5, align 8
  %13 = getelementptr inbounds %struct.omap_mbox2_fifo, %struct.omap_mbox2_fifo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mbox_write_reg(i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @mbox_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
