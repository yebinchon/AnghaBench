; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.srp_target_port = type { i32, i32, i32, i32, i8*, %struct.TYPE_9__*, i8*, %struct.TYPE_8__, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@srp_opt_tokens = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"bad dest GID parameter '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"bad P_Key parameter '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"bad max sect parameter '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"bad max cmd_per_lun parameter '%s'\0A\00", align 1
@SRP_CMD_SQ_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"bad IO class parameter '%s'\0A\00", align 1
@SRP_REV10_IB_IO_CLASS = common dso_local global i32 0, align 4
@SRP_REV16A_IB_IO_CLASS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"unknown IO class parameter value %x specified (use %x or %x).\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"bad max cmd_sg_entries parameter '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"bad allow_ext_sg parameter '%s'\0A\00", align 1
@SCSI_MAX_SG_CHAIN_SEGMENTS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"bad max sg_tablesize parameter '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"unknown parameter or missing value '%s' in target creation request\0A\00", align 1
@SRP_OPT_ALL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"target creation request is missing parameter '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.srp_target_port*)* @srp_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_parse_options(i8* %0, %struct.srp_target_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.srp_target_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.srp_target_port* %1, %struct.srp_target_port** %5, align 8
  %17 = load i32, i32* @MAX_OPT_ARGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i8* %23, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %331

31:                                               ; preds = %2
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %279, %40, %31
  %34 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %280

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %33

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @srp_opt_tokens, align 8
  %44 = call i32 @match_token(i8* %42, %struct.TYPE_10__* %43, i32* %20)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  switch i32 %48, label %276 [
    i32 136, label %49
    i32 134, label %64
    i32 137, label %79
    i32 130, label %132
    i32 129, label %144
    i32 131, label %165
    i32 132, label %177
    i32 133, label %191
    i32 135, label %214
    i32 138, label %229
    i32 139, label %245
    i32 128, label %259
  ]

49:                                               ; preds = %41
  %50 = call i8* @match_strdup(i32* %20)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %14, align 4
  br label %327

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @simple_strtoull(i8* %57, i32* null, i32 16)
  %59 = call i8* @cpu_to_be64(i32 %58)
  %60 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %61 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %60, i32 0, i32 10
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @kfree(i8* %62)
  br label %279

64:                                               ; preds = %41
  %65 = call i8* @match_strdup(i32* %20)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %327

71:                                               ; preds = %64
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @simple_strtoull(i8* %72, i32* null, i32 16)
  %74 = call i8* @cpu_to_be64(i32 %73)
  %75 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %76 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @kfree(i8* %77)
  br label %279

79:                                               ; preds = %41
  %80 = call i8* @match_strdup(i32* %20)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %327

86:                                               ; preds = %79
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = icmp ne i32 %88, 32
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @kfree(i8* %93)
  br label %327

95:                                               ; preds = %86
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %117, %95
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %97, 16
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %15, align 4
  %103 = mul nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = call i32 @strlcpy(i8* %100, i8* %105, i32 3)
  %107 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %108 = call i32 @simple_strtoul(i8* %107, i32* null, i32 16)
  %109 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %110 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %108, i32* %116, align 4
  br label %117

117:                                              ; preds = %99
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %96

120:                                              ; preds = %96
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @kfree(i8* %121)
  %123 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %124 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %127 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @memcpy(i32 %125, i32* %130, i32 16)
  br label %279

132:                                              ; preds = %41
  %133 = call i32 @match_hex(i32* %20, i32* %13)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %136)
  br label %327

138:                                              ; preds = %132
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @cpu_to_be16(i32 %139)
  %141 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %142 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 8
  br label %279

144:                                              ; preds = %41
  %145 = call i8* @match_strdup(i32* %20)
  store i8* %145, i8** %8, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %14, align 4
  br label %327

151:                                              ; preds = %144
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @simple_strtoull(i8* %152, i32* null, i32 16)
  %154 = call i8* @cpu_to_be64(i32 %153)
  %155 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %156 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %155, i32 0, i32 6
  store i8* %154, i8** %156, align 8
  %157 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %158 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %157, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %161 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @kfree(i8* %163)
  br label %279

165:                                              ; preds = %41
  %166 = call i32 @match_int(i32* %20, i32* %13)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %169)
  br label %327

171:                                              ; preds = %165
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %174 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %173, i32 0, i32 5
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i32 %172, i32* %176, align 4
  br label %279

177:                                              ; preds = %41
  %178 = call i32 @match_int(i32* %20, i32* %13)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %181)
  br label %327

