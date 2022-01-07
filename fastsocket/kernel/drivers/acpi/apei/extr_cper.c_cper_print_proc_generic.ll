; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_cper.c_cper_print_proc_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_cper.c_cper_print_proc_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_sec_proc_generic = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CPER_PROC_VALID_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%sprocessor_type: %d, %s\0A\00", align 1
@cper_proc_type_strs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@CPER_PROC_VALID_ISA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%sprocessor_isa: %d, %s\0A\00", align 1
@cper_proc_isa_strs = common dso_local global i8** null, align 8
@CPER_PROC_VALID_ERROR_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%serror_type: 0x%02x\0A\00", align 1
@cper_proc_error_type_strs = common dso_local global i8** null, align 8
@CPER_PROC_VALID_OPERATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"%soperation: %d, %s\0A\00", align 1
@cper_proc_op_strs = common dso_local global i8** null, align 8
@CPER_PROC_VALID_FLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"%sflags: 0x%02x\0A\00", align 1
@cper_proc_flag_strs = common dso_local global i8** null, align 8
@CPER_PROC_VALID_LEVEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"%slevel: %d\0A\00", align 1
@CPER_PROC_VALID_VERSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"%sversion_info: 0x%016llx\0A\00", align 1
@CPER_PROC_VALID_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"%sprocessor_id: 0x%016llx\0A\00", align 1
@CPER_PROC_VALID_TARGET_ADDRESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"%starget_address: 0x%016llx\0A\00", align 1
@CPER_PROC_VALID_REQUESTOR_ID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"%srequestor_id: 0x%016llx\0A\00", align 1
@CPER_PROC_VALID_RESPONDER_ID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"%sresponder_id: 0x%016llx\0A\00", align 1
@CPER_PROC_VALID_IP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"%sIP: 0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cper_sec_proc_generic*)* @cper_print_proc_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cper_print_proc_generic(i8* %0, %struct.cper_sec_proc_generic* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cper_sec_proc_generic*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cper_sec_proc_generic* %1, %struct.cper_sec_proc_generic** %4, align 8
  %5 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %6 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CPER_PROC_VALID_TYPE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %14 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %17 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i8**, i8*** @cper_proc_type_strs, align 8
  %20 = call i64 @ARRAY_SIZE(i8** %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load i8**, i8*** @cper_proc_type_strs, align 8
  %24 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %25 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29, %22
  %31 = phi i8* [ %28, %22 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %12, i64 %15, i8* %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %35 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CPER_PROC_VALID_ISA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %43 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %46 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i8**, i8*** @cper_proc_isa_strs, align 8
  %49 = call i64 @ARRAY_SIZE(i8** %48)
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load i8**, i8*** @cper_proc_isa_strs, align 8
  %53 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %54 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  br label %59

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi i8* [ %57, %51 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %58 ]
  %61 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %41, i64 %44, i8* %60)
  br label %62

62:                                               ; preds = %59, %33
  %63 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %64 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CPER_PROC_VALID_ERROR_TYPE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load i8*, i8** %3, align 8
  %71 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %72 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %70, i64 %74)
  %76 = load i8*, i8** %3, align 8
  %77 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %78 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 8
  %80 = load i8**, i8*** @cper_proc_error_type_strs, align 8
  %81 = load i8**, i8*** @cper_proc_error_type_strs, align 8
  %82 = call i64 @ARRAY_SIZE(i8** %81)
  %83 = call i32 @cper_print_bits(i8* %76, i32 %79, i8** %80, i64 %82)
  br label %84

84:                                               ; preds = %69, %62
  %85 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %86 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CPER_PROC_VALID_OPERATION, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %84
  %92 = load i8*, i8** %3, align 8
  %93 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %94 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %97 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i8**, i8*** @cper_proc_op_strs, align 8
  %100 = call i64 @ARRAY_SIZE(i8** %99)
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %91
  %103 = load i8**, i8*** @cper_proc_op_strs, align 8
  %104 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %105 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  br label %110

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %102
  %111 = phi i8* [ %108, %102 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %109 ]
  %112 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %92, i64 %95, i8* %111)
  br label %113

113:                                              ; preds = %110, %84
  %114 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %115 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CPER_PROC_VALID_FLAGS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %113
  %121 = load i8*, i8** %3, align 8
  %122 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %123 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %121, i64 %125)
  %127 = load i8*, i8** %3, align 8
  %128 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %129 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 4
  %131 = load i8**, i8*** @cper_proc_flag_strs, align 8
  %132 = load i8**, i8*** @cper_proc_flag_strs, align 8
  %133 = call i64 @ARRAY_SIZE(i8** %132)
  %134 = call i32 @cper_print_bits(i8* %127, i32 %130, i8** %131, i64 %133)
  br label %135

135:                                              ; preds = %120, %113
  %136 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %137 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CPER_PROC_VALID_LEVEL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load i8*, i8** %3, align 8
  %144 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %145 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %143, i64 %147)
  br label %149

149:                                              ; preds = %142, %135
  %150 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %151 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @CPER_PROC_VALID_VERSION, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = load i8*, i8** %3, align 8
  %158 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %159 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %157, i64 %161)
  br label %163

163:                                              ; preds = %156, %149
  %164 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %165 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @CPER_PROC_VALID_ID, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i8*, i8** %3, align 8
  %172 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %173 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %171, i64 %175)
  br label %177

177:                                              ; preds = %170, %163
  %178 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %179 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CPER_PROC_VALID_TARGET_ADDRESS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load i8*, i8** %3, align 8
  %186 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %187 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %185, i64 %189)
  br label %191

191:                                              ; preds = %184, %177
  %192 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %193 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CPER_PROC_VALID_REQUESTOR_ID, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load i8*, i8** %3, align 8
  %200 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %201 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %199, i64 %203)
  br label %205

205:                                              ; preds = %198, %191
  %206 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %207 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @CPER_PROC_VALID_RESPONDER_ID, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %205
  %213 = load i8*, i8** %3, align 8
  %214 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %215 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %213, i64 %217)
  br label %219

219:                                              ; preds = %212, %205
  %220 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %221 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @CPER_PROC_VALID_IP, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %219
  %227 = load i8*, i8** %3, align 8
  %228 = load %struct.cper_sec_proc_generic*, %struct.cper_sec_proc_generic** %4, align 8
  %229 = getelementptr inbounds %struct.cper_sec_proc_generic, %struct.cper_sec_proc_generic* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %227, i64 %231)
  br label %233

233:                                              ; preds = %226, %219
  ret void
}

declare dso_local i32 @printk(i8*, i8*, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cper_print_bits(i8*, i32, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
