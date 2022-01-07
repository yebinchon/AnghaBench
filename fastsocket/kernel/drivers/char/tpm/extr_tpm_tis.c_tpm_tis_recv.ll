; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to read header\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to read remainder of result\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Error left over data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_tis_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_recv(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %89

16:                                               ; preds = %3
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @recv_data(%struct.tpm_chip* %17, i32* %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %89

30:                                               ; preds = %16
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %89

42:                                               ; preds = %30
  %43 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @recv_data(%struct.tpm_chip* %43, i32* %46, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %59 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ETIME, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %89

64:                                               ; preds = %42
  %65 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %66 = load i32, i32* @TPM_STS_VALID, align 4
  %67 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %68 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %72 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = call i32 @wait_for_tpm_stat(%struct.tpm_chip* %65, i32 %66, i32 %70, i32* %73)
  %75 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %76 = call i32 @tpm_tis_status(%struct.tpm_chip* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %64
  %82 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %83 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %89

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88, %81, %57, %39, %25, %13
  %90 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %91 = call i32 @tpm_tis_ready(%struct.tpm_chip* %90)
  %92 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %93 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %94 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @release_locality(%struct.tpm_chip* %92, i32 %96, i32 0)
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @recv_data(%struct.tpm_chip*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wait_for_tpm_stat(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i32 @tpm_tis_status(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_tis_ready(%struct.tpm_chip*) #1

declare dso_local i32 @release_locality(%struct.tpm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
