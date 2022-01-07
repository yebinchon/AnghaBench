; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_netlink.c_scsi_nl_remove_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_netlink.c_scsi_nl_remove_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32*, i32* }

@scsi_nl_lock = common dso_local global i32 0, align 4
@scsi_nl_state = common dso_local global i32 0, align 4
@STATE_EHANDLER_BSY = common dso_local global i32 0, align 4
@SCSI_NL_MAX_TRANSPORTS = common dso_local global i64 0, align 8
@HANDLER_DELETING = common dso_local global i32 0, align 4
@transports = common dso_local global %struct.TYPE_2__* null, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_nl_remove_transport(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @scsi_nl_lock, i64 %4)
  %6 = load i32, i32* @scsi_nl_state, align 4
  %7 = load i32, i32* @STATE_EHANDLER_BSY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_unlock_irqrestore(i32* @scsi_nl_lock, i64 %11)
  %13 = call i32 @msleep(i32 1)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @scsi_nl_lock, i64 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @SCSI_NL_MAX_TRANSPORTS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load i32, i32* @HANDLER_DELETING, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %35, %20
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @scsi_nl_lock, i64 %36)
  %38 = load i32, i32* @HZ, align 4
  %39 = sdiv i32 %38, 4
  %40 = call i32 @schedule_timeout_uninterruptible(i32 %39)
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_lock_irqsave(i32* @scsi_nl_lock, i64 %41)
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %45 = load i64, i64* %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %53 = load i64, i64* %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %43, %16
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @scsi_nl_lock, i64 %57)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
