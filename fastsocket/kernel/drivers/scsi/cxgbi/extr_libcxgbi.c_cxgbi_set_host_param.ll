; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_set_host_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_set_host_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.cxgbi_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not get host param. netdev for host not set.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"shost 0x%p, hba 0x%p,%s, param %d, buf(%d) %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"hba %s, req. ipv4 %pI4.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_set_host_param(%struct.Scsi_Host* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgbi_hba*, align 8
  %11 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %13 = call %struct.cxgbi_hba* @iscsi_host_priv(%struct.Scsi_Host* %12)
  store %struct.cxgbi_hba* %13, %struct.cxgbi_hba** %10, align 8
  %14 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %15 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @KERN_ERR, align 4
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = call i32 @shost_printk(i32 %19, %struct.Scsi_Host* %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %28 = ptrtoint %struct.Scsi_Host* %27 to i32
  %29 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %30 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %31 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (i32, i8*, i32, %struct.cxgbi_hba*, ...) @log_debug(i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %28, %struct.cxgbi_hba* %29, i32 %34, i32 %35, i32 %36, i8* %37)
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %56 [
    i32 129, label %40
    i32 130, label %55
    i32 128, label %55
  ]

40:                                               ; preds = %24
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @in_aton(i8* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %44 = shl i32 1, %43
  %45 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %46 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = bitcast i32* %11 to %struct.cxgbi_hba*
  %51 = call i32 (i32, i8*, i32, %struct.cxgbi_hba*, ...) @log_debug(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %49, %struct.cxgbi_hba* %50)
  %52 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @cxgbi_set_iscsi_ipv4(%struct.cxgbi_hba* %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %62

55:                                               ; preds = %24, %24
  store i32 0, i32* %5, align 4
  br label %62

56:                                               ; preds = %24
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @iscsi_host_set_param(%struct.Scsi_Host* %57, i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %56, %55, %40, %18
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.cxgbi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @log_debug(i32, i8*, i32, %struct.cxgbi_hba*, ...) #1

declare dso_local i32 @in_aton(i8*) #1

declare dso_local i32 @cxgbi_set_iscsi_ipv4(%struct.cxgbi_hba*, i32) #1

declare dso_local i32 @iscsi_host_set_param(%struct.Scsi_Host*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
