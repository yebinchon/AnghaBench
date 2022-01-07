; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, %struct.ata_port** }
%struct.ata_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_interrupt(i32 %0, i8* %1) #0 {
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

17:                                               ; preds = %61, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %20 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %64

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
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %31, i32 %35)
  store %struct.ata_queued_cmd* %36, %struct.ata_queued_cmd** %10, align 8
  %37 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %38 = icmp ne %struct.ata_queued_cmd* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %23
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %39
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %56 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %57 = call i32 @ata_sff_host_intr(%struct.ata_port* %55, %struct.ata_queued_cmd* %56)
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %47, %39, %23
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %17

64:                                               ; preds = %17
  %65 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %66 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %65, i32 0, i32 1
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @IRQ_RETVAL(i32 %69)
  ret i32 %70
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_sff_host_intr(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
