; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_setup_act.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_setup_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.zfcp_unit*, %struct.zfcp_port*, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, %struct.zfcp_erp_action }
%struct.zfcp_port = type { i32, %struct.zfcp_erp_action }
%struct.zfcp_unit = type { i32, %struct.zfcp_erp_action }

@ZFCP_STATUS_COMMON_ERP_INUSE = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_CLOSE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_erp_action* (i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.zfcp_unit*)* @zfcp_erp_setup_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_erp_action* @zfcp_erp_setup_act(i32 %0, %struct.zfcp_adapter* %1, %struct.zfcp_port* %2, %struct.zfcp_unit* %3) #0 {
  %5 = alloca %struct.zfcp_erp_action*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca %struct.zfcp_port*, align 8
  %9 = alloca %struct.zfcp_unit*, align 8
  %10 = alloca %struct.zfcp_erp_action*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_port* %2, %struct.zfcp_port** %8, align 8
  store %struct.zfcp_unit* %3, %struct.zfcp_unit** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %71 [
    i32 128, label %13
    i32 130, label %31
    i32 129, label %31
    i32 131, label %51
  ]

13:                                               ; preds = %4
  %14 = load %struct.zfcp_unit*, %struct.zfcp_unit** %9, align 8
  %15 = call i32 @zfcp_unit_get(%struct.zfcp_unit* %14)
  %16 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %17 = load %struct.zfcp_unit*, %struct.zfcp_unit** %9, align 8
  %18 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %17, i32 0, i32 0
  %19 = call i32 @atomic_set_mask(i32 %16, i32* %18)
  %20 = load %struct.zfcp_unit*, %struct.zfcp_unit** %9, align 8
  %21 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %20, i32 0, i32 1
  store %struct.zfcp_erp_action* %21, %struct.zfcp_erp_action** %10, align 8
  %22 = load %struct.zfcp_unit*, %struct.zfcp_unit** %9, align 8
  %23 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %22, i32 0, i32 0
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %13
  %29 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %13
  br label %72

31:                                               ; preds = %4, %4
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %33 = call i32 @zfcp_port_get(%struct.zfcp_port* %32)
  %34 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %35 = call i32 @zfcp_erp_action_dismiss_port(%struct.zfcp_port* %34)
  %36 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %37 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %38 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %37, i32 0, i32 0
  %39 = call i32 @atomic_set_mask(i32 %36, i32* %38)
  %40 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %41 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %40, i32 0, i32 1
  store %struct.zfcp_erp_action* %41, %struct.zfcp_erp_action** %10, align 8
  %42 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %43 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %42, i32 0, i32 0
  %44 = call i32 @atomic_read(i32* %43)
  %45 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %31
  %49 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %31
  br label %72

51:                                               ; preds = %4
  %52 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %53 = call i32 @zfcp_adapter_get(%struct.zfcp_adapter* %52)
  %54 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %55 = call i32 @zfcp_erp_action_dismiss_adapter(%struct.zfcp_adapter* %54)
  %56 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %57 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %58 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %57, i32 0, i32 0
  %59 = call i32 @atomic_set_mask(i32 %56, i32* %58)
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %61 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %60, i32 0, i32 1
  store %struct.zfcp_erp_action* %61, %struct.zfcp_erp_action** %10, align 8
  %62 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %63 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  %65 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %51
  %69 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %51
  br label %72

71:                                               ; preds = %4
  store %struct.zfcp_erp_action* null, %struct.zfcp_erp_action** %5, align 8
  br label %91

72:                                               ; preds = %70, %50, %30
  %73 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %10, align 8
  %74 = call i32 @memset(%struct.zfcp_erp_action* %73, i32 0, i32 32)
  %75 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %76 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %10, align 8
  %77 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %76, i32 0, i32 4
  store %struct.zfcp_adapter* %75, %struct.zfcp_adapter** %77, align 8
  %78 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %79 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %10, align 8
  %80 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %79, i32 0, i32 3
  store %struct.zfcp_port* %78, %struct.zfcp_port** %80, align 8
  %81 = load %struct.zfcp_unit*, %struct.zfcp_unit** %9, align 8
  %82 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %10, align 8
  %83 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %82, i32 0, i32 2
  store %struct.zfcp_unit* %81, %struct.zfcp_unit** %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %10, align 8
  %86 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %10, align 8
  %89 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %10, align 8
  store %struct.zfcp_erp_action* %90, %struct.zfcp_erp_action** %5, align 8
  br label %91

91:                                               ; preds = %72, %71
  %92 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %5, align 8
  ret %struct.zfcp_erp_action* %92
}

declare dso_local i32 @zfcp_unit_get(%struct.zfcp_unit*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_port_get(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_erp_action_dismiss_port(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_adapter_get(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_erp_action_dismiss_adapter(%struct.zfcp_adapter*) #1

declare dso_local i32 @memset(%struct.zfcp_erp_action*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
