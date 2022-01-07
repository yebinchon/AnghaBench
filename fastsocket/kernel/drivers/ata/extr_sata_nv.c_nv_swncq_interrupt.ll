; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, %struct.ata_port**, i64* }
%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NV_MMIO_BAR = common dso_local global i64 0, align 8
@NV_INT_STATUS_MCP55 = common dso_local global i64 0, align 8
@NV_INT_PORT_SHIFT_MCP55 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nv_swncq_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_swncq_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_port*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ata_host*
  store %struct.ata_host* %12, %struct.ata_host** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %14 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %18 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %17, i32 0, i32 3
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @NV_MMIO_BAR, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NV_INT_STATUS_MCP55, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %67, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %29 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %34 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %33, i32 0, i32 2
  %35 = load %struct.ata_port**, %struct.ata_port*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %35, i64 %37
  %39 = load %struct.ata_port*, %struct.ata_port** %38, align 8
  store %struct.ata_port* %39, %struct.ata_port** %10, align 8
  %40 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @nv_swncq_host_interrupt(%struct.ata_port* %46, i32 %47)
  store i32 1, i32* %7, align 4
  br label %63

49:                                               ; preds = %32
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %54 = call i32 @nv_swncq_irq_clear(%struct.ata_port* %53, i32 65520)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @nv_host_intr(%struct.ata_port* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %45
  %64 = load i32, i32* @NV_INT_PORT_SHIFT_MCP55, align 4
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %26

70:                                               ; preds = %26
  %71 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %72 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %71, i32 0, i32 1
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @IRQ_RETVAL(i32 %75)
  ret i32 %76
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @nv_swncq_host_interrupt(%struct.ata_port*, i32) #1

declare dso_local i32 @nv_swncq_irq_clear(%struct.ata_port*, i32) #1

declare dso_local i64 @nv_host_intr(%struct.ata_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
