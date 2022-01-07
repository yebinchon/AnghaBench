; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_function_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_function_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i8**, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.lpfc_register }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.lpfc_register = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%union.lpfc_sli4_cfg_shdr = type { %struct.lpfc_register }

@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"0494 Unable to allocate memory for issuing SLI_FUNCTION_RESET mailbox command\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FUNCTION_RESET = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_status = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_add_status = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"0495 SLI_FUNCTION_RESET mailbox failed with status x%x add_status x%x, mbx status x%x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MAX_IF_TYPE_2_RESETS = common dso_local global i32 0, align 4
@lpfc_sliport_ctrl_end = common dso_local global i32 0, align 4
@LPFC_SLIPORT_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@lpfc_sliport_ctrl_ip = common dso_local global i32 0, align 4
@LPFC_SLIPORT_INIT_PORT = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lpfc_sliport_status_rn = common dso_local global i32 0, align 4
@lpfc_sliport_status_rdy = common dso_local global i32 0, align 4
@lpfc_sliport_status_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [114 x i8] c"2890 Port error detected during port reset(%d): wait_tmo:%d ms, port status reg 0x%x, error 1=0x%x, error 2=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [94 x i8] c"3317 HBA not functional: IP Reset Failed after (%d) retries, try: echo fw_reset > board_mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_pci_function_reset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.lpfc_sli4_cfg_shdr*, align 8
  %13 = alloca %struct.lpfc_register, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = call i32 @bf_get(i32 %15, %struct.lpfc_register* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %223 [
    i32 130, label %21
    i32 128, label %93
    i32 129, label %222
  ]

21:                                               ; preds = %1
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @mempool_alloc(i32 %24, i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %4, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = icmp ne %struct.TYPE_21__* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load i32, i32* @LOG_INIT, align 4
  %34 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %239

37:                                               ; preds = %21
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_COMMON, align 4
  %41 = load i32, i32* @LPFC_MBOX_OPCODE_FUNCTION_RESET, align 4
  %42 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %43 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %38, %struct.TYPE_21__* %39, i32 %40, i32 %41, i32 0, i32 %42)
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = load i32, i32* @MBX_POLL, align 4
  %47 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %44, %struct.TYPE_21__* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to %union.lpfc_sli4_cfg_shdr*
  store %union.lpfc_sli4_cfg_shdr* %55, %union.lpfc_sli4_cfg_shdr** %12, align 8
  %56 = load i32, i32* @lpfc_mbox_hdr_status, align 4
  %57 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %12, align 8
  %58 = bitcast %union.lpfc_sli4_cfg_shdr* %57 to %struct.lpfc_register*
  %59 = call i32 @bf_get(i32 %56, %struct.lpfc_register* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @lpfc_mbox_hdr_add_status, align 4
  %61 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %12, align 8
  %62 = bitcast %union.lpfc_sli4_cfg_shdr* %61 to %struct.lpfc_register*
  %63 = call i32 @bf_get(i32 %60, %struct.lpfc_register* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MBX_TIMEOUT, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %37
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mempool_free(%struct.TYPE_21__* %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %37
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79, %76, %73
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = load i32, i32* @KERN_ERR, align 4
  %85 = load i32, i32* @LOG_INIT, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %82, %79
  br label %224

93:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %217, %93
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @MAX_IF_TYPE_2_RESETS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %220

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %13, i32 0, i32 0
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* @lpfc_sliport_ctrl_end, align 4
  %101 = load i32, i32* @LPFC_SLIPORT_LITTLE_ENDIAN, align 4
  %102 = call i32 @bf_set(i32 %100, %struct.lpfc_register* %13, i32 %101)
  %103 = load i32, i32* @lpfc_sliport_ctrl_ip, align 4
  %104 = load i32, i32* @LPFC_SLIPORT_INIT_PORT, align 4
  %105 = call i32 @bf_set(i32 %103, %struct.lpfc_register* %13, i32 %104)
  %106 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @writel(i32 %107, i32 %113)
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PCI_DEVICE_ID, align 4
  %119 = call i32 @pci_read_config_word(i32 %117, i32 %118, i32* %14)
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %150, %98
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 1000
  br i1 %122, label %123, label %153

123:                                              ; preds = %120
  %124 = call i32 @msleep(i32 10)
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %13, i32 0, i32 0
  %132 = call i32 @lpfc_readl(i32 %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %123
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %225

137:                                              ; preds = %123
  %138 = load i32, i32* @lpfc_sliport_status_rn, align 4
  %139 = call i32 @bf_get(i32 %138, %struct.lpfc_register* %13)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* @lpfc_sliport_status_rdy, align 4
  %146 = call i32 @bf_get(i32 %145, %struct.lpfc_register* %13)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %153

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %120

153:                                              ; preds = %148, %120
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 1000
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call i32 @msleep(i32 10)
  store i32 0, i32* %11, align 4
  br label %217

161:                                              ; preds = %156, %153
  %162 = load i32, i32* @lpfc_sliport_status_err, align 4
  %163 = call i32 @bf_get(i32 %162, %struct.lpfc_register* %13)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  %167 = icmp sge i32 %166, 1000
  br i1 %167, label %168, label %212

168:                                              ; preds = %165, %161
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @readl(i32 %174)
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %177 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %176, i32 0, i32 0
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  store i8* %175, i8** %179, align 8
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @readl(i32 %185)
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %188 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 1
  store i8* %186, i8** %190, align 8
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %192 = load i32, i32* @KERN_ERR, align 4
  %193 = load i32, i32* @LOG_INIT, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 %195, 10
  %197 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %13, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 0
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 0
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %205 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %204, i32 0, i32 0
  %206 = load i8**, i8*** %205, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 1
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 %194, i32 %196, i32 %198, i8* %203, i8* %208)
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %168, %165
  %213 = load i32, i32* %9, align 4
  %214 = icmp slt i32 %213, 1000
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %220

216:                                              ; preds = %212
  br label %217

217:                                              ; preds = %216, %159
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %94

220:                                              ; preds = %215, %94
  %221 = call i32 @msleep(i32 100)
  br label %224

222:                                              ; preds = %1
  br label %223

223:                                              ; preds = %1, %222
  br label %224

224:                                              ; preds = %223, %220, %92
  br label %225

225:                                              ; preds = %224, %134
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @MAX_IF_TYPE_2_RESETS, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %231 = load i32, i32* @KERN_ERR, align 4
  %232 = load i32, i32* @LOG_INIT, align 4
  %233 = load i32, i32* %10, align 4
  %234 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %230, i32 %231, i32 %232, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @ENODEV, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %5, align 4
  br label %237

237:                                              ; preds = %229, %225
  %238 = load i32, i32* %5, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %237, %30
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_register*) #1

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_readl(i32, i32*) #1

declare dso_local i8* @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