183:                                              ; preds = %177
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @SRP_CMD_SQ_SIZE, align 4
  %186 = call i32 @min(i32 %184, i32 %185)
  %187 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %188 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %187, i32 0, i32 5
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  store i32 %186, i32* %190, align 4
  br label %279

191:                                              ; preds = %41
  %192 = call i32 @match_hex(i32* %20, i32* %13)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %195)
  br label %327

197:                                              ; preds = %191
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* @SRP_REV10_IB_IO_CLASS, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* @SRP_REV16A_IB_IO_CLASS, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @SRP_REV10_IB_IO_CLASS, align 4
  %208 = load i32, i32* @SRP_REV16A_IB_IO_CLASS, align 4
  %209 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %206, i32 %207, i32 %208)
  br label %327

210:                                              ; preds = %201, %197
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %213 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %279

214:                                              ; preds = %41
  %215 = call i8* @match_strdup(i32* %20)
  store i8* %215, i8** %8, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %14, align 4
  br label %327

221:                                              ; preds = %214
  %222 = load i8*, i8** %8, align 8
  %223 = call i32 @simple_strtoull(i8* %222, i32* null, i32 16)
  %224 = call i8* @cpu_to_be64(i32 %223)
  %225 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %226 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %225, i32 0, i32 4
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** %8, align 8
  %228 = call i32 @kfree(i8* %227)
  br label %279

229:                                              ; preds = %41
  %230 = call i32 @match_int(i32* %20, i32* %13)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %233, 1
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %13, align 4
  %237 = icmp sgt i32 %236, 255
  br i1 %237, label %238, label %241

238:                                              ; preds = %235, %232, %229
  %239 = load i8*, i8** %8, align 8
  %240 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %239)
  br label %327

241:                                              ; preds = %235
  %242 = load i32, i32* %13, align 4
  %243 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %244 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  br label %279

245:                                              ; preds = %41
  %246 = call i32 @match_int(i32* %20, i32* %13)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i8*, i8** %8, align 8
  %250 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %249)
  br label %327

251:                                              ; preds = %245
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %258 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  br label %279

259:                                              ; preds = %41
  %260 = call i32 @match_int(i32* %20, i32* %13)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %13, align 4
  %264 = icmp slt i32 %263, 1
  br i1 %264, label %269, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* @SCSI_MAX_SG_CHAIN_SEGMENTS, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %265, %262, %259
  %270 = load i8*, i8** %8, align 8
  %271 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %270)
  br label %327

272:                                              ; preds = %265
  %273 = load i32, i32* %13, align 4
  %274 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %275 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  br label %279

276:                                              ; preds = %41
  %277 = load i8*, i8** %8, align 8
  %278 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), i8* %277)
  br label %327

279:                                              ; preds = %272, %251, %241, %221, %210, %183, %171, %151, %138, %120, %71, %56
  br label %33

280:                                              ; preds = %33
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* @SRP_OPT_ALL, align 4
  %283 = and i32 %281, %282
  %284 = load i32, i32* @SRP_OPT_ALL, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  store i32 0, i32* %14, align 4
  br label %326

287:                                              ; preds = %280
  store i32 0, i32* %15, align 4
  br label %288

288:                                              ; preds = %322, %287
  %289 = load i32, i32* %15, align 4
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** @srp_opt_tokens, align 8
  %291 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %290)
  %292 = icmp slt i32 %289, %291
  br i1 %292, label %293, label %325

293:                                              ; preds = %288
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** @srp_opt_tokens, align 8
  %295 = load i32, i32* %15, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @SRP_OPT_ALL, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %321

303:                                              ; preds = %293
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** @srp_opt_tokens, align 8
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %12, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %303
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** @srp_opt_tokens, align 8
  %315 = load i32, i32* %15, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i8* %319)
  br label %321

321:                                              ; preds = %313, %303, %293
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %15, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %15, align 4
  br label %288

325:                                              ; preds = %288
  br label %326

326:                                              ; preds = %325, %286
  br label %327

327:                                              ; preds = %326, %276, %269, %248, %238, %218, %205, %194, %180, %168, %148, %135, %90, %83, %68, %53
  %328 = load i8*, i8** %6, align 8
  %329 = call i32 @kfree(i8* %328)
  %330 = load i32, i32* %14, align 4
  store i32 %330, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %331

331:                                              ; preds = %327, %28
  %332 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, %struct.TYPE_10__*, i32*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i8* @cpu_to_be64(i32) #2

declare dso_local i32 @simple_strtoull(i8*, i32*, i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pr_warn(i8*, ...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @match_hex(i32*, i32*) #2

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
