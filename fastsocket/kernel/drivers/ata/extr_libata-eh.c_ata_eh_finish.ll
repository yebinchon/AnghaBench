; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64 }
%struct.ata_queued_cmd = type { i32, i32, i64 }

@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@ATA_QCFLAG_RETRY = common dso_local global i32 0, align 4
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_eh_finish(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %57, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %60

9:                                                ; preds = %5
  %10 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %10, i32 %11)
  store %struct.ata_queued_cmd* %12, %struct.ata_queued_cmd** %4, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %57

20:                                               ; preds = %9
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ATA_QCFLAG_RETRY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %34 = call i32 @ata_eh_qc_retry(%struct.ata_queued_cmd* %33)
  br label %38

35:                                               ; preds = %25
  %36 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %37 = call i32 @ata_eh_qc_complete(%struct.ata_queued_cmd* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %56

39:                                               ; preds = %20
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %48 = call i32 @ata_eh_qc_complete(%struct.ata_queued_cmd* %47)
  br label %55

49:                                               ; preds = %39
  %50 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %50, i32 0, i32 1
  %52 = call i32 @memset(i32* %51, i32 0, i32 4)
  %53 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %54 = call i32 @ata_eh_qc_retry(%struct.ata_queued_cmd* %53)
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %19
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %5

60:                                               ; preds = %5
  %61 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %62 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @WARN_ON(i64 %63)
  %65 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %66 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  ret void
}

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_eh_qc_retry(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_eh_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
