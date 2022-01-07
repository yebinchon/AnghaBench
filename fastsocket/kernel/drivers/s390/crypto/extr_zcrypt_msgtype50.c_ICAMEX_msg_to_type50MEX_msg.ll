; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype50.c_ICAMEX_msg_to_type50MEX_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype50.c_ICAMEX_msg_to_type50MEX_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i32 }
%struct.ap_message = type { i32, %struct.type50_meb3_msg* }
%struct.type50_meb3_msg = type { i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ica_rsa_modexpo = type { i32, i32, i32, i32 }
%struct.type50_meb1_msg = type { i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.type50_meb2_msg = type { i8*, i8*, i8*, i32, %struct.TYPE_2__ }

@TYPE50_TYPE_CODE = common dso_local global i8* null, align 8
@TYPE50_MEB1_FMT = common dso_local global i32 0, align 4
@TYPE50_MEB2_FMT = common dso_local global i32 0, align 4
@TYPE50_MEB3_FMT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_rsa_modexpo*)* @ICAMEX_msg_to_type50MEX_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICAMEX_msg_to_type50MEX_msg(%struct.zcrypt_device* %0, %struct.ap_message* %1, %struct.ica_rsa_modexpo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_device*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ica_rsa_modexpo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.type50_meb1_msg*, align 8
  %13 = alloca %struct.type50_meb2_msg*, align 8
  %14 = alloca %struct.type50_meb3_msg*, align 8
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ica_rsa_modexpo* %2, %struct.ica_rsa_modexpo** %7, align 8
  %15 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %16 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sle i32 %18, 128
  br i1 %19, label %20, label %64

20:                                               ; preds = %3
  %21 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %22 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %21, i32 0, i32 1
  %23 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %22, align 8
  %24 = bitcast %struct.type50_meb3_msg* %23 to %struct.type50_meb1_msg*
  store %struct.type50_meb1_msg* %24, %struct.type50_meb1_msg** %12, align 8
  %25 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %26 = bitcast %struct.type50_meb1_msg* %25 to %struct.type50_meb3_msg*
  %27 = call i32 @memset(%struct.type50_meb3_msg* %26, i32 0, i32 48)
  %28 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %29 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %28, i32 0, i32 0
  store i32 48, i32* %29, align 8
  %30 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %31 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %32 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %35 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 48, i32* %36, align 8
  %37 = load i32, i32* @TYPE50_MEB1_FMT, align 4
  %38 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %39 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %41 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8* %47, i8** %8, align 8
  %48 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %49 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8* %55, i8** %9, align 8
  %56 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %57 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8* %63, i8** %10, align 8
  br label %154

64:                                               ; preds = %3
  %65 = load i32, i32* %11, align 4
  %66 = icmp sle i32 %65, 256
  br i1 %66, label %67, label %111

67:                                               ; preds = %64
  %68 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %69 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %68, i32 0, i32 1
  %70 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %69, align 8
  %71 = bitcast %struct.type50_meb3_msg* %70 to %struct.type50_meb2_msg*
  store %struct.type50_meb2_msg* %71, %struct.type50_meb2_msg** %13, align 8
  %72 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %73 = bitcast %struct.type50_meb2_msg* %72 to %struct.type50_meb3_msg*
  %74 = call i32 @memset(%struct.type50_meb3_msg* %73, i32 0, i32 48)
  %75 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %76 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %75, i32 0, i32 0
  store i32 48, i32* %76, align 8
  %77 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %78 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %79 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %82 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 48, i32* %83, align 8
  %84 = load i32, i32* @TYPE50_MEB2_FMT, align 4
  %85 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %86 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %88 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 0, %92
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8* %94, i8** %8, align 8
  %95 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %96 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8* %102, i8** %9, align 8
  %103 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %104 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8* %110, i8** %10, align 8
  br label %153

111:                                              ; preds = %64
  %112 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %113 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %112, i32 0, i32 1
  %114 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %113, align 8
  store %struct.type50_meb3_msg* %114, %struct.type50_meb3_msg** %14, align 8
  %115 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %116 = call i32 @memset(%struct.type50_meb3_msg* %115, i32 0, i32 48)
  %117 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %118 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %117, i32 0, i32 0
  store i32 48, i32* %118, align 8
  %119 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %120 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %121 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  %123 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %124 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 48, i32* %125, align 8
  %126 = load i32, i32* @TYPE50_MEB3_FMT, align 4
  %127 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %128 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %130 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 0, %134
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8* %136, i8** %8, align 8
  %137 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %138 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  store i8* %144, i8** %9, align 8
  %145 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %146 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = sub i64 0, %150
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8* %152, i8** %10, align 8
  br label %153

153:                                              ; preds = %111, %67
  br label %154

154:                                              ; preds = %153, %20
  %155 = load i8*, i8** %8, align 8
  %156 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %157 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i64 @copy_from_user(i8* %155, i32 %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %154
  %163 = load i8*, i8** %9, align 8
  %164 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %165 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i64 @copy_from_user(i8* %163, i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %162
  %171 = load i8*, i8** %10, align 8
  %172 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %173 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i64 @copy_from_user(i8* %171, i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170, %162, %154
  %179 = load i32, i32* @EFAULT, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %182

181:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %178
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @memset(%struct.type50_meb3_msg*, i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
