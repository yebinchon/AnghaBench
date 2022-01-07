; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_port = type { i32 }
%struct.domain_device = type { i32, i32, i32, i32 }

@SAS_DEV_DESTROY = common dso_local global i32 0, align 4
@DISCE_DESTRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_unregister_dev(%struct.asd_sas_port* %0, %struct.domain_device* %1) #0 {
  %3 = alloca %struct.asd_sas_port*, align 8
  %4 = alloca %struct.domain_device*, align 8
  store %struct.asd_sas_port* %0, %struct.asd_sas_port** %3, align 8
  store %struct.domain_device* %1, %struct.domain_device** %4, align 8
  %5 = load i32, i32* @SAS_DEV_DESTROY, align 4
  %6 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %7 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %6, i32 0, i32 3
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 1
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %17 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %16, i32 0, i32 1
  %18 = call i32 @list_del_init(i32* %17)
  %19 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sas_rphy_free(i32 %21)
  %23 = load %struct.asd_sas_port*, %struct.asd_sas_port** %3, align 8
  %24 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %25 = call i32 @sas_unregister_common_dev(%struct.asd_sas_port* %23, %struct.domain_device* %24)
  br label %47

26:                                               ; preds = %10, %2
  %27 = load i32, i32* @SAS_DEV_DESTROY, align 4
  %28 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 3
  %30 = call i32 @test_and_set_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %26
  %33 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %34 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sas_rphy_unlink(i32 %35)
  %37 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %38 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %37, i32 0, i32 1
  %39 = load %struct.asd_sas_port*, %struct.asd_sas_port** %3, align 8
  %40 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %39, i32 0, i32 0
  %41 = call i32 @list_move_tail(i32* %38, i32* %40)
  %42 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %43 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DISCE_DESTRUCT, align 4
  %46 = call i32 @sas_discover_event(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %15, %32, %26
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sas_rphy_free(i32) #1

declare dso_local i32 @sas_unregister_common_dev(%struct.asd_sas_port*, %struct.domain_device*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sas_rphy_unlink(i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @sas_discover_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
