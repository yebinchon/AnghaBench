; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_device = type { i32 }
%struct.cm_device = type { i32, %struct.cm_port**, i32 }
%struct.cm_port = type { i32, i32 }
%struct.ib_port_modify = type { i32 }

@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@cm_client = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @cm_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_remove_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.cm_device*, align 8
  %4 = alloca %struct.cm_port*, align 8
  %5 = alloca %struct.ib_port_modify, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %8 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %5, i32 0, i32 0
  %9 = load i32, i32* @IB_PORT_CM_SUP, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = call %struct.cm_device* @ib_get_client_data(%struct.ib_device* %10, i32* @cm_client)
  store %struct.cm_device* %11, %struct.cm_device** %3, align 8
  %12 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %13 = icmp ne %struct.cm_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %61

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @write_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 1), i64 %16)
  %18 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %19 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %18, i32 0, i32 2
  %20 = call i32 @list_del(i32* %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @write_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 1), i64 %21)
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %51, %15
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %31 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %30, i32 0, i32 1
  %32 = load %struct.cm_port**, %struct.cm_port*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cm_port*, %struct.cm_port** %32, i64 %35
  %37 = load %struct.cm_port*, %struct.cm_port** %36, align 8
  store %struct.cm_port* %37, %struct.cm_port** %4, align 8
  %38 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %39 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %40 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ib_modify_port(%struct.ib_device* %38, i32 %41, i32 0, %struct.ib_port_modify* %5)
  %43 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %44 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ib_unregister_mad_agent(i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), align 4
  %48 = call i32 @flush_workqueue(i32 %47)
  %49 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %50 = call i32 @cm_remove_port_fs(%struct.cm_port* %49)
  br label %51

51:                                               ; preds = %29
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %23

54:                                               ; preds = %23
  %55 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %56 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @device_unregister(i32 %57)
  %59 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %60 = call i32 @kfree(%struct.cm_device* %59)
  br label %61

61:                                               ; preds = %54, %14
  ret void
}

declare dso_local %struct.cm_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_modify_port(%struct.ib_device*, i32, i32, %struct.ib_port_modify*) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @cm_remove_port_fs(%struct.cm_port*) #1

declare dso_local i32 @device_unregister(i32) #1

declare dso_local i32 @kfree(%struct.cm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
