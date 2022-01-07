; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_set_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i32, i32, i32, i32, i64 }
%struct.mmc_ios = type { i64 }

@S3C2410_SDIPRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3cmci_host*, %struct.mmc_ios*)* @s3cmci_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_set_clk(%struct.s3cmci_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 255
  br i1 %8, label %9, label %35

9:                                                ; preds = %6
  %10 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %11 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %14 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = mul nsw i32 %15, %17
  %19 = sdiv i32 %12, %18
  %20 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %21 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %23 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  br label %35

31:                                               ; preds = %9
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %30, %6
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 255
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 255, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %42 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %44 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %47 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @S3C2410_SDIPRE, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %58 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %39
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
