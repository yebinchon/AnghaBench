; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_model_desc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_model_desc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BFA_ADAPTER_MODEL_NAME_LEN = common dso_local global i32 0, align 4
@BFA_ADAPTER_MODEL_DESCR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Brocade-425\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Brocade 4Gbps PCIe dual port FC HBA\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Brocade-825\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Brocade 8Gbps PCIe dual port FC HBA\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Brocade-42B\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Brocade 4Gbps PCIe dual port FC HBA for HP\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Brocade-82B\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Brocade 8Gbps PCIe dual port FC HBA for HP\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Brocade-1010\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Brocade 10Gbps single port CNA\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Brocade-1020\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Brocade 10Gbps dual port CNA\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Brocade-1007\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Brocade 10Gbps CNA for IBM Blade Center\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Brocade-415\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Brocade 4Gbps PCIe single port FC HBA\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Brocade-815\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Brocade 8Gbps PCIe single port FC HBA\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Brocade-41B\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Brocade 4Gbps PCIe single port FC HBA for HP\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Brocade-81B\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Brocade 8Gbps PCIe single port FC HBA for HP\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Brocade-804\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Brocade 8Gbps FC HBA for HP Bladesystem C-class\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Brocade-1741\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"Brocade 10Gbps CNA for Dell M-Series Blade Servers\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Brocade-1860\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"Brocade 16Gbps PCIe single port FC HBA\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"Brocade 16Gbps PCIe dual port FC HBA\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Brocade-1867\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"Brocade 16Gbps PCIe single port FC HBA for IBM\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Brocade 16Gbps PCIe dual port FC HBA for IBM\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Invalid Model\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bfad_im_model_desc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_model_desc_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.bfad_im_port_s*, align 8
  %9 = alloca %struct.bfad_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %7, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %21, %struct.bfad_im_port_s** %8, align 8
  %22 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %8, align 8
  %23 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %22, i32 0, i32 0
  %24 = load %struct.bfad_s*, %struct.bfad_s** %23, align 8
  store %struct.bfad_s* %24, %struct.bfad_s** %9, align 8
  %25 = load i32, i32* @BFA_ADAPTER_MODEL_NAME_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %32 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %33 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %32, i32 0, i32 0
  %34 = call i32 @bfa_get_adapter_model(%struct.TYPE_3__* %33, i8* %28)
  %35 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %36 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %35, i32 0, i32 0
  %37 = call i32 @bfa_get_nports(%struct.TYPE_3__* %36)
  store i32 %37, i32* %13, align 4
  %38 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %216

43:                                               ; preds = %3
  %44 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %215

49:                                               ; preds = %43
  %50 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %214

55:                                               ; preds = %49
  %56 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %213

61:                                               ; preds = %55
  %62 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %212

67:                                               ; preds = %61
  %68 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %72 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %211

73:                                               ; preds = %67
  %74 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %78 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %210

79:                                               ; preds = %73
  %80 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %84 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  br label %209

85:                                               ; preds = %79
  %86 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %90 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  br label %208

91:                                               ; preds = %85
  %92 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %96 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  br label %207

97:                                               ; preds = %91
  %98 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %102 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %101, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  br label %206

103:                                              ; preds = %97
  %104 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %108 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0))
  br label %205

109:                                              ; preds = %103
  %110 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %114 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %113, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0))
  br label %204

115:                                              ; preds = %109
  %116 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %170

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %123 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = call i64 @bfa_ioc_is_cna(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %129 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %169

130:                                              ; preds = %121, %118
  %131 = load i32, i32* %13, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %135 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = call i64 @bfa_ioc_is_cna(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %141 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0))
  br label %168

142:                                              ; preds = %133, %130
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %147 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = call i64 @bfa_ioc_is_cna(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %153 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %167

154:                                              ; preds = %145, %142
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %159 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = call i64 @bfa_ioc_is_cna(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %165 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %157, %154
  br label %167

167:                                              ; preds = %166, %151
  br label %168

168:                                              ; preds = %167, %139
  br label %169

169:                                              ; preds = %168, %127
  br label %203

170:                                              ; preds = %115
  %171 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %199, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %178 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = call i64 @bfa_ioc_is_cna(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %176
  %183 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %184 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %183, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0))
  br label %198

185:                                              ; preds = %176, %173
  %186 = load i32, i32* %13, align 4
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %190 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = call i64 @bfa_ioc_is_cna(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %196 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %195, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %188, %185
  br label %198

198:                                              ; preds = %197, %182
  br label %202

199:                                              ; preds = %170
  %200 = load i32, i32* @BFA_ADAPTER_MODEL_DESCR_LEN, align 4
  %201 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %198
  br label %203

203:                                              ; preds = %202, %169
  br label %204

204:                                              ; preds = %203, %112
  br label %205

205:                                              ; preds = %204, %106
  br label %206

206:                                              ; preds = %205, %100
  br label %207

207:                                              ; preds = %206, %94
  br label %208

208:                                              ; preds = %207, %88
  br label %209

209:                                              ; preds = %208, %82
  br label %210

210:                                              ; preds = %209, %76
  br label %211

211:                                              ; preds = %210, %70
  br label %212

212:                                              ; preds = %211, %64
  br label %213

213:                                              ; preds = %212, %58
  br label %214

214:                                              ; preds = %213, %52
  br label %215

215:                                              ; preds = %214, %46
  br label %216

216:                                              ; preds = %215, %40
  %217 = load i8*, i8** %6, align 8
  %218 = load i32, i32* @PAGE_SIZE, align 4
  %219 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %217, i32 %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* %31)
  %220 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %220)
  ret i32 %219
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bfa_get_adapter_model(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @bfa_get_nports(%struct.TYPE_3__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @bfa_ioc_is_cna(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
