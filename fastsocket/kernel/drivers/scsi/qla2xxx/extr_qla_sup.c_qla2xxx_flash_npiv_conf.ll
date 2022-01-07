; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_flash_npiv_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_flash_npiv_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32*, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32*, i32, i32)* }
%struct.TYPE_9__ = type { i64 }
%struct.qla_npiv_header = type { i64, i64, i64 }
%struct.qla_npiv_entry = type { i64, i64, i32, i32, i32, i32 }
%struct.fc_vport_identifiers = type { i32, i8*, i8*, i32, i32 }
%struct.fc_vport = type { i32 }

@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Unsupported NPIV-Config detected: version=0x%x entries=0x%x checksum=0x%x.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to allocate memory for data.\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"Inconsistent NPIV-Config detected: version=0x%x entries=0x%x checksum=0x%x.\0A\00", align 1
@BIT_0 = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_PORTTYPE_NPIV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"NPIV[%02x]: wwpn=%llx wwnn=%llx vf_id=0x%x Q_qos=0x%x F_qos=0x%x.\0A\00", align 1
@QLA_PRECONFIG_VPORTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"NPIV-Config Failed to create vport [%02x]: wwpn=%llx wwnn=%llx.\0A\00", align 1
@NPIV_CONFIG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2xxx_flash_npiv_conf(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_npiv_header, align 8
  %9 = alloca %struct.qla_npiv_entry*, align 8
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fc_vport_identifiers, align 8
  %13 = alloca %struct.fc_vport*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %10, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %18 = call i32 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %22 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %26 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %30 = call i32 @IS_QLA2031(%struct.qla_hw_data* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %246

33:                                               ; preds = %28, %24, %20, %1
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %246

40:                                               ; preds = %33
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_11__*, i32*, i32, i32)*, i32 (%struct.TYPE_11__*, i32*, i32, i32)** %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = bitcast %struct.qla_npiv_header* %8 to i32*
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 2
  %52 = call i32 %45(%struct.TYPE_11__* %46, i32* %47, i32 %51, i32 24)
  %53 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @__constant_cpu_to_le16(i32 65535)
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %246

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @__constant_cpu_to_le16(i32 1)
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i32, i32* @ql_dbg_user, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @le16_to_cpu(i64 %67)
  %69 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @le16_to_cpu(i64 %70)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @le16_to_cpu(i64 %74)
  %76 = sext i32 %75 to i64
  %77 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i32, i64, i64, ...) @ql_dbg(i32 %64, %struct.TYPE_11__* %65, i32 28816, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %68, i64 %72, i64 %76)
  br label %246

78:                                               ; preds = %58
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @kmalloc(i32 16384, i32 %79)
  store i8* %80, i8** %3, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @ql_log_warn, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %84, %struct.TYPE_11__* %85, i32 28817, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %246

87:                                               ; preds = %78
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_11__*, i32*, i32, i32)*, i32 (%struct.TYPE_11__*, i32*, i32, i32)** %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %97 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 %98, 2
  %100 = call i32 %92(%struct.TYPE_11__* %93, i32* %95, i32 %99, i32 16384)
  %101 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @le16_to_cpu(i64 %102)
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 32
  %106 = add i64 24, %105
  %107 = lshr i64 %106, 1
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %5, align 4
  %109 = load i8*, i8** %3, align 8
  %110 = bitcast i8* %109 to i32*
  store i32* %110, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %122, %87
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %4, align 8
  %117 = load i32, i32* %115, align 4
  %118 = sext i32 %117 to i64
  %119 = call i32 @le16_to_cpu(i64 %118)
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %5, align 4
  br label %111

125:                                              ; preds = %111
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = load i32, i32* @ql_dbg_user, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %131 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @le16_to_cpu(i64 %132)
  %134 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @le16_to_cpu(i64 %135)
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @le16_to_cpu(i64 %139)
  %141 = sext i32 %140 to i64
  %142 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i32, i64, i64, ...) @ql_dbg(i32 %129, %struct.TYPE_11__* %130, i32 28818, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %133, i64 %137, i64 %141)
  br label %243

143:                                              ; preds = %125
  %144 = load i8*, i8** %3, align 8
  %145 = getelementptr i8, i8* %144, i64 24
  %146 = bitcast i8* %145 to %struct.qla_npiv_entry*
  store %struct.qla_npiv_entry* %146, %struct.qla_npiv_entry** %9, align 8
  %147 = getelementptr inbounds %struct.qla_npiv_header, %struct.qla_npiv_header* %8, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @le16_to_cpu(i64 %148)
  store i32 %149, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %235, %143
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %242

