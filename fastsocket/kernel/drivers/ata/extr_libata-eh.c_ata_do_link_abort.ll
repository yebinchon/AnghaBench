; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_do_link_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_do_link_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ata_link = type { i32 }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_link* }

@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, %struct.ata_link*)* @ata_do_link_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_do_link_abort(%struct.ata_port* %0, %struct.ata_link* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_link* %1, %struct.ata_link** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = call i32 @ata_eh_set_pending(%struct.ata_port* %17, i32 0)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %51, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %24, i32 %25)
  store %struct.ata_queued_cmd* %26, %struct.ata_queued_cmd** %7, align 8
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %28 = icmp ne %struct.ata_queued_cmd* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %31 = icmp ne %struct.ata_link* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.ata_link*, %struct.ata_link** %36, align 8
  %38 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %39 = icmp eq %struct.ata_link* %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32, %29
  %41 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %47 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %46)
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %40, %32, %23
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %59 = call i32 @ata_port_schedule_eh(%struct.ata_port* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ata_eh_set_pending(%struct.ata_port*, i32) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
