; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbox_rsrc_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbox_rsrc_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfcMboxq = type { %struct.TYPE_12__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.lpfc_mbx_nembed_rsrc_extent }
%struct.lpfc_mbx_nembed_rsrc_extent = type { i32 }
%struct.TYPE_7__ = type { i8** }

@LPFC_SLI4_MBX_NEMBED = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@lpfc_mbx_alloc_rsrc_extents_type = common dso_local global i32 0, align 4
@lpfc_mbx_alloc_rsrc_extents_cnt = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"2929 Resource Extent Opcode x%x is unsupported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_mbox_rsrc_extent(%struct.lpfc_hba* %0, %struct.lpfcMboxq* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfcMboxq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpfc_mbx_nembed_rsrc_extent*, align 8
  %14 = alloca i8*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.lpfcMboxq* %1, %struct.lpfcMboxq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.lpfc_mbx_nembed_rsrc_extent* null, %struct.lpfc_mbx_nembed_rsrc_extent** %13, align 8
  store i8* null, i8** %14, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @LPFC_SLI4_MBX_NEMBED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %5
  %19 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %8, align 8
  %20 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %91

29:                                               ; preds = %18
  %30 = load i8*, i8** %14, align 8
  %31 = bitcast i8* %30 to %struct.lpfc_mbx_nembed_rsrc_extent*
  store %struct.lpfc_mbx_nembed_rsrc_extent* %31, %struct.lpfc_mbx_nembed_rsrc_extent** %13, align 8
  br label %32

32:                                               ; preds = %29, %5
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32, i32* @lpfc_mbx_alloc_rsrc_extents_type, align 4
  %38 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %8, align 8
  %39 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @bf_set(i32 %37, %struct.lpfc_mbx_nembed_rsrc_extent* %44, i32 %45)
  br label %57

47:                                               ; preds = %32
  %48 = load i32, i32* @lpfc_mbx_alloc_rsrc_extents_type, align 4
  %49 = load %struct.lpfc_mbx_nembed_rsrc_extent*, %struct.lpfc_mbx_nembed_rsrc_extent** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @bf_set(i32 %48, %struct.lpfc_mbx_nembed_rsrc_extent* %49, i32 %50)
  %52 = load %struct.lpfc_mbx_nembed_rsrc_extent*, %struct.lpfc_mbx_nembed_rsrc_extent** %13, align 8
  %53 = getelementptr inbounds %struct.lpfc_mbx_nembed_rsrc_extent, %struct.lpfc_mbx_nembed_rsrc_extent* %52, i32 0, i32 0
  %54 = load %struct.lpfc_mbx_nembed_rsrc_extent*, %struct.lpfc_mbx_nembed_rsrc_extent** %13, align 8
  %55 = getelementptr inbounds %struct.lpfc_mbx_nembed_rsrc_extent, %struct.lpfc_mbx_nembed_rsrc_extent* %54, i32 0, i32 0
  %56 = call i32 @lpfc_sli_pcimem_bcopy(i32* %53, i32* %55, i32 4)
  br label %57

57:                                               ; preds = %47, %36
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %59 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %8, align 8
  %60 = call i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %58, %struct.lpfcMboxq* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  switch i32 %61, label %84 [
    i32 131, label %62
    i32 129, label %83
    i32 128, label %83
    i32 130, label %83
  ]

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32, i32* @lpfc_mbx_alloc_rsrc_extents_cnt, align 4
  %68 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %8, align 8
  %69 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @bf_set(i32 %67, %struct.lpfc_mbx_nembed_rsrc_extent* %74, i32 %75)
  br label %82

77:                                               ; preds = %62
  %78 = load i32, i32* @lpfc_mbx_alloc_rsrc_extents_cnt, align 4
  %79 = load %struct.lpfc_mbx_nembed_rsrc_extent*, %struct.lpfc_mbx_nembed_rsrc_extent** %13, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @bf_set(i32 %78, %struct.lpfc_mbx_nembed_rsrc_extent* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %66
  br label %90

83:                                               ; preds = %57, %57, %57
  br label %90

84:                                               ; preds = %57
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %86 = load i32, i32* @KERN_ERR, align 4
  %87 = load i32, i32* @LOG_MBOX, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %88)
  store i32 1, i32* %6, align 4
  br label %91

90:                                               ; preds = %83, %82
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %84, %28
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @bf_set(i32, %struct.lpfc_mbx_nembed_rsrc_extent*, i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba*, %struct.lpfcMboxq*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
