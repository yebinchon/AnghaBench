; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_validate_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_validate_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i64, i32, i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }

@ZFCP_STATUS_COMMON_NOESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fcpval1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_port*)* @zfcp_fc_validate_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_validate_port(%struct.zfcp_port* %0) #0 {
  %2 = alloca %struct.zfcp_port*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %2, align 8
  %4 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %4, i32 0, i32 3
  %6 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  store %struct.zfcp_adapter* %6, %struct.zfcp_adapter** %3, align 8
  %7 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %7, i32 0, i32 2
  %9 = call i32 @atomic_read(i32* %8)
  %10 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %40

14:                                               ; preds = %1
  %15 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %16 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %17 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %16, i32 0, i32 2
  %18 = call i32 @atomic_clear_mask(i32 %15, i32* %17)
  %19 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %20 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %25 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %24, i32 0, i32 1
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %14
  %29 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %30 = call i32 @zfcp_port_put(%struct.zfcp_port* %29)
  br label %40

31:                                               ; preds = %23
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %33 = call i32 @zfcp_erp_port_shutdown(%struct.zfcp_port* %32, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %35 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %34)
  %36 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %37 = call i32 @zfcp_port_put(%struct.zfcp_port* %36)
  %38 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %39 = call i32 @zfcp_port_dequeue(%struct.zfcp_port* %38)
  br label %40

40:                                               ; preds = %31, %28, %13
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @zfcp_port_put(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_erp_port_shutdown(%struct.zfcp_port*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_port_dequeue(%struct.zfcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
