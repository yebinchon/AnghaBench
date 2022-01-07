; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_rcvpeg_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_rcvpeg_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@CRB_RCVPEG_STATE = common dso_local global i32 0, align 4
@PHAN_PEG_RCV_INITIALIZED = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Receive Peg initialization not complete: 0x%x.\0A\00", align 1
@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4_82xx_rcvpeg_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_82xx_rcvpeg_ready(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %6, i32 0, i32 0
  %8 = call i32 @read_lock(i32* %7)
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = load i32, i32* @CRB_RCVPEG_STATE, align 4
  %11 = call i64 @qla4_82xx_rd_32(%struct.scsi_qla_host* %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 0
  %14 = call i32 @read_unlock(i32* %13)
  br label %15

15:                                               ; preds = %24, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @PHAN_PEG_RCV_INITIALIZED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 30000
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = call i32 @udelay(i32 100)
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 0
  %28 = call i32 @read_lock(i32* %27)
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %30 = load i32, i32* @CRB_RCVPEG_STATE, align 4
  %31 = call i64 @qla4_82xx_rd_32(%struct.scsi_qla_host* %29, i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 0
  %34 = call i32 @read_unlock(i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %15

37:                                               ; preds = %22
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 30000
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @ql4_printk(i32 %41, %struct.scsi_qla_host* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = call i32 @DEBUG2(i32 %44)
  %46 = load i32, i32* @QLA_ERROR, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @qla4_82xx_rd_32(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
