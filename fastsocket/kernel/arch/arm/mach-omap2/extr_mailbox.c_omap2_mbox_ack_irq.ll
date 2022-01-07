; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_mailbox.c_omap2_mbox_ack_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_mailbox.c_omap2_mbox_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { i64 }
%struct.omap_mbox2_priv = type { i32, i32, i32 }

@IRQ_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mbox*, i64)* @omap2_mbox_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mbox_ack_irq(%struct.omap_mbox* %0, i64 %1) #0 {
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.omap_mbox2_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_mbox* %0, %struct.omap_mbox** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %8 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.omap_mbox2_priv*
  store %struct.omap_mbox2_priv* %10, %struct.omap_mbox2_priv** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @IRQ_TX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.omap_mbox2_priv*, %struct.omap_mbox2_priv** %5, align 8
  %16 = getelementptr inbounds %struct.omap_mbox2_priv, %struct.omap_mbox2_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.omap_mbox2_priv*, %struct.omap_mbox2_priv** %5, align 8
  %20 = getelementptr inbounds %struct.omap_mbox2_priv, %struct.omap_mbox2_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.omap_mbox2_priv*, %struct.omap_mbox2_priv** %5, align 8
  %26 = getelementptr inbounds %struct.omap_mbox2_priv, %struct.omap_mbox2_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mbox_write_reg(i32 %24, i32 %27)
  %29 = load %struct.omap_mbox2_priv*, %struct.omap_mbox2_priv** %5, align 8
  %30 = getelementptr inbounds %struct.omap_mbox2_priv, %struct.omap_mbox2_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mbox_read_reg(i32 %31)
  ret void
}

declare dso_local i32 @mbox_write_reg(i32, i32) #1

declare dso_local i32 @mbox_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
