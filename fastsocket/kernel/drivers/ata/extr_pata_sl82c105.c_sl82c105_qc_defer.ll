; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sl82c105.c_sl82c105_qc_defer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sl82c105.c_sl82c105_qc_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ata_host* }
%struct.ata_host = type { %struct.ata_port** }
%struct.ata_port = type { i64 }

@ATA_DEFER_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @sl82c105_qc_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl82c105_qc_defer(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ata_host*, %struct.ata_host** %10, align 8
  store %struct.ata_host* %11, %struct.ata_host** %4, align 8
  %12 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %13 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %12, i32 0, i32 0
  %14 = load %struct.ata_port**, %struct.ata_port*** %13, align 8
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %14, i64 %21
  %23 = load %struct.ata_port*, %struct.ata_port** %22, align 8
  store %struct.ata_port* %23, %struct.ata_port** %5, align 8
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %25 = call i32 @ata_std_qc_defer(%struct.ata_queued_cmd* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %41

30:                                               ; preds = %1
  %31 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %32 = icmp ne %struct.ata_port* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ATA_DEFER_PORT, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %33, %30
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ata_std_qc_defer(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
