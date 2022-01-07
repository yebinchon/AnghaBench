; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_cseq_mdp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_cseq_mdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@CSEQ_PAGE_SIZE = common dso_local global i32 0, align 4
@CSEQ_LRM_SAVE_SINDEX = common dso_local global i64 0, align 8
@CSEQ_LRM_SAVE_SCBPTR = common dso_local global i64 0, align 8
@CSEQ_Q_LINK_HEAD = common dso_local global i64 0, align 8
@CSEQ_Q_LINK_TAIL = common dso_local global i64 0, align 8
@CSEQ_LRM_SAVE_SCRPAGE = common dso_local global i64 0, align 8
@CSEQ_RET_ADDR = common dso_local global i64 0, align 8
@CSEQ_RET_SCBPTR = common dso_local global i64 0, align 8
@CSEQ_SAVE_SCBPTR = common dso_local global i64 0, align 8
@CSEQ_EMPTY_TRANS_CTX = common dso_local global i64 0, align 8
@CSEQ_RESP_LEN = common dso_local global i64 0, align 8
@CSEQ_TMF_SCBPTR = common dso_local global i64 0, align 8
@CSEQ_GLOBAL_PREV_SCB = common dso_local global i64 0, align 8
@CSEQ_GLOBAL_HEAD = common dso_local global i64 0, align 8
@CSEQ_CLEAR_LU_HEAD = common dso_local global i64 0, align 8
@CSEQ_TMF_OPCODE = common dso_local global i64 0, align 8
@CSEQ_SCRATCH_FLAGS = common dso_local global i64 0, align 8
@CSEQ_HSB_SITE = common dso_local global i64 0, align 8
@CSEQ_FIRST_INV_SCB_SITE = common dso_local global i64 0, align 8
@last_scb_site_no = common dso_local global i64 0, align 8
@CSEQ_FIRST_INV_DDB_SITE = common dso_local global i64 0, align 8
@CSEQ_LUN_TO_CLEAR = common dso_local global i64 0, align 8
@CSEQ_LUN_TO_CHECK = common dso_local global i64 0, align 8
@CSEQ_HQ_NEW_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"First SCB dma_handle: 0x%llx\0A\00", align 1
@CSEQ_HQ_DONE_BASE = common dso_local global i32 0, align 4
@CSEQ_HQ_DONE_POINTER = common dso_local global i64 0, align 8
@CSEQ_HQ_DONE_PASS = common dso_local global i64 0, align 8
@ASD_DEF_DL_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_init_cseq_mdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_cseq_mdp(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %5 = load i32, i32* @CSEQ_PAGE_SIZE, align 4
  %6 = mul nsw i32 %5, 2
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %51, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %54

10:                                               ; preds = %7
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @CSEQ_LRM_SAVE_SINDEX, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %11, i64 %17, i32 0)
  %19 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @CSEQ_LRM_SAVE_SCBPTR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %19, i64 %25, i32 0)
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @CSEQ_Q_LINK_HEAD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %27, i64 %33, i32 65535)
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @CSEQ_Q_LINK_TAIL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %35, i64 %41, i32 65535)
  %43 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @CSEQ_LRM_SAVE_SCRPAGE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %43, i64 %49, i32 0)
  br label %51

51:                                               ; preds = %10
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %7

54:                                               ; preds = %7
  %55 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %56 = load i64, i64* @CSEQ_RET_ADDR, align 8
  %57 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %55, i64 %56, i32 65535)
  %58 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %59 = load i64, i64* @CSEQ_RET_SCBPTR, align 8
  %60 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %58, i64 %59, i32 0)
  %61 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %62 = load i64, i64* @CSEQ_SAVE_SCBPTR, align 8
  %63 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %61, i64 %62, i32 0)
  %64 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %65 = load i64, i64* @CSEQ_EMPTY_TRANS_CTX, align 8
  %66 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %64, i64 %65, i32 0)
  %67 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %68 = load i64, i64* @CSEQ_RESP_LEN, align 8
  %69 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %67, i64 %68, i32 0)
  %70 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %71 = load i64, i64* @CSEQ_TMF_SCBPTR, align 8
  %72 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %70, i64 %71, i32 0)
  %73 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %74 = load i64, i64* @CSEQ_GLOBAL_PREV_SCB, align 8
  %75 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %73, i64 %74, i32 0)
  %76 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %77 = load i64, i64* @CSEQ_GLOBAL_HEAD, align 8
  %78 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %76, i64 %77, i32 0)
  %79 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %80 = load i64, i64* @CSEQ_CLEAR_LU_HEAD, align 8
  %81 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %79, i64 %80, i32 0)
  %82 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %83 = load i64, i64* @CSEQ_TMF_OPCODE, align 8
  %84 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %82, i64 %83, i32 0)
  %85 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %86 = load i64, i64* @CSEQ_SCRATCH_FLAGS, align 8
  %87 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %85, i64 %86, i32 0)
  %88 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %89 = load i64, i64* @CSEQ_HSB_SITE, align 8
  %90 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %88, i64 %89, i32 0)
  %91 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %92 = load i64, i64* @CSEQ_FIRST_INV_SCB_SITE, align 8
  %93 = load i64, i64* @last_scb_site_no, align 8
  %94 = trunc i64 %93 to i32
  %95 = add nsw i32 %94, 1
  %96 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %91, i64 %92, i32 %95)
  %97 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %98 = load i64, i64* @CSEQ_FIRST_INV_DDB_SITE, align 8
  %99 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %100 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %97, i64 %98, i32 %103)
  %105 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %106 = load i64, i64* @CSEQ_LUN_TO_CLEAR, align 8
  %107 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %105, i64 %106, i32 0)
  %108 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %109 = load i64, i64* @CSEQ_LUN_TO_CLEAR, align 8
  %110 = add nsw i64 %109, 4
  %111 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %108, i64 %110, i32 0)
  %112 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %113 = load i64, i64* @CSEQ_LUN_TO_CHECK, align 8
  %114 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %112, i64 %113, i32 0)
  %115 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %116 = load i64, i64* @CSEQ_LUN_TO_CHECK, align 8
  %117 = add nsw i64 %116, 4
  %118 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %115, i64 %117, i32 0)
  %119 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %120 = load i32, i32* @CSEQ_HQ_NEW_POINTER, align 4
  %121 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %122 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @asd_write_reg_addr(%struct.asd_ha_struct* %119, i32 %120, i64 %125)
  %127 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %128 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %131)
  %133 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %134 = load i32, i32* @CSEQ_HQ_DONE_BASE, align 4
  %135 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %136 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @asd_write_reg_addr(%struct.asd_ha_struct* %133, i32 %134, i64 %140)
  %142 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %143 = load i64, i64* @CSEQ_HQ_DONE_POINTER, align 8
  %144 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %145 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @ASD_BUSADDR_LO(i64 %149)
  %151 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %142, i64 %143, i32 %150)
  %152 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %153 = load i64, i64* @CSEQ_HQ_DONE_PASS, align 8
  %154 = load i32, i32* @ASD_DEF_DL_TOGGLE, align 4
  %155 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %152, i64 %153, i32 %154)
  ret void
}

declare dso_local i32 @asd_write_reg_word(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i32 @asd_write_reg_addr(%struct.asd_ha_struct*, i32, i64) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i64) #1

declare dso_local i32 @ASD_BUSADDR_LO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
