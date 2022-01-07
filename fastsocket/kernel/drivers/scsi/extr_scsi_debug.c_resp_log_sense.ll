; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_log_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_log_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_MAX_LSENSE_SZ = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@SDEBUG_MAX_INQ_ARR_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_log_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_log_sense(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %19 = load i32, i32* @SDEBUG_MAX_LSENSE_SZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %17, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %29 = call i32 @check_readiness(%struct.scsi_cmnd* %27, i32 1, %struct.sdebug_dev_info* %28)
  store i32 %29, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %230

33:                                               ; preds = %2
  %34 = trunc i64 %20 to i32
  %35 = call i32 @memset(i8* %22, i32 0, i32 %34)
  %36 = load i8*, i8** %17, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 2
  store i32 %40, i32* %6, align 4
  %41 = load i8*, i8** %17, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48, %33
  %52 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %53 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %54 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %55 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %52, i32 %53, i32 %54, i32 0)
  %56 = load i32, i32* @check_condition_result, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %230

57:                                               ; preds = %48
  %58 = load i8*, i8** %17, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 192
  %63 = ashr i32 %62, 6
  store i32 %63, i32* %8, align 4
  %64 = load i8*, i8** %17, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 63
  store i32 %68, i32* %9, align 4
  %69 = load i8*, i8** %17, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 255
  store i32 %73, i32* %10, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 7
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 8
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %78, %82
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %85, i8* %86, align 16
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 0, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %57
  %90 = load i32, i32* %9, align 4
  switch i32 %90, label %116 [
    i32 0, label %91
    i32 13, label %108
    i32 47, label %112
  ]

91:                                               ; preds = %89
  store i32 4, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %22, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %22, i64 %98
  store i8 13, i8* %99, align 1
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %22, i64 %102
  store i8 47, i8* %103, align 1
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %104, 4
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %106, i8* %107, align 1
  br label %122

108:                                              ; preds = %89
  %109 = getelementptr inbounds i8, i8* %22, i64 4
  %110 = call zeroext i8 @resp_temp_l_pg(i8* %109)
  %111 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %110, i8* %111, align 1
  br label %122

112:                                              ; preds = %89
  %113 = getelementptr inbounds i8, i8* %22, i64 4
  %114 = call zeroext i8 @resp_ie_l_pg(i8* %113)
  %115 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %114, i8* %115, align 1
  br label %122

116:                                              ; preds = %89
  %117 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %118 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %119 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %120 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %117, i32 %118, i32 %119, i32 0)
  %121 = load i32, i32* @check_condition_result, align 4
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %230

122:                                              ; preds = %112, %108, %91
  br label %213

123:                                              ; preds = %57
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 255, %124
  br i1 %125, label %126, label %206

126:                                              ; preds = %123
  %127 = getelementptr inbounds i8, i8* %22, i64 0
  %128 = load i8, i8* %127, align 16
  %129 = zext i8 %128 to i32
  %130 = or i32 %129, 64
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %127, align 16
  %132 = load i32, i32* %10, align 4
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %133, i8* %134, align 1
  %135 = load i32, i32* %9, align 4
  switch i32 %135, label %199 [
    i32 0, label %136
    i32 13, label %173
    i32 47, label %186
  ]

136:                                              ; preds = %126
  store i32 4, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %22, i64 %139
  store i8 0, i8* %140, align 1
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %22, i64 %143
  store i8 0, i8* %144, align 1
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %22, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %22, i64 %151
  store i8 -1, i8* %152, align 1
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %22, i64 %155
  store i8 13, i8* %156, align 1
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %22, i64 %159
  store i8 0, i8* %160, align 1
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %22, i64 %163
  store i8 47, i8* %164, align 1
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %22, i64 %167
  store i8 0, i8* %168, align 1
  %169 = load i32, i32* %14, align 4
  %170 = sub nsw i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %171, i8* %172, align 1
  br label %205

173:                                              ; preds = %126
  store i32 4, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %22, i64 %176
  store i8 13, i8* %177, align 1
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %22, i64 %180
  store i8 0, i8* %181, align 1
  %182 = load i32, i32* %14, align 4
  %183 = sub nsw i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %184, i8* %185, align 1
  br label %205

186:                                              ; preds = %126
  store i32 4, i32* %14, align 4
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %22, i64 %189
  store i8 47, i8* %190, align 1
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %14, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %22, i64 %193
  store i8 0, i8* %194, align 1
  %195 = load i32, i32* %14, align 4
  %196 = sub nsw i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %197, i8* %198, align 1
  br label %205

199:                                              ; preds = %126
  %200 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %201 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %202 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %203 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %200, i32 %201, i32 %202, i32 0)
  %204 = load i32, i32* @check_condition_result, align 4
  store i32 %204, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %230

205:                                              ; preds = %186, %173, %136
  br label %212

206:                                              ; preds = %123
  %207 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %208 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %209 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %210 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %207, i32 %208, i32 %209, i32 0)
  %211 = load i32, i32* @check_condition_result, align 4
  store i32 %211, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %230

212:                                              ; preds = %205
  br label %213

213:                                              ; preds = %212, %122
  %214 = getelementptr inbounds i8, i8* %22, i64 2
  %215 = load i8, i8* %214, align 2
  %216 = zext i8 %215 to i32
  %217 = shl i32 %216, 8
  %218 = getelementptr inbounds i8, i8* %22, i64 3
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %217, %220
  %222 = add nsw i32 %221, 4
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @min(i32 %222, i32 %223)
  store i32 %224, i32* %13, align 4
  %225 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @SDEBUG_MAX_INQ_ARR_SZ, align 4
  %228 = call i32 @min(i32 %226, i32 %227)
  %229 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %225, i8* %22, i32 %228)
  store i32 %229, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %230

230:                                              ; preds = %213, %206, %199, %116, %51, %31
  %231 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_readiness(%struct.scsi_cmnd*, i32, %struct.sdebug_dev_info*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mk_sense_buffer(%struct.sdebug_dev_info*, i32, i32, i32) #2

declare dso_local zeroext i8 @resp_temp_l_pg(i8*) #2

declare dso_local zeroext i8 @resp_ie_l_pg(i8*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
