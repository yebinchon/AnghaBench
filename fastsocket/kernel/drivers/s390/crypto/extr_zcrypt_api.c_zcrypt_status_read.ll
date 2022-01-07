; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_status_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_status_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"\0Azcrypt version: %d.%d.%d\0A\00", align 1
@ZCRYPT_VERSION = common dso_local global i32 0, align 4
@ZCRYPT_RELEASE = common dso_local global i32 0, align 4
@ZCRYPT_VARIANT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cryptographic domain: %d\0A\00", align 1
@ap_domain_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Total device count: %d\0A\00", align 1
@zcrypt_device_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"PCICA count: %d\0A\00", align 1
@ZCRYPT_PCICA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"PCICC count: %d\0A\00", align 1
@ZCRYPT_PCICC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"PCIXCC MCL2 count: %d\0A\00", align 1
@ZCRYPT_PCIXCC_MCL2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"PCIXCC MCL3 count: %d\0A\00", align 1
@ZCRYPT_PCIXCC_MCL3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"CEX2C count: %d\0A\00", align 1
@ZCRYPT_CEX2C = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"CEX2A count: %d\0A\00", align 1
@ZCRYPT_CEX2A = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"CEX3C count: %d\0A\00", align 1
@ZCRYPT_CEX3C = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"CEX3A count: %d\0A\00", align 1
@ZCRYPT_CEX3A = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"requestq count: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"pendingq count: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Total open handles: %d\0A\0A\00", align 1
@zcrypt_open_count = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [94 x i8] c"Online devices: 1=PCICA 2=PCICC 3=PCIXCC(MCL2) 4=PCIXCC(MCL3) 5=CEX2C 6=CEX2A 7=CEX3C 8=CEX3A\00", align 1
@AP_DEVICES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"Waiting work element counts\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"Per-device successfully completed request counts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @zcrypt_status_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_status_read(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2000
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %14, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i32, i32* @ZCRYPT_VERSION, align 4
  %22 = load i32, i32* @ZCRYPT_RELEASE, align 4
  %23 = load i32, i32* @ZCRYPT_VARIANT, align 4
  %24 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* @ap_domain_index, align 4
  %34 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %14, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i32, i32* @zcrypt_device_count, align 4
  %44 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* @ZCRYPT_PCICA, align 4
  %54 = call i32 @zcrypt_count_type(i32 %53)
  %55 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* @ZCRYPT_PCICC, align 4
  %65 = call i32 @zcrypt_count_type(i32 %64)
  %66 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* @ZCRYPT_PCIXCC_MCL2, align 4
  %76 = call i32 @zcrypt_count_type(i32 %75)
  %77 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* @ZCRYPT_PCIXCC_MCL3, align 4
  %87 = call i32 @zcrypt_count_type(i32 %86)
  %88 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* @ZCRYPT_CEX2C, align 4
  %98 = call i32 @zcrypt_count_type(i32 %97)
  %99 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %14, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i32, i32* @ZCRYPT_CEX2A, align 4
  %109 = call i32 @zcrypt_count_type(i32 %108)
  %110 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %14, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* @ZCRYPT_CEX3C, align 4
  %120 = call i32 @zcrypt_count_type(i32 %119)
  %121 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %14, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i32, i32* @ZCRYPT_CEX3A, align 4
  %131 = call i32 @zcrypt_count_type(i32 %130)
  %132 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %14, align 4
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = call i32 (...) @zcrypt_requestq_count()
  %142 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %14, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = call i32 (...) @zcrypt_pendingq_count()
  %152 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %14, align 4
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = call i32 @atomic_read(i32* @zcrypt_open_count)
  %162 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %14, align 4
  %167 = load i8*, i8** %13, align 8
  %168 = call i32 @zcrypt_status_mask(i8* %167)
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8*, i8** %13, align 8
  %174 = load i32, i32* @AP_DEVICES, align 4
  %175 = call i64 @sprinthx(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.14, i64 0, i64 0), i8* %172, i8* %173, i32 %174)
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %14, align 4
  %180 = load i8*, i8** %13, align 8
  %181 = call i32 @zcrypt_qdepth_mask(i8* %180)
  %182 = load i8*, i8** %7, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8*, i8** %13, align 8
  %187 = load i32, i32* @AP_DEVICES, align 4
  %188 = call i64 @sprinthx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %185, i8* %186, i32 %187)
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %14, align 4
  %193 = load i8*, i8** %13, align 8
  %194 = bitcast i8* %193 to i32*
  %195 = call i32 @zcrypt_perdev_reqcnt(i32* %194)
  %196 = load i8*, i8** %7, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8*, i8** %13, align 8
  %201 = bitcast i8* %200 to i32*
  %202 = load i32, i32* @AP_DEVICES, align 4
  %203 = call i64 @sprinthx4(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i8* %199, i32* %201, i32 %202)
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %14, align 4
  %208 = load i32*, i32** %11, align 8
  store i32 1, i32* %208, align 4
  %209 = load i8*, i8** %13, align 8
  %210 = load i32, i32* @AP_DEVICES, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 4
  %213 = trunc i64 %212 to i32
  %214 = call i32 @memset(i8* %209, i32 0, i32 %213)
  %215 = load i32, i32* %14, align 4
  ret i32 %215
}

declare dso_local i64 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @zcrypt_count_type(i32) #1

declare dso_local i32 @zcrypt_requestq_count(...) #1

declare dso_local i32 @zcrypt_pendingq_count(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zcrypt_status_mask(i8*) #1

declare dso_local i64 @sprinthx(i8*, i8*, i8*, i32) #1

declare dso_local i32 @zcrypt_qdepth_mask(i8*) #1

declare dso_local i32 @zcrypt_perdev_reqcnt(i32*) #1

declare dso_local i64 @sprinthx4(i8*, i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
