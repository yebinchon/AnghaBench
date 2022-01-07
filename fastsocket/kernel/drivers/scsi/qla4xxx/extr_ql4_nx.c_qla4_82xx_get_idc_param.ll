; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_get_idc_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_get_idc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i8*, i8*, i64 }

@ROM_DEV_INIT_TIMEOUT = common dso_local global i8* null, align 8
@ROM_DRV_RESET_ACK_TIMEOUT = common dso_local global i8* null, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ha->nx_dev_init_timeout = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ha->nx_reset_timeout = %d\0A\00", align 1
@QLA82XX_IDC_PARAM_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4_82xx_get_idc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_82xx_get_idc_param(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i64*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %4 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %5 = call i32 @is_qla8022(%struct.scsi_qla_host* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %57

8:                                                ; preds = %1
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i64*
  store i64* %12, i64** %3, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @qla4_82xx_read_optrom_data(%struct.scsi_qla_host* %13, i32* %17, i32 4098140, i32 8)
  %19 = load i64*, i64** %3, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @__constant_cpu_to_le32(i32 -1)
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %8
  %24 = load i8*, i8** @ROM_DEV_INIT_TIMEOUT, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @ROM_DRV_RESET_ACK_TIMEOUT, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %42

30:                                               ; preds = %8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %3, align 8
  %33 = load i64, i64* %31, align 8
  %34 = call i8* @le32_to_cpu(i64 %33)
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @le32_to_cpu(i64 %38)
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %30, %23
  %43 = load i32, i32* @KERN_DEBUG, align 4
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @ql4_printk(i32 %43, %struct.scsi_qla_host* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = call i32 @DEBUG2(i32 %48)
  %50 = load i32, i32* @KERN_DEBUG, align 4
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @ql4_printk(i32 %50, %struct.scsi_qla_host* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = call i32 @DEBUG2(i32 %55)
  br label %57

57:                                               ; preds = %42, %7
  ret void
}

declare dso_local i32 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_82xx_read_optrom_data(%struct.scsi_qla_host*, i32*, i32, i32) #1

declare dso_local i64 @__constant_cpu_to_le32(i32) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
