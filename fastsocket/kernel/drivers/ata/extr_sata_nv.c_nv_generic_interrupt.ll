; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_generic_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_generic_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, %struct.ata_port** }
%struct.ata_port = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.ata_port*)* }
%struct.TYPE_4__ = type { i32 }
%struct.ata_queued_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nv_generic_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_generic_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ata_port*, align 8
  %10 = alloca %struct.ata_queued_cmd*, align 8
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
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %64, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %20 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %17
  %24 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %25 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %24, i32 0, i32 2
  %26 = load %struct.ata_port**, %struct.ata_port*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %26, i64 %28
  %30 = load %struct.ata_port*, %struct.ata_port** %29, align 8
  store %struct.ata_port* %30, %struct.ata_port** %9, align 8
  %31 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %32 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %31, i32 %35)
  store %struct.ata_queued_cmd* %36, %struct.ata_queued_cmd** %10, align 8
  %37 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %38 = icmp ne %struct.ata_queued_cmd* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %23
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %49 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %50 = call i64 @ata_sff_host_intr(%struct.ata_port* %48, %struct.ata_queued_cmd* %49)
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %63

55:                                               ; preds = %39, %23
  %56 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %57 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %59, align 8
  %61 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %62 = call i32 %60(%struct.ata_port* %61)
  br label %63

63:                                               ; preds = %55, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %17

67:                                               ; preds = %17
  %68 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %69 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %68, i32 0, i32 1
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @IRQ_RETVAL(i32 %72)
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i64 @ata_sff_host_intr(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
