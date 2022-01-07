; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sc1200.c_sc1200_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sc1200.c_sc1200_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port* }
%struct.ata_device = type { i32 }
%struct.ata_port = type { %struct.ata_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @sc1200_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc1200_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_device*, align 8
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
  %14 = load %struct.ata_device*, %struct.ata_device** %13, align 8
  store %struct.ata_device* %14, %struct.ata_device** %5, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = call i64 @ata_dma_enabled(%struct.ata_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %21 = icmp ne %struct.ata_device* %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %24 = icmp ne %struct.ata_device* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %27 = call i64 @ata_using_udma(%struct.ata_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %31 = call i64 @ata_using_udma(%struct.ata_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %25
  %34 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %35 = call i64 @ata_using_udma(%struct.ata_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %39 = call i64 @ata_using_udma(%struct.ata_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %29
  %42 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %43 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %44 = call i32 @sc1200_set_dmamode(%struct.ata_port* %42, %struct.ata_device* %43)
  br label %45

45:                                               ; preds = %41, %37, %33
  br label %46

46:                                               ; preds = %45, %22, %18, %1
  %47 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %48 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %47)
  ret i32 %48
}

declare dso_local i64 @ata_dma_enabled(%struct.ata_device*) #1

declare dso_local i64 @ata_using_udma(%struct.ata_device*) #1

declare dso_local i32 @sc1200_set_dmamode(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
