; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_request_locality.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }

@TPM_ACCESS_REQUEST_USE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @request_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_locality(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @check_locality(%struct.tpm_chip* %8, i32 %9)
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = load i32, i32* @TPM_ACCESS_REQUEST_USE, align 4
  %16 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %17 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @TPM_ACCESS(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @iowrite8(i32 %15, i64 %22)
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %14
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %31 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @check_locality(%struct.tpm_chip* %34, i32 %35)
  %37 = icmp sge i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %40 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @wait_event_interruptible_timeout(i32 %33, i32 %38, i64 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %3, align 4
  br label %73

48:                                               ; preds = %29
  br label %72

49:                                               ; preds = %14
  %50 = load i64, i64* @jiffies, align 8
  %51 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %52 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %50, %54
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %66, %49
  %57 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @check_locality(%struct.tpm_chip* %57, i32 %58)
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %3, align 4
  br label %73

63:                                               ; preds = %56
  %64 = load i32, i32* @TPM_TIMEOUT, align 4
  %65 = call i32 @msleep(i32 %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @time_before(i64 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %56, label %71

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %48
  store i32 -1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %61, %46, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @check_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i64 @TPM_ACCESS(i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
