; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbx_read_fcf_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbx_read_fcf_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfcMboxq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8** }
%struct.lpfc_mbx_sge = type { i32, i32 }
%struct.lpfc_mbx_read_fcf_tbl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FCOE_READ_FCF_TABLE = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_NEMBED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"0291 Allocated DMA memory size (x%x) is less than the requested DMA memory size (x%x)\0A\00", align 1
@lpfc_mbx_read_fcf_tbl_indx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_mbx_read_fcf_rec(%struct.lpfc_hba* %0, %struct.lpfcMboxq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfcMboxq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lpfc_mbx_sge, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lpfc_mbx_read_fcf_tbl*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfcMboxq* %1, %struct.lpfcMboxq** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %6, align 8
  %16 = icmp ne %struct.lpfcMboxq* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  store i32 16, i32* %13, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %6, align 8
  %23 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %24 = load i32, i32* @LPFC_MBOX_OPCODE_FCOE_READ_FCF_TABLE, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @LPFC_SLI4_MBX_NEMBED, align 4
  %27 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %21, %struct.lpfcMboxq* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i32, i32* @LOG_MBOX, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %20
  %41 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %6, align 8
  %42 = call i32 @lpfc_sli4_mbx_sge_get(%struct.lpfcMboxq* %41, i32 0, %struct.lpfc_mbx_sge* %11)
  %43 = getelementptr inbounds %struct.lpfc_mbx_sge, %struct.lpfc_mbx_sge* %11, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.lpfc_mbx_sge, %struct.lpfc_mbx_sge* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @getPaddr(i32 %44, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %6, align 8
  %49 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = bitcast i8* %55 to %struct.lpfc_mbx_read_fcf_tbl*
  store %struct.lpfc_mbx_read_fcf_tbl* %56, %struct.lpfc_mbx_read_fcf_tbl** %14, align 8
  %57 = load i32, i32* @lpfc_mbx_read_fcf_tbl_indx, align 4
  %58 = load %struct.lpfc_mbx_read_fcf_tbl*, %struct.lpfc_mbx_read_fcf_tbl** %14, align 8
  %59 = getelementptr inbounds %struct.lpfc_mbx_read_fcf_tbl, %struct.lpfc_mbx_read_fcf_tbl* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @bf_set(i32 %57, i32* %60, i32 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr i8, i8* %63, i64 4
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @lpfc_sli_pcimem_bcopy(i32* %66, i32* %67, i32 4)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %40, %31, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.lpfcMboxq*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_sli4_mbx_sge_get(%struct.lpfcMboxq*, i32, %struct.lpfc_mbx_sge*) #1

declare dso_local i32 @getPaddr(i32, i32) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
