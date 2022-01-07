; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32, i32, i32, i64, i64, i64 }

@PVSCSI_INTR_ALL_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pvscsi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pvscsi_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pvscsi_adapter*
  store %struct.pvscsi_adapter* %10, %struct.pvscsi_adapter** %5, align 8
  %11 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  store i32 1, i32* %6, align 4
  br label %36

21:                                               ; preds = %15
  %22 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %23 = call i32 @pvscsi_read_intr_status(%struct.pvscsi_adapter* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PVSCSI_INTR_ALL_SUPPORTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pvscsi_write_intr_status(i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %21
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %45 = call i32 @pvscsi_process_completion_ring(%struct.pvscsi_adapter* %44)
  %46 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %39
  %51 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %52 = call i64 @pvscsi_msg_pending(%struct.pvscsi_adapter* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %58, i32 0, i32 1
  %60 = call i32 @queue_work(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %54, %50, %39
  %62 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %36
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @IRQ_RETVAL(i32 %67)
  ret i32 %68
}

declare dso_local i32 @pvscsi_read_intr_status(%struct.pvscsi_adapter*) #1

declare dso_local i32 @pvscsi_write_intr_status(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pvscsi_process_completion_ring(%struct.pvscsi_adapter*) #1

declare dso_local i64 @pvscsi_msg_pending(%struct.pvscsi_adapter*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
