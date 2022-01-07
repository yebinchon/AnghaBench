; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_fastdrain_timerfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_fastdrain_timerfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ata_queued_cmd = type { i32 }

@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ATA_EH_FASTDRAIN_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_eh_fastdrain_timerfn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_queued_cmd*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.ata_port*
  store %struct.ata_port* %10, %struct.ata_port** %3, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = call i32 @ata_eh_nr_in_flight(%struct.ata_port* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %66

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %34, i32 %35)
  store %struct.ata_queued_cmd* %36, %struct.ata_queued_cmd** %7, align 8
  %37 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %38 = icmp ne %struct.ata_queued_cmd* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %51 = call i32 @ata_port_freeze(%struct.ata_port* %50)
  br label %65

52:                                               ; preds = %21
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %55 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @jiffies, align 4
  %57 = load i32, i32* @ATA_EH_FASTDRAIN_INTERVAL, align 4
  %58 = call i32 @ata_deadline(i32 %56, i32 %57)
  %59 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %60 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %63 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %62, i32 0, i32 2
  %64 = call i32 @add_timer(%struct.TYPE_2__* %63)
  br label %65

65:                                               ; preds = %52, %49
  br label %66

66:                                               ; preds = %65, %20
  %67 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %68 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32 %69, i64 %70)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_eh_nr_in_flight(%struct.ata_port*) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @ata_deadline(i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
