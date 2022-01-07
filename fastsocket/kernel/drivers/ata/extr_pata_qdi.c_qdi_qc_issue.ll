; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_qdi.c_qdi_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_qdi.c_qdi_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port* }
%struct.ata_device = type { i64, i64 }
%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qdi_data* }
%struct.qdi_data = type { i64*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @qdi_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdi_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.qdi_data*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 1
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 0
  %11 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  store %struct.ata_device* %11, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.qdi_data*, %struct.qdi_data** %15, align 8
  store %struct.qdi_data* %16, %struct.qdi_data** %5, align 8
  %17 = load %struct.qdi_data*, %struct.qdi_data** %5, align 8
  %18 = getelementptr inbounds %struct.qdi_data, %struct.qdi_data* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.qdi_data*, %struct.qdi_data** %5, align 8
  %26 = getelementptr inbounds %struct.qdi_data, %struct.qdi_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %1
  %30 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %31 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.qdi_data*, %struct.qdi_data** %5, align 8
  %36 = getelementptr inbounds %struct.qdi_data, %struct.qdi_data* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.qdi_data*, %struct.qdi_data** %5, align 8
  %44 = getelementptr inbounds %struct.qdi_data, %struct.qdi_data* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.qdi_data*, %struct.qdi_data** %5, align 8
  %46 = getelementptr inbounds %struct.qdi_data, %struct.qdi_data* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %49 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.qdi_data*, %struct.qdi_data** %5, align 8
  %54 = getelementptr inbounds %struct.qdi_data, %struct.qdi_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @outb(i64 %52, i32 %55)
  br label %57

57:                                               ; preds = %34, %29
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %60 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %59)
  ret i32 %60
}

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
