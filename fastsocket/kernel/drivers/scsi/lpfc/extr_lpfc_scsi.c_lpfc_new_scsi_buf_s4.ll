; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_new_scsi_buf_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_new_scsi_buf_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.lpfc_scsi_buf = type { i32, i64, %struct.TYPE_12__, i64, i64, i64, %struct.fcp_rsp*, i64 }
%struct.TYPE_12__ = type { %struct.lpfc_scsi_buf*, %struct.TYPE_11__, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64 }
%struct.fcp_rsp = type { i32 }
%struct.sli4_sge = type { i32, i8*, i8*, i8* }

@prep_sblist = common dso_local global i32 0, align 4
@post_sblist = common dso_local global i32 0, align 4
@scsi_sblist = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"9068 ALLOC %d scsi_bufs: %d (%d + %d + %d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@SLI4_PAGE_SIZE = common dso_local global i32 0, align 4
@NO_XRI = common dso_local global i64 0, align 8
@LPFC_IO_FCP = common dso_local global i32 0, align 4
@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"3021 Allocate %d out of %d requested new SCSI buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32)* @lpfc_new_scsi_buf_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_new_scsi_buf_s4(%struct.lpfc_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_scsi_buf*, align 8
  %7 = alloca %struct.sli4_sge*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %5, align 8
  store i64 0, i64* %13, align 8
  %20 = load i32, i32* @prep_sblist, align 4
  %21 = call i32 @LIST_HEAD(i32 %20)
  %22 = load i32, i32* @post_sblist, align 4
  %23 = call i32 @LIST_HEAD(i32 %22)
  %24 = load i32, i32* @scsi_sblist, align 4
  %25 = call i32 @LIST_HEAD(i32 %24)
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = sub i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %16, align 4
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load i32, i32* @LOG_FCP, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %39, i32 4, i32 4)
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %321, %2
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %324

45:                                               ; preds = %41
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.lpfc_scsi_buf* @kzalloc(i32 120, i32 %46)
  store %struct.lpfc_scsi_buf* %47, %struct.lpfc_scsi_buf** %6, align 8
  %48 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %49 = icmp ne %struct.lpfc_scsi_buf* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %324

51:                                               ; preds = %45
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %56, i32 0, i32 3
  %58 = call i64 @pci_pool_alloc(i32 %54, i32 %55, i64* %57)
  %59 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %60 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %59, i32 0, i32 7
  store i64 %58, i64* %60, align 8
  %61 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %51
  %66 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %67 = call i32 @kfree(%struct.lpfc_scsi_buf* %66)
  br label %324

68:                                               ; preds = %51
  %69 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %70 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memset(i64 %71, i32 0, i32 %74)
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %68
  %81 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @SLI4_PAGE_SIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = and i64 %83, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %80
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %94 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %97 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @pci_pool_free(i32 %92, i64 %95, i64 %98)
  %100 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %101 = call i32 @kfree(%struct.lpfc_scsi_buf* %100)
  br label %324