153:                                              ; preds = %150
  %154 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %155 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load %struct.qla_npiv_entry*, %struct.qla_npiv_entry** %9, align 8
  %161 = call i32 @memcpy(i32* %159, %struct.qla_npiv_entry* %160, i32 32)
  %162 = load %struct.qla_npiv_entry*, %struct.qla_npiv_entry** %9, align 8
  %163 = getelementptr inbounds %struct.qla_npiv_entry, %struct.qla_npiv_entry* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @le16_to_cpu(i64 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp eq i32 %166, 65535
  br i1 %167, label %168, label %169

168:                                              ; preds = %153
  br label %235

169:                                              ; preds = %153
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @BIT_0, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %235

175:                                              ; preds = %169
  %176 = call i32 @memset(%struct.fc_vport_identifiers* %12, i32 0, i32 32)
  %177 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %178 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 4
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @FC_PORTTYPE_NPIV, align 4
  %180 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 3
  store i32 %179, i32* %180, align 8
  %181 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 0
  store i32 0, i32* %181, align 8
  %182 = load %struct.qla_npiv_entry*, %struct.qla_npiv_entry** %9, align 8
  %183 = getelementptr inbounds %struct.qla_npiv_entry, %struct.qla_npiv_entry* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @wwn_to_u64(i32 %184)
  %186 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 2
  store i8* %185, i8** %186, align 8
  %187 = load %struct.qla_npiv_entry*, %struct.qla_npiv_entry** %9, align 8
  %188 = getelementptr inbounds %struct.qla_npiv_entry, %struct.qla_npiv_entry* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @wwn_to_u64(i32 %189)
  %191 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 1
  store i8* %190, i8** %191, align 8
  %192 = load i32, i32* @ql_dbg_user, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %194 = load i32, i32* %5, align 4
  %195 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = ptrtoint i8* %196 to i64
  %198 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.qla_npiv_entry*, %struct.qla_npiv_entry** %9, align 8
  %202 = getelementptr inbounds %struct.qla_npiv_entry, %struct.qla_npiv_entry* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @le16_to_cpu(i64 %203)
  %205 = load %struct.qla_npiv_entry*, %struct.qla_npiv_entry** %9, align 8
  %206 = getelementptr inbounds %struct.qla_npiv_entry, %struct.qla_npiv_entry* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.qla_npiv_entry*, %struct.qla_npiv_entry** %9, align 8
  %209 = getelementptr inbounds %struct.qla_npiv_entry, %struct.qla_npiv_entry* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i32, i64, i64, ...) @ql_dbg(i32 %192, %struct.TYPE_11__* %193, i32 28819, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %194, i64 %197, i64 %200, i32 %204, i32 %207, i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @QLA_PRECONFIG_VPORTS, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %234

215:                                              ; preds = %175
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call %struct.fc_vport* @fc_vport_create(i32 %218, i32 0, %struct.fc_vport_identifiers* %12)
  store %struct.fc_vport* %219, %struct.fc_vport** %13, align 8
  %220 = load %struct.fc_vport*, %struct.fc_vport** %13, align 8
  %221 = icmp ne %struct.fc_vport* %220, null
  br i1 %221, label %233, label %222

222:                                              ; preds = %215
  %223 = load i32, i32* @ql_log_warn, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %225 = load i32, i32* %5, align 4
  %226 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = ptrtoint i8* %227 to i64
  %229 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %12, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = ptrtoint i8* %230 to i64
  %232 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %223, %struct.TYPE_11__* %224, i32 28820, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %225, i64 %228, i64 %231)
  br label %233

233:                                              ; preds = %222, %215
  br label %234

234:                                              ; preds = %233, %175
  br label %235

235:                                              ; preds = %234, %174, %168
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %5, align 4
  %238 = load %struct.qla_npiv_entry*, %struct.qla_npiv_entry** %9, align 8
  %239 = getelementptr inbounds %struct.qla_npiv_entry, %struct.qla_npiv_entry* %238, i32 1
  store %struct.qla_npiv_entry* %239, %struct.qla_npiv_entry** %9, align 8
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %150

242:                                              ; preds = %150
  br label %243

243:                                              ; preds = %242, %128
  %244 = load i8*, i8** %3, align 8
  %245 = call i32 @kfree(i8* %244)
  br label %246

246:                                              ; preds = %243, %83, %63, %57, %39, %32
  ret void
}

declare dso_local i32 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @__constant_cpu_to_le16(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_11__*, i32, i8*, i32, i64, i64, ...) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, %struct.qla_npiv_entry*, i32) #1

declare dso_local i32 @memset(%struct.fc_vport_identifiers*, i32, i32) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local %struct.fc_vport* @fc_vport_create(i32, i32, %struct.fc_vport_identifiers*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
