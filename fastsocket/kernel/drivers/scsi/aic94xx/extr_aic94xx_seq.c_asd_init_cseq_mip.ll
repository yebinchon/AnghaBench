; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_cseq_mip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_cseq_mip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@CSEQ_Q_EXE_HEAD = common dso_local global i32 0, align 4
@CSEQ_Q_EXE_TAIL = common dso_local global i32 0, align 4
@CSEQ_Q_DONE_HEAD = common dso_local global i32 0, align 4
@CSEQ_Q_DONE_TAIL = common dso_local global i32 0, align 4
@CSEQ_Q_SEND_HEAD = common dso_local global i32 0, align 4
@CSEQ_Q_SEND_TAIL = common dso_local global i32 0, align 4
@CSEQ_Q_DMA2CHIM_HEAD = common dso_local global i32 0, align 4
@CSEQ_Q_DMA2CHIM_TAIL = common dso_local global i32 0, align 4
@CSEQ_Q_COPY_HEAD = common dso_local global i32 0, align 4
@CSEQ_Q_COPY_TAIL = common dso_local global i32 0, align 4
@CSEQ_REG0 = common dso_local global i32 0, align 4
@CSEQ_REG1 = common dso_local global i32 0, align 4
@CSEQ_REG2 = common dso_local global i64 0, align 8
@CSEQ_LINK_CTL_Q_MAP = common dso_local global i32 0, align 4
@CCONEXIST = common dso_local global i32 0, align 4
@CSEQ_MAX_CSEQ_MODE = common dso_local global i32 0, align 4
@CSEQ_FREE_LIST_HACK_COUNT = common dso_local global i32 0, align 4
@CSEQ_EST_NEXUS_REQ_QUEUE = common dso_local global i64 0, align 8
@CSEQ_EST_NEXUS_REQ_COUNT = common dso_local global i64 0, align 8
@CSEQ_Q_EST_NEXUS_HEAD = common dso_local global i32 0, align 4
@CSEQ_Q_EST_NEXUS_TAIL = common dso_local global i32 0, align 4
@CSEQ_NEED_EST_NEXUS_SCB = common dso_local global i32 0, align 4
@CSEQ_EST_NEXUS_REQ_HEAD = common dso_local global i32 0, align 4
@CSEQ_EST_NEXUS_REQ_TAIL = common dso_local global i32 0, align 4
@CSEQ_EST_NEXUS_SCB_OFFSET = common dso_local global i32 0, align 4
@CSEQ_INT_ROUT_RET_ADDR0 = common dso_local global i32 0, align 4
@CSEQ_INT_ROUT_RET_ADDR1 = common dso_local global i32 0, align 4
@CSEQ_INT_ROUT_SCBPTR = common dso_local global i32 0, align 4
@CSEQ_INT_ROUT_MODE = common dso_local global i32 0, align 4
@CSEQ_ISR_SCRATCH_FLAGS = common dso_local global i32 0, align 4
@CSEQ_ISR_SAVE_SINDEX = common dso_local global i32 0, align 4
@CSEQ_ISR_SAVE_DINDEX = common dso_local global i32 0, align 4
@CSEQ_Q_MONIRTT_HEAD = common dso_local global i32 0, align 4
@CSEQ_Q_MONIRTT_TAIL = common dso_local global i32 0, align 4
@CSEQ_FREE_SCB_MASK = common dso_local global i32 0, align 4
@CSEQ_BUILTIN_FREE_SCB_HEAD = common dso_local global i32 0, align 4
@first_scb_site_no = common dso_local global i32 0, align 4
@CSEQ_BUILTIN_FREE_SCB_TAIL = common dso_local global i32 0, align 4
@last_scb_site_no = common dso_local global i32 0, align 4
@CSEQ_EXTENDED_FREE_SCB_HEAD = common dso_local global i32 0, align 4
@CSEQ_EXTENDED_FREE_SCB_TAIL = common dso_local global i32 0, align 4
@CSEQ_EMPTY_REQ_QUEUE = common dso_local global i64 0, align 8
@CSEQ_EMPTY_REQ_COUNT = common dso_local global i64 0, align 8
@CSEQ_Q_EMPTY_HEAD = common dso_local global i32 0, align 4
@CSEQ_Q_EMPTY_TAIL = common dso_local global i32 0, align 4
@CSEQ_NEED_EMPTY_SCB = common dso_local global i32 0, align 4
@CSEQ_EMPTY_REQ_HEAD = common dso_local global i32 0, align 4
@CSEQ_EMPTY_REQ_TAIL = common dso_local global i32 0, align 4
@CSEQ_EMPTY_SCB_OFFSET = common dso_local global i32 0, align 4
@CSEQ_PRIMITIVE_DATA = common dso_local global i32 0, align 4
@CSEQ_TIMEOUT_CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_init_cseq_mip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_cseq_mip(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %7 = load i32, i32* @CSEQ_Q_EXE_HEAD, align 4
  %8 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %6, i32 %7, i32 65535)
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %10 = load i32, i32* @CSEQ_Q_EXE_TAIL, align 4
  %11 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %9, i32 %10, i32 65535)
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %13 = load i32, i32* @CSEQ_Q_DONE_HEAD, align 4
  %14 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %12, i32 %13, i32 65535)
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %16 = load i32, i32* @CSEQ_Q_DONE_TAIL, align 4
  %17 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %15, i32 %16, i32 65535)
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %19 = load i32, i32* @CSEQ_Q_SEND_HEAD, align 4
  %20 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %18, i32 %19, i32 65535)
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %22 = load i32, i32* @CSEQ_Q_SEND_TAIL, align 4
  %23 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %21, i32 %22, i32 65535)
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %25 = load i32, i32* @CSEQ_Q_DMA2CHIM_HEAD, align 4
  %26 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %24, i32 %25, i32 65535)
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %28 = load i32, i32* @CSEQ_Q_DMA2CHIM_TAIL, align 4
  %29 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %27, i32 %28, i32 65535)
  %30 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %31 = load i32, i32* @CSEQ_Q_COPY_HEAD, align 4
  %32 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %30, i32 %31, i32 65535)
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %34 = load i32, i32* @CSEQ_Q_COPY_TAIL, align 4
  %35 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %33, i32 %34, i32 65535)
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %37 = load i32, i32* @CSEQ_REG0, align 4
  %38 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %36, i32 %37, i32 0)
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %40 = load i32, i32* @CSEQ_REG1, align 4
  %41 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %39, i32 %40, i32 0)
  %42 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %43 = load i64, i64* @CSEQ_REG2, align 8
  %44 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %42, i64 %43, i32 0)
  %45 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %46 = load i32, i32* @CSEQ_LINK_CTL_Q_MAP, align 4
  %47 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %45, i32 %46, i32 0)
  %48 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %49 = load i32, i32* @CCONEXIST, align 4
  %50 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @hweight8(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %54 = load i32, i32* @CSEQ_MAX_CSEQ_MODE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 %55, 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %53, i32 %54, i32 %58)
  %60 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %61 = load i32, i32* @CSEQ_FREE_LIST_HACK_COUNT, align 4
  %62 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %60, i32 %61, i32 0)
  %63 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %64 = load i64, i64* @CSEQ_EST_NEXUS_REQ_QUEUE, align 8
  %65 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %63, i64 %64, i32 0)
  %66 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %67 = load i64, i64* @CSEQ_EST_NEXUS_REQ_QUEUE, align 8
  %68 = add nsw i64 %67, 4
  %69 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %66, i64 %68, i32 0)
  %70 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %71 = load i64, i64* @CSEQ_EST_NEXUS_REQ_COUNT, align 8
  %72 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %70, i64 %71, i32 0)
  %73 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %74 = load i64, i64* @CSEQ_EST_NEXUS_REQ_COUNT, align 8
  %75 = add nsw i64 %74, 4
  %76 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %73, i64 %75, i32 0)
  %77 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %78 = load i32, i32* @CSEQ_Q_EST_NEXUS_HEAD, align 4
  %79 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %77, i32 %78, i32 65535)
  %80 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %81 = load i32, i32* @CSEQ_Q_EST_NEXUS_TAIL, align 4
  %82 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %80, i32 %81, i32 65535)
  %83 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %84 = load i32, i32* @CSEQ_NEED_EST_NEXUS_SCB, align 4
  %85 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %83, i32 %84, i32 0)
  %86 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %87 = load i32, i32* @CSEQ_EST_NEXUS_REQ_HEAD, align 4
  %88 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %86, i32 %87, i32 0)
  %89 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %90 = load i32, i32* @CSEQ_EST_NEXUS_REQ_TAIL, align 4
  %91 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %89, i32 %90, i32 0)
  %92 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %93 = load i32, i32* @CSEQ_EST_NEXUS_SCB_OFFSET, align 4
  %94 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %92, i32 %93, i32 0)
  %95 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %96 = load i32, i32* @CSEQ_INT_ROUT_RET_ADDR0, align 4
  %97 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %95, i32 %96, i32 0)
  %98 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %99 = load i32, i32* @CSEQ_INT_ROUT_RET_ADDR1, align 4
  %100 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %98, i32 %99, i32 0)
  %101 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %102 = load i32, i32* @CSEQ_INT_ROUT_SCBPTR, align 4
  %103 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %101, i32 %102, i32 0)
  %104 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %105 = load i32, i32* @CSEQ_INT_ROUT_MODE, align 4
  %106 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %104, i32 %105, i32 0)
  %107 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %108 = load i32, i32* @CSEQ_ISR_SCRATCH_FLAGS, align 4
  %109 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %107, i32 %108, i32 0)
  %110 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %111 = load i32, i32* @CSEQ_ISR_SAVE_SINDEX, align 4
  %112 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %110, i32 %111, i32 0)
  %113 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %114 = load i32, i32* @CSEQ_ISR_SAVE_DINDEX, align 4
  %115 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %113, i32 %114, i32 0)
  %116 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %117 = load i32, i32* @CSEQ_Q_MONIRTT_HEAD, align 4
  %118 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %116, i32 %117, i32 65535)
  %119 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %120 = load i32, i32* @CSEQ_Q_MONIRTT_TAIL, align 4
  %121 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %119, i32 %120, i32 65535)
  %122 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %123 = call i32 @asd_get_cmdctx_size(%struct.asd_ha_struct* %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sdiv i32 %124, 128
  %126 = sub nsw i32 %125, 1
  %127 = xor i32 %126, -1
  %128 = ashr i32 %127, 8
  store i32 %128, i32* %5, align 4
  %129 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %130 = load i32, i32* @CSEQ_FREE_SCB_MASK, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %129, i32 %130, i32 %131)
  %133 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %134 = load i32, i32* @CSEQ_BUILTIN_FREE_SCB_HEAD, align 4
  %135 = load i32, i32* @first_scb_site_no, align 4
  %136 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %133, i32 %134, i32 %135)
  %137 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %138 = load i32, i32* @CSEQ_BUILTIN_FREE_SCB_TAIL, align 4
  %139 = load i32, i32* @last_scb_site_no, align 4
  %140 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %137, i32 %138, i32 %139)
  %141 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %142 = load i32, i32* @CSEQ_EXTENDED_FREE_SCB_HEAD, align 4
  %143 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %141, i32 %142, i32 65535)
  %144 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %145 = load i32, i32* @CSEQ_EXTENDED_FREE_SCB_TAIL, align 4
  %146 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %144, i32 %145, i32 65535)
  %147 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %148 = load i64, i64* @CSEQ_EMPTY_REQ_QUEUE, align 8
  %149 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %147, i64 %148, i32 0)
  %150 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %151 = load i64, i64* @CSEQ_EMPTY_REQ_QUEUE, align 8
  %152 = add nsw i64 %151, 4
  %153 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %150, i64 %152, i32 0)
  %154 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %155 = load i64, i64* @CSEQ_EMPTY_REQ_COUNT, align 8
  %156 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %154, i64 %155, i32 0)
  %157 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %158 = load i64, i64* @CSEQ_EMPTY_REQ_COUNT, align 8
  %159 = add nsw i64 %158, 4
  %160 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %157, i64 %159, i32 0)
  %161 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %162 = load i32, i32* @CSEQ_Q_EMPTY_HEAD, align 4
  %163 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %161, i32 %162, i32 65535)
  %164 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %165 = load i32, i32* @CSEQ_Q_EMPTY_TAIL, align 4
  %166 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %164, i32 %165, i32 65535)
  %167 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %168 = load i32, i32* @CSEQ_NEED_EMPTY_SCB, align 4
  %169 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %167, i32 %168, i32 0)
  %170 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %171 = load i32, i32* @CSEQ_EMPTY_REQ_HEAD, align 4
  %172 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %170, i32 %171, i32 0)
  %173 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %174 = load i32, i32* @CSEQ_EMPTY_REQ_TAIL, align 4
  %175 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %173, i32 %174, i32 0)
  %176 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %177 = load i32, i32* @CSEQ_EMPTY_SCB_OFFSET, align 4
  %178 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %176, i32 %177, i32 0)
  %179 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %180 = load i32, i32* @CSEQ_PRIMITIVE_DATA, align 4
  %181 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %179, i32 %180, i32 0)
  %182 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %183 = load i64, i64* @CSEQ_TIMEOUT_CONST, align 8
  %184 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %182, i64 %183, i32 0)
  ret void
}

declare dso_local i32 @asd_write_reg_word(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_read_reg_byte(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @asd_get_cmdctx_size(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
