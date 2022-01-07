; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.c_pdc_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.c_pdc_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ATA_DFLAG_CDB_INTR = common dso_local global i32 0, align 4
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @pdc_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %4 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %5 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %32 [
    i32 130, label %8
    i32 128, label %19
    i32 131, label %29
    i32 129, label %29
  ]

8:                                                ; preds = %1
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ATA_DFLAG_CDB_INTR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %33

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %1, %18
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %33

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %1, %1, %28
  %30 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %31 = call i32 @pdc_packet_start(%struct.ata_queued_cmd* %30)
  store i32 0, i32* %2, align 4
  br label %36

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %27, %17
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %35 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @pdc_packet_start(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
