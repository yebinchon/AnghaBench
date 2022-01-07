; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_iscsi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_iscsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_transport = type { i32 }
%struct.scsi_transport_template = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"unable to register %s transport 0x%p.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s, registered iscsi transport 0x%p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_iscsi_init(%struct.iscsi_transport* %0, %struct.scsi_transport_template** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_transport*, align 8
  %5 = alloca %struct.scsi_transport_template**, align 8
  store %struct.iscsi_transport* %0, %struct.iscsi_transport** %4, align 8
  store %struct.scsi_transport_template** %1, %struct.scsi_transport_template*** %5, align 8
  %6 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %7 = call %struct.scsi_transport_template* @iscsi_register_transport(%struct.iscsi_transport* %6)
  %8 = load %struct.scsi_transport_template**, %struct.scsi_transport_template*** %5, align 8
  store %struct.scsi_transport_template* %7, %struct.scsi_transport_template** %8, align 8
  %9 = load %struct.scsi_transport_template**, %struct.scsi_transport_template*** %5, align 8
  %10 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %9, align 8
  %11 = icmp eq %struct.scsi_transport_template* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.iscsi_transport* %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %22 = shl i32 1, %21
  %23 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scsi_transport_template**, %struct.scsi_transport_template*** %5, align 8
  %27 = call i32 @log_debug(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.scsi_transport_template** %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.scsi_transport_template* @iscsi_register_transport(%struct.iscsi_transport*) #1

declare dso_local i32 @pr_err(i8*, i32, %struct.iscsi_transport*) #1

declare dso_local i32 @log_debug(i32, i8*, i32, %struct.scsi_transport_template**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
