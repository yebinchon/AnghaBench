; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_modify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_modify = type { i32, i32 }
%struct.mthca_set_ib_param = type { i32, i32, i64 }
%struct.ib_port_attr = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@IB_PORT_RESET_QKEY_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_port_modify*)* @mthca_modify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_modify_port(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_port_modify* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_port_modify*, align 8
  %10 = alloca %struct.mthca_set_ib_param, align 8
  %11 = alloca %struct.ib_port_attr, align 4
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_port_modify* %3, %struct.ib_port_modify** %9, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = call %struct.TYPE_3__* @to_mdev(%struct.ib_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ERESTARTSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %64

21:                                               ; preds = %4
  %22 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @mthca_query_port(%struct.ib_device* %22, i32 %23, %struct.ib_port_attr* %11)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %58

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.mthca_set_ib_param, %struct.mthca_set_ib_param* %10, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IB_PORT_RESET_QKEY_CNTR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds %struct.mthca_set_ib_param, %struct.mthca_set_ib_param* %10, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %41 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  %44 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %45 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = getelementptr inbounds %struct.mthca_set_ib_param, %struct.mthca_set_ib_param* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %51 = call %struct.TYPE_3__* @to_mdev(%struct.ib_device* %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mthca_SET_IB(%struct.TYPE_3__* %51, %struct.mthca_set_ib_param* %10, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %28
  br label %58

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %56, %27
  %59 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %60 = call %struct.TYPE_3__* @to_mdev(%struct.ib_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.TYPE_3__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mthca_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mthca_SET_IB(%struct.TYPE_3__*, %struct.mthca_set_ib_param*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
