; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_cper.c_cper_print_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_cper.c_cper_print_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_sec_mem_err = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CPER_MEM_VALID_ERROR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%serror_status: 0x%016llx\0A\00", align 1
@CPER_MEM_VALID_PHYSICAL_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%sphysical_address: 0x%016llx\0A\00", align 1
@CPER_MEM_VALID_PHYSICAL_ADDRESS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%sphysical_address_mask: 0x%016llx\0A\00", align 1
@CPER_MEM_VALID_NODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%snode: %d\0A\00", align 1
@CPER_MEM_VALID_CARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%scard: %d\0A\00", align 1
@CPER_MEM_VALID_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"%smodule: %d\0A\00", align 1
@CPER_MEM_VALID_BANK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"%sbank: %d\0A\00", align 1
@CPER_MEM_VALID_DEVICE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"%sdevice: %d\0A\00", align 1
@CPER_MEM_VALID_ROW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"%srow: %d\0A\00", align 1
@CPER_MEM_VALID_COLUMN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"%scolumn: %d\0A\00", align 1
@CPER_MEM_VALID_BIT_POSITION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"%sbit_position: %d\0A\00", align 1
@CPER_MEM_VALID_REQUESTOR_ID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"%srequestor_id: 0x%016llx\0A\00", align 1
@CPER_MEM_VALID_RESPONDER_ID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"%sresponder_id: 0x%016llx\0A\00", align 1
@CPER_MEM_VALID_TARGET_ID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"%starget_id: 0x%016llx\0A\00", align 1
@CPER_MEM_VALID_ERROR_TYPE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"%serror_type: %d, %s\0A\00", align 1
@cper_mem_err_type_strs = common dso_local global i8** null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cper_sec_mem_err*)* @cper_print_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cper_print_mem(i8* %0, %struct.cper_sec_mem_err* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cper_sec_mem_err*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cper_sec_mem_err* %1, %struct.cper_sec_mem_err** %4, align 8
  %6 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %7 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CPER_MEM_VALID_ERROR_STATUS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %15 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %14, i32 0, i32 15
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %17)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %21 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CPER_MEM_VALID_PHYSICAL_ADDRESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %29 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %27, i64 %31)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %35 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CPER_MEM_VALID_PHYSICAL_ADDRESS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %43 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %41, i64 %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %49 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CPER_MEM_VALID_NODE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i8*, i8** %3, align 8
  %56 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %57 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %55, i64 %59)
  br label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %63 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CPER_MEM_VALID_CARD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i8*, i8** %3, align 8
  %70 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %71 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %69, i64 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %77 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CPER_MEM_VALID_MODULE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i8*, i8** %3, align 8
  %84 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %85 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %83, i64 %87)
  br label %89

89:                                               ; preds = %82, %75
  %90 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %91 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CPER_MEM_VALID_BANK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i8*, i8** %3, align 8
  %98 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %99 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %97, i64 %101)
  br label %103

103:                                              ; preds = %96, %89
  %104 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %105 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CPER_MEM_VALID_DEVICE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i8*, i8** %3, align 8
  %112 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %113 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %111, i64 %115)
  br label %117

117:                                              ; preds = %110, %103
  %118 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %119 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CPER_MEM_VALID_ROW, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load i8*, i8** %3, align 8
  %126 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %127 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %125, i64 %129)
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %133 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CPER_MEM_VALID_COLUMN, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i8*, i8** %3, align 8
  %140 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %141 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %139, i64 %143)
  br label %145

145:                                              ; preds = %138, %131
  %146 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %147 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CPER_MEM_VALID_BIT_POSITION, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i8*, i8** %3, align 8
  %154 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %155 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %153, i64 %157)
  br label %159

159:                                              ; preds = %152, %145
  %160 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %161 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @CPER_MEM_VALID_REQUESTOR_ID, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load i8*, i8** %3, align 8
  %168 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %169 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %167, i64 %171)
  br label %173

173:                                              ; preds = %166, %159
  %174 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %175 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @CPER_MEM_VALID_RESPONDER_ID, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load i8*, i8** %3, align 8
  %182 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %183 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %181, i64 %185)
  br label %187

187:                                              ; preds = %180, %173
  %188 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %189 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @CPER_MEM_VALID_TARGET_ID, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = load i8*, i8** %3, align 8
  %196 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %197 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %195, i64 %199)
  br label %201

201:                                              ; preds = %194, %187
  %202 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %203 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CPER_MEM_VALID_ERROR_TYPE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %201
  %209 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %210 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %5, align 8
  %212 = load i8*, i8** %3, align 8
  %213 = load i64, i64* %5, align 8
  %214 = load i64, i64* %5, align 8
  %215 = load i8**, i8*** @cper_mem_err_type_strs, align 8
  %216 = call i64 @ARRAY_SIZE(i8** %215)
  %217 = icmp ult i64 %214, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %208
  %219 = load i8**, i8*** @cper_mem_err_type_strs, align 8
  %220 = load i64, i64* %5, align 8
  %221 = getelementptr inbounds i8*, i8** %219, i64 %220
  %222 = load i8*, i8** %221, align 8
  br label %224

223:                                              ; preds = %208
  br label %224

224:                                              ; preds = %223, %218
  %225 = phi i8* [ %222, %218 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %223 ]
  %226 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %212, i64 %213, i8* %225)
  br label %227

227:                                              ; preds = %224, %201
  ret void
}

declare dso_local i32 @printk(i8*, i8*, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
