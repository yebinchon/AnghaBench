; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_show_pcrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_show_pcrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tpm_chip = type { i32 }

@TPM_DIGEST_SIZE = common dso_local global i32 0, align 4
@TPM_CAP_PROP_PCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"attempting to determine the number of PCRS\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PCR-%02d: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_show_pcrs(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.tpm_chip*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %15, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call %struct.tpm_chip* @dev_get_drvdata(%struct.device* %23)
  store %struct.tpm_chip* %24, %struct.tpm_chip** %16, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* @TPM_CAP_PROP_PCR, align 4
  %27 = call i32 @tpm_getcap(%struct.device* %25, i32 %26, %struct.TYPE_3__* %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %86

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %76, %31
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load %struct.tpm_chip*, %struct.tpm_chip** %16, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @__tpm_pcr_read(%struct.tpm_chip* %40, i32 %41, i32* %21)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %79

46:                                               ; preds = %39
  %47 = load i8*, i8** %15, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %15, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %15, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %67, %46
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i8*, i8** %15, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %21, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i8*, i8** %15, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %15, align 8
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i8*, i8** %15, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %15, align 8
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %35

79:                                               ; preds = %45, %35
  %80 = load i8*, i8** %15, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %86

86:                                               ; preds = %79, %30
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tpm_chip* @dev_get_drvdata(%struct.device*) #2

declare dso_local i32 @tpm_getcap(%struct.device*, i32, %struct.TYPE_3__*, i8*) #2

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i32 @__tpm_pcr_read(%struct.tpm_chip*, i32, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
