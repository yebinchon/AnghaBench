; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_unit*, %struct.zfcp_port*, %struct.zfcp_adapter* }
%struct.zfcp_unit = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.zfcp_adapter = type { i32 }

@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_erp_action*, i32)* @zfcp_erp_action_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_action_cleanup(%struct.zfcp_erp_action* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_port*, align 8
  %7 = alloca %struct.zfcp_unit*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %8, i32 0, i32 3
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %5, align 8
  %11 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %11, i32 0, i32 2
  %13 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  store %struct.zfcp_port* %13, %struct.zfcp_port** %6, align 8
  %14 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %14, i32 0, i32 1
  %16 = load %struct.zfcp_unit*, %struct.zfcp_unit** %15, align 8
  store %struct.zfcp_unit* %16, %struct.zfcp_unit** %7, align 8
  %17 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %51 [
    i32 128, label %20
    i32 130, label %23
    i32 129, label %31
    i32 131, label %34
  ]

20:                                               ; preds = %2
  %21 = load %struct.zfcp_unit*, %struct.zfcp_unit** %7, align 8
  %22 = call i32 @zfcp_unit_put(%struct.zfcp_unit* %21)
  br label %51

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.zfcp_port*, %struct.zfcp_port** %6, align 8
  %29 = call i32 @zfcp_scsi_schedule_rport_register(%struct.zfcp_port* %28)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %2, %30
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %6, align 8
  %33 = call i32 @zfcp_port_put(%struct.zfcp_port* %32)
  br label %51

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %39, i32 0, i32 0
  %41 = call i32 @register_service_level(i32* %40)
  %42 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %43 = call i32 @zfcp_fc_conditional_port_scan(%struct.zfcp_adapter* %42)
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %45, i32 0, i32 0
  %47 = call i32 @unregister_service_level(i32* %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %50 = call i32 @zfcp_adapter_put(%struct.zfcp_adapter* %49)
  br label %51

51:                                               ; preds = %2, %48, %31, %20
  ret void
}

declare dso_local i32 @zfcp_unit_put(%struct.zfcp_unit*) #1

declare dso_local i32 @zfcp_scsi_schedule_rport_register(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_port_put(%struct.zfcp_port*) #1

declare dso_local i32 @register_service_level(i32*) #1

declare dso_local i32 @zfcp_fc_conditional_port_scan(%struct.zfcp_adapter*) #1

declare dso_local i32 @unregister_service_level(i32*) #1

declare dso_local i32 @zfcp_adapter_put(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
