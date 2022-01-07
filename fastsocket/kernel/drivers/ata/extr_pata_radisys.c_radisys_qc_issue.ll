; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_radisys.c_radisys_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_radisys.c_radisys_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port* }
%struct.ata_device = type { i64, i64 }
%struct.ata_port = type { %struct.ata_device* }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @radisys_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radisys_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 1
  %7 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  store %struct.ata_port* %7, %struct.ata_port** %3, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 0
  %10 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  store %struct.ata_device* %10, %struct.ata_device** %4, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = load %struct.ata_device*, %struct.ata_device** %13, align 8
  %15 = icmp ne %struct.ata_device* %11, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  %17 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XFER_UDMA_0, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %24 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %29 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %30 = call i32 @radisys_set_dmamode(%struct.ata_port* %28, %struct.ata_device* %29)
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %38 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %39 = call i32 @radisys_set_piomode(%struct.ata_port* %37, %struct.ata_device* %38)
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41, %16
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %45 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %44)
  ret i32 %45
}

declare dso_local i32 @radisys_set_dmamode(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @radisys_set_piomode(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