102:                                              ; preds = %80, %68
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %104 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %105 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %104, i32 0, i32 2
  %106 = call i64 @lpfc_sli_next_iotag(%struct.lpfc_hba* %103, %struct.TYPE_12__* %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %114 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %117 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @pci_pool_free(i32 %112, i64 %115, i64 %118)
  %120 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %121 = call i32 @kfree(%struct.lpfc_scsi_buf* %120)
  br label %324

122:                                              ; preds = %102
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %124 = call i64 @lpfc_sli4_next_xritag(%struct.lpfc_hba* %123)
  store i64 %124, i64* %13, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* @NO_XRI, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %133 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %136 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @pci_pool_free(i32 %131, i64 %134, i64 %137)
  %139 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %140 = call i32 @kfree(%struct.lpfc_scsi_buf* %139)
  br label %324

141:                                              ; preds = %122
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %144 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  store i64 %142, i64* %145, align 8
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %13, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %154 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @LPFC_IO_FCP, align 4
  %157 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %158 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %156
  store i32 %161, i32* %159, align 8
  %162 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %163 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %166 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  %167 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %168 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %169, %171
  %173 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %174 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %173, i32 0, i32 5
  store i64 %172, i64* %174, align 8
  %175 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %176 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i32*
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  %180 = bitcast i32* %179 to %struct.fcp_rsp*
  %181 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %182 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %181, i32 0, i32 6
  store %struct.fcp_rsp* %180, %struct.fcp_rsp** %182, align 8
  %183 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to %struct.sli4_sge*
  store %struct.sli4_sge* %186, %struct.sli4_sge** %7, align 8
  %187 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %188 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %11, align 8
  %190 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %191 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  store i64 %195, i64* %9, align 8
  %196 = load i64, i64* %9, align 8
  %197 = add i64 %196, 4
  store i64 %197, i64* %10, align 8
  %198 = load i64, i64* %9, align 8
  %199 = call i32 @putPaddrHigh(i64 %198)
  %200 = call i8* @cpu_to_le32(i32 %199)
  %201 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %202 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %201, i32 0, i32 3
  store i8* %200, i8** %202, align 8
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @putPaddrLow(i64 %203)
  %205 = call i8* @cpu_to_le32(i32 %204)
  %206 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %207 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  %208 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %209 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @le32_to_cpu(i32 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %214 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %216 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %217 = call i32 @bf_set(i32 %215, %struct.sli4_sge* %216, i32 0)
  %218 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %219 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i8* @cpu_to_le32(i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %224 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = call i8* @cpu_to_le32(i32 4)
  %226 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %227 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %229 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %228, i32 1
  store %struct.sli4_sge* %229, %struct.sli4_sge** %7, align 8
  %230 = load i64, i64* %10, align 8
  %231 = call i32 @putPaddrHigh(i64 %230)
  %232 = call i8* @cpu_to_le32(i32 %231)
  %233 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %234 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  %235 = load i64, i64* %10, align 8
  %236 = call i32 @putPaddrLow(i64 %235)
  %237 = call i8* @cpu_to_le32(i32 %236)
  %238 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %239 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %238, i32 0, i32 2
  store i8* %237, i8** %239, align 8
  %240 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %241 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @le32_to_cpu(i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %246 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %248 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %249 = call i32 @bf_set(i32 %247, %struct.sli4_sge* %248, i32 1)
  %250 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %251 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i8* @cpu_to_le32(i32 %252)
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %256 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = call i8* @cpu_to_le32(i32 4)
  %258 = load %struct.sli4_sge*, %struct.sli4_sge** %7, align 8
  %259 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %258, i32 0, i32 1
  store i8* %257, i8** %259, align 8
  %260 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %261 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  store %struct.TYPE_11__* %262, %struct.TYPE_11__** %8, align 8
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 4
  store i64 0, i64* %267, align 8
  %268 = load i32, i32* @BUFF_TYPE_BDE_64, align 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 3
  store i32 %268, i32* %273, align 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  store i32 4, i32* %278, align 8
  %279 = load i64, i64* %9, align 8
  %280 = call i32 @putPaddrLow(i64 %279)
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 1
  store i32 %280, i32* %285, align 4
  %286 = load i64, i64* %9, align 8
  %287 = call i32 @putPaddrHigh(i64 %286)
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 2
  store i32 %287, i32* %292, align 8
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  store i32 1, i32* %294, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  store i32 1, i32* %296, align 4
  %297 = load i32, i32* @CLASS3, align 4
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 8
  %300 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %301 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %302 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  store %struct.lpfc_scsi_buf* %300, %struct.lpfc_scsi_buf** %303, align 8
  %304 = load i64, i64* %11, align 8
  %305 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %306 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %305, i32 0, i32 1
  store i64 %304, i64* %306, align 8
  %307 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %6, align 8
  %308 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %307, i32 0, i32 0
  %309 = call i32 @list_add_tail(i32* %308, i32* @post_sblist)
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %311 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %310, i32 0, i32 1
  %312 = call i32 @spin_lock_irq(i32* %311)
  %313 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %314 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 8
  %318 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %319 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %318, i32 0, i32 1
  %320 = call i32 @spin_unlock_irq(i32* %319)
  br label %321

321:                                              ; preds = %141
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %14, align 4
  br label %41

324:                                              ; preds = %128, %109, %89, %65, %50, %41
  %325 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %326 = load i32, i32* @KERN_INFO, align 4
  %327 = load i32, i32* @LOG_BG, align 4
  %328 = load i32, i32* %14, align 4
  %329 = load i32, i32* %4, align 4
  %330 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %325, i32 %326, i32 %327, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %328, i32 %329)
  %331 = call i32 @list_empty(i32* @post_sblist)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %324
  %334 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %335 = load i32, i32* %14, align 4
  %336 = call i32 @lpfc_sli4_post_scsi_sgl_list(%struct.lpfc_hba* %334, i32* @post_sblist, i32 %335)
  store i32 %336, i32* %15, align 4
  br label %338

337:                                              ; preds = %324
  store i32 0, i32* %15, align 4
  br label %338

338:                                              ; preds = %337, %333
  %339 = load i32, i32* %15, align 4
  ret i32 %339
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.lpfc_scsi_buf* @kzalloc(i32, i32) #1

declare dso_local i64 @pci_pool_alloc(i32, i32, i64*) #1

declare dso_local i32 @kfree(%struct.lpfc_scsi_buf*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @pci_pool_free(i32, i64, i64) #1

declare dso_local i64 @lpfc_sli_next_iotag(%struct.lpfc_hba*, %struct.TYPE_12__*) #1

declare dso_local i64 @lpfc_sli4_next_xritag(%struct.lpfc_hba*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @putPaddrHigh(i64) #1

declare dso_local i32 @putPaddrLow(i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @lpfc_sli4_post_scsi_sgl_list(%struct.lpfc_hba*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
