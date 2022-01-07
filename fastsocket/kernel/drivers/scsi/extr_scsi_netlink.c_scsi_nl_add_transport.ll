; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_netlink.c_scsi_nl_add_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_netlink.c_scsi_nl_add_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.sk_buff.0*)*, void (%struct.notifier_block.1*, i64, i8*)*, i64, i32 }
%struct.sk_buff.0 = type opaque
%struct.notifier_block.1 = type opaque
%struct.sk_buff = type opaque
%struct.notifier_block = type opaque

@SCSI_NL_MAX_TRANSPORTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@scsi_nl_lock = common dso_local global i32 0, align 4
@scsi_nl_state = common dso_local global i32 0, align 4
@STATE_EHANDLER_BSY = common dso_local global i32 0, align 4
@transports = common dso_local global %struct.TYPE_2__* null, align 8
@EALREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_nl_add_transport(i64 %0, i32 (%struct.sk_buff*)* %1, void (%struct.notifier_block*, i64, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32 (%struct.sk_buff*)*, align 8
  %7 = alloca void (%struct.notifier_block*, i64, i8*)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 (%struct.sk_buff*)* %1, i32 (%struct.sk_buff*)** %6, align 8
  store void (%struct.notifier_block*, i64, i8*)* %2, void (%struct.notifier_block*, i64, i8*)** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @SCSI_NL_MAX_TRANSPORTS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @scsi_nl_lock, i64 %17)
  %19 = load i32, i32* @scsi_nl_state, align 4
  %20 = load i32, i32* @STATE_EHANDLER_BSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @scsi_nl_lock, i64 %24)
  %26 = call i32 @msleep(i32 1)
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @scsi_nl_lock, i64 %27)
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.sk_buff.0*)*, i32 (%struct.sk_buff.0*)** %33, align 8
  %35 = icmp ne i32 (%struct.sk_buff.0*)* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load void (%struct.notifier_block.1*, i64, i8*)*, void (%struct.notifier_block.1*, i64, i8*)** %40, align 8
  %42 = icmp ne void (%struct.notifier_block.1*, i64, i8*)* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %29
  %44 = load i32, i32* @EALREADY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %67

46:                                               ; preds = %36
  %47 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %6, align 8
  %48 = bitcast i32 (%struct.sk_buff*)* %47 to i32 (%struct.sk_buff.0*)*
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 (%struct.sk_buff.0*)* %48, i32 (%struct.sk_buff.0*)** %52, align 8
  %53 = load void (%struct.notifier_block*, i64, i8*)*, void (%struct.notifier_block*, i64, i8*)** %7, align 8
  %54 = bitcast void (%struct.notifier_block*, i64, i8*)* %53 to void (%struct.notifier_block.1*, i64, i8*)*
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store void (%struct.notifier_block.1*, i64, i8*)* %54, void (%struct.notifier_block.1*, i64, i8*)** %58, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transports, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %46, %43
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* @scsi_nl_lock, i64 %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %13
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
