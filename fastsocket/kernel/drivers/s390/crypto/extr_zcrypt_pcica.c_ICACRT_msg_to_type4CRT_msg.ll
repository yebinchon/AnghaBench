; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcica.c_ICACRT_msg_to_type4CRT_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcica.c_ICACRT_msg_to_type4CRT_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i32 }
%struct.ap_message = type { i32, %struct.type4_scr* }
%struct.type4_scr = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8* }
%struct.ica_rsa_modexpo_crt = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.type4_lcr = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }

@TYPE4_TYPE_CODE = common dso_local global i8* null, align 8
@TYPE4_REQU_CODE = common dso_local global i8* null, align 8
@TYPE4_SCR_FMT = common dso_local global i32 0, align 4
@TYPE4_LCR_FMT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_rsa_modexpo_crt*)* @ICACRT_msg_to_type4CRT_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICACRT_msg_to_type4CRT_msg(%struct.zcrypt_device* %0, %struct.ap_message* %1, %struct.ica_rsa_modexpo_crt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_device*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ica_rsa_modexpo_crt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.type4_scr*, align 8
  %18 = alloca %struct.type4_lcr*, align 8
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ica_rsa_modexpo_crt* %2, %struct.ica_rsa_modexpo_crt** %7, align 8
  %19 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %20 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %14, align 4
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %25, 8
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp sle i32 %27, 128
  br i1 %28, label %29, label %100

29:                                               ; preds = %3
  %30 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %31 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %30, i32 0, i32 1
  %32 = load %struct.type4_scr*, %struct.type4_scr** %31, align 8
  store %struct.type4_scr* %32, %struct.type4_scr** %17, align 8
  %33 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %34 = call i32 @memset(%struct.type4_scr* %33, i32 0, i32 72)
  %35 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %36 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %35, i32 0, i32 0
  store i32 72, i32* %36, align 8
  %37 = load i8*, i8** @TYPE4_TYPE_CODE, align 8
  %38 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %39 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** @TYPE4_REQU_CODE, align 8
  %42 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %43 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* @TYPE4_SCR_FMT, align 4
  %46 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %47 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %50 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 72, i32* %51, align 8
  %52 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %53 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8* %59, i8** %8, align 8
  %60 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %61 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8* %67, i8** %9, align 8
  %68 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %69 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8* %75, i8** %10, align 8
  %76 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %77 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8* %83, i8** %11, align 8
  %84 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %85 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8* %91, i8** %12, align 8
  %92 = load %struct.type4_scr*, %struct.type4_scr** %17, align 8
  %93 = getelementptr inbounds %struct.type4_scr, %struct.type4_scr* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 0, %97
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8* %99, i8** %13, align 8
  br label %173

100:                                              ; preds = %3
  %101 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %102 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %101, i32 0, i32 1
  %103 = load %struct.type4_scr*, %struct.type4_scr** %102, align 8
  %104 = bitcast %struct.type4_scr* %103 to %struct.type4_lcr*
  store %struct.type4_lcr* %104, %struct.type4_lcr** %18, align 8
  %105 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %106 = bitcast %struct.type4_lcr* %105 to %struct.type4_scr*
  %107 = call i32 @memset(%struct.type4_scr* %106, i32 0, i32 72)
  %108 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %109 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %108, i32 0, i32 0
  store i32 72, i32* %109, align 8
  %110 = load i8*, i8** @TYPE4_TYPE_CODE, align 8
  %111 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %112 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  store i8* %110, i8** %113, align 8
  %114 = load i8*, i8** @TYPE4_REQU_CODE, align 8
  %115 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %116 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  %118 = load i32, i32* @TYPE4_LCR_FMT, align 4
  %119 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %120 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %123 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 72, i32* %124, align 8
  %125 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %126 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8* %132, i8** %8, align 8
  %133 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %134 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8* %140, i8** %9, align 8
  %141 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %142 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 0, %146
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8* %148, i8** %10, align 8
  %149 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %150 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8* %156, i8** %11, align 8
  %157 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %158 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 0, %162
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8* %164, i8** %12, align 8
  %165 = load %struct.type4_lcr*, %struct.type4_lcr** %18, align 8
  %166 = getelementptr inbounds %struct.type4_lcr, %struct.type4_lcr* %165, i32 0, i32 5
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = sub i64 0, %170
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  store i8* %172, i8** %13, align 8
  br label %173

173:                                              ; preds = %100, %29
  %174 = load i8*, i8** %8, align 8
  %175 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %176 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %16, align 4
  %179 = call i64 @copy_from_user(i8* %174, i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %221, label %181

181:                                              ; preds = %173
  %182 = load i8*, i8** %9, align 8
  %183 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %184 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %15, align 4
  %187 = call i64 @copy_from_user(i8* %182, i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %221, label %189

189:                                              ; preds = %181
  %190 = load i8*, i8** %10, align 8
  %191 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %192 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %16, align 4
  %195 = call i64 @copy_from_user(i8* %190, i32 %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %221, label %197

197:                                              ; preds = %189
  %198 = load i8*, i8** %11, align 8
  %199 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %200 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %15, align 4
  %203 = call i64 @copy_from_user(i8* %198, i32 %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %221, label %205

205:                                              ; preds = %197
  %206 = load i8*, i8** %12, align 8
  %207 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %208 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %16, align 4
  %211 = call i64 @copy_from_user(i8* %206, i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %205
  %214 = load i8*, i8** %13, align 8
  %215 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %216 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i64 @copy_from_user(i8* %214, i32 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %213, %205, %197, %189, %181, %173
  %222 = load i32, i32* @EFAULT, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %4, align 4
  br label %225

224:                                              ; preds = %213
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %221
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @memset(%struct.type4_scr*, i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
