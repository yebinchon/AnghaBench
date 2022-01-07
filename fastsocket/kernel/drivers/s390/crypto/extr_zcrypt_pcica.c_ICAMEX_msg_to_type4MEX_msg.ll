; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcica.c_ICAMEX_msg_to_type4MEX_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcica.c_ICAMEX_msg_to_type4MEX_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i32 }
%struct.ap_message = type { i32, %struct.type4_sme* }
%struct.type4_sme = type { i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32 }
%struct.ica_rsa_modexpo = type { i32, i32, i32, i32 }
%struct.type4_lme = type { i8*, i8*, i8*, %struct.TYPE_2__ }

@TYPE4_SME_FMT = common dso_local global i32 0, align 4
@TYPE4_TYPE_CODE = common dso_local global i8* null, align 8
@TYPE4_REQU_CODE = common dso_local global i8* null, align 8
@TYPE4_LME_FMT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_rsa_modexpo*)* @ICAMEX_msg_to_type4MEX_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICAMEX_msg_to_type4MEX_msg(%struct.zcrypt_device* %0, %struct.ap_message* %1, %struct.ica_rsa_modexpo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_device*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ica_rsa_modexpo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.type4_sme*, align 8
  %13 = alloca %struct.type4_lme*, align 8
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ica_rsa_modexpo* %2, %struct.ica_rsa_modexpo** %7, align 8
  %14 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %15 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp sle i32 %17, 128
  br i1 %18, label %19, label %66

19:                                               ; preds = %3
  %20 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %21 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %20, i32 0, i32 1
  %22 = load %struct.type4_sme*, %struct.type4_sme** %21, align 8
  store %struct.type4_sme* %22, %struct.type4_sme** %12, align 8
  %23 = load %struct.type4_sme*, %struct.type4_sme** %12, align 8
  %24 = call i32 @memset(%struct.type4_sme* %23, i32 0, i32 56)
  %25 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %26 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %25, i32 0, i32 0
  store i32 56, i32* %26, align 8
  %27 = load i32, i32* @TYPE4_SME_FMT, align 4
  %28 = load %struct.type4_sme*, %struct.type4_sme** %12, align 8
  %29 = getelementptr inbounds %struct.type4_sme, %struct.type4_sme* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.type4_sme*, %struct.type4_sme** %12, align 8
  %32 = getelementptr inbounds %struct.type4_sme, %struct.type4_sme* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 56, i32* %33, align 8
  %34 = load i8*, i8** @TYPE4_TYPE_CODE, align 8
  %35 = load %struct.type4_sme*, %struct.type4_sme** %12, align 8
  %36 = getelementptr inbounds %struct.type4_sme, %struct.type4_sme* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** @TYPE4_REQU_CODE, align 8
  %39 = load %struct.type4_sme*, %struct.type4_sme** %12, align 8
  %40 = getelementptr inbounds %struct.type4_sme, %struct.type4_sme* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load %struct.type4_sme*, %struct.type4_sme** %12, align 8
  %43 = getelementptr inbounds %struct.type4_sme, %struct.type4_sme* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8* %49, i8** %8, align 8
  %50 = load %struct.type4_sme*, %struct.type4_sme** %12, align 8
  %51 = getelementptr inbounds %struct.type4_sme, %struct.type4_sme* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8* %57, i8** %9, align 8
  %58 = load %struct.type4_sme*, %struct.type4_sme** %12, align 8
  %59 = getelementptr inbounds %struct.type4_sme, %struct.type4_sme* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8* %65, i8** %10, align 8
  br label %115

66:                                               ; preds = %3
  %67 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %68 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %67, i32 0, i32 1
  %69 = load %struct.type4_sme*, %struct.type4_sme** %68, align 8
  %70 = bitcast %struct.type4_sme* %69 to %struct.type4_lme*
  store %struct.type4_lme* %70, %struct.type4_lme** %13, align 8
  %71 = load %struct.type4_lme*, %struct.type4_lme** %13, align 8
  %72 = bitcast %struct.type4_lme* %71 to %struct.type4_sme*
  %73 = call i32 @memset(%struct.type4_sme* %72, i32 0, i32 56)
  %74 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %75 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %74, i32 0, i32 0
  store i32 56, i32* %75, align 8
  %76 = load i32, i32* @TYPE4_LME_FMT, align 4
  %77 = load %struct.type4_lme*, %struct.type4_lme** %13, align 8
  %78 = getelementptr inbounds %struct.type4_lme, %struct.type4_lme* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load %struct.type4_lme*, %struct.type4_lme** %13, align 8
  %81 = getelementptr inbounds %struct.type4_lme, %struct.type4_lme* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 56, i32* %82, align 8
  %83 = load i8*, i8** @TYPE4_TYPE_CODE, align 8
  %84 = load %struct.type4_lme*, %struct.type4_lme** %13, align 8
  %85 = getelementptr inbounds %struct.type4_lme, %struct.type4_lme* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i8* %83, i8** %86, align 8
  %87 = load i8*, i8** @TYPE4_REQU_CODE, align 8
  %88 = load %struct.type4_lme*, %struct.type4_lme** %13, align 8
  %89 = getelementptr inbounds %struct.type4_lme, %struct.type4_lme* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load %struct.type4_lme*, %struct.type4_lme** %13, align 8
  %92 = getelementptr inbounds %struct.type4_lme, %struct.type4_lme* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8* %98, i8** %8, align 8
  %99 = load %struct.type4_lme*, %struct.type4_lme** %13, align 8
  %100 = getelementptr inbounds %struct.type4_lme, %struct.type4_lme* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8* %106, i8** %9, align 8
  %107 = load %struct.type4_lme*, %struct.type4_lme** %13, align 8
  %108 = getelementptr inbounds %struct.type4_lme, %struct.type4_lme* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8* %114, i8** %10, align 8
  br label %115

115:                                              ; preds = %66, %19
  %116 = load i8*, i8** %8, align 8
  %117 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %118 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @copy_from_user(i8* %116, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %115
  %124 = load i8*, i8** %9, align 8
  %125 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %126 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i64 @copy_from_user(i8* %124, i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %123
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %134 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i64 @copy_from_user(i8* %132, i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131, %123, %115
  %140 = load i32, i32* @EFAULT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %143

142:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @memset(%struct.type4_sme*, i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
