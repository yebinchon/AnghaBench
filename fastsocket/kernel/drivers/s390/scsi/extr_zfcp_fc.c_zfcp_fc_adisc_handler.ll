; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_adisc_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_adisc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.zfcp_els_adisc = type { %struct.TYPE_3__, %struct.zfcp_ls_adisc }
%struct.TYPE_3__ = type { i64, %struct.zfcp_port* }
%struct.zfcp_port = type { i64, i32, i64 }
%struct.zfcp_ls_adisc = type { i64, i64 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fcadh_1\00", align 1
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fcadh_2\00", align 1
@ZFCP_STATUS_PORT_LINK_TEST = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @zfcp_fc_adisc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_adisc_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.zfcp_els_adisc*, align 8
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca %struct.zfcp_ls_adisc*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.zfcp_els_adisc*
  store %struct.zfcp_els_adisc* %7, %struct.zfcp_els_adisc** %3, align 8
  %8 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  store %struct.zfcp_port* %11, %struct.zfcp_port** %4, align 8
  %12 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %12, i32 0, i32 1
  store %struct.zfcp_ls_adisc* %13, %struct.zfcp_ls_adisc** %5, align 8
  %14 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_els_adisc, %struct.zfcp_els_adisc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %21 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %22 = call i32 @zfcp_erp_port_forced_reopen(%struct.zfcp_port* %20, i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.zfcp_ls_adisc*, %struct.zfcp_ls_adisc** %5, align 8
  %30 = getelementptr inbounds %struct.zfcp_ls_adisc, %struct.zfcp_ls_adisc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %33 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %36 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.zfcp_ls_adisc*, %struct.zfcp_ls_adisc** %5, align 8
  %39 = getelementptr inbounds %struct.zfcp_ls_adisc, %struct.zfcp_ls_adisc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %34
  %43 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %44 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %43, i32 0, i32 1
  %45 = call i32 @atomic_read(i32* %44)
  %46 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %51 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %52 = call i32 @zfcp_erp_port_reopen(%struct.zfcp_port* %50, i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %56

53:                                               ; preds = %42
  %54 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %55 = call i32 @zfcp_scsi_schedule_rport_register(%struct.zfcp_port* %54)
  br label %56

56:                                               ; preds = %53, %49, %19
  %57 = load i32, i32* @ZFCP_STATUS_PORT_LINK_TEST, align 4
  %58 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %59 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %58, i32 0, i32 1
  %60 = call i32 @atomic_clear_mask(i32 %57, i32* %59)
  %61 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %62 = call i32 @zfcp_port_put(%struct.zfcp_port* %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0), align 4
  %64 = load %struct.zfcp_els_adisc*, %struct.zfcp_els_adisc** %3, align 8
  %65 = call i32 @kmem_cache_free(i32 %63, %struct.zfcp_els_adisc* %64)
  ret void
}

declare dso_local i32 @zfcp_erp_port_forced_reopen(%struct.zfcp_port*, i32, i8*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_port_reopen(%struct.zfcp_port*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_scsi_schedule_rport_register(%struct.zfcp_port*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @zfcp_port_put(%struct.zfcp_port*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.zfcp_els_adisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
