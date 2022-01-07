; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.s3cmci_host = type { i32, i32, i64, i32, i32, i32 }

@S3C2410_SDICON = common dso_local global i64 0, align 8
@S3C2410_SDICON_SDIOIRQ = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK_SDIOIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @s3cmci_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3cmci_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.s3cmci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.s3cmci_host* %9, %struct.s3cmci_host** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %13 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @S3C2410_SDICON, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %20 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %23 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %87

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i32, i32* @S3C2410_SDICON_SDIOIRQ, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %35 = load i32, i32* @S3C2410_SDIIMSK_SDIOIRQ, align 4
  %36 = call i32 @enable_imask(%struct.s3cmci_host* %34, i32 %35)
  %37 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %38 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %30
  %42 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %43 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %48 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %50 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @enable_irq(i32 %51)
  br label %53

53:                                               ; preds = %46, %41, %30
  br label %79

54:                                               ; preds = %27
  %55 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %56 = load i32, i32* @S3C2410_SDIIMSK_SDIOIRQ, align 4
  %57 = call i32 @disable_imask(%struct.s3cmci_host* %55, i32 %56)
  %58 = load i32, i32* @S3C2410_SDICON_SDIOIRQ, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %63 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %54
  %67 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %68 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %73 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @disable_irq_nosync(i32 %74)
  %76 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %77 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %66, %54
  br label %79

79:                                               ; preds = %78, %53
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %82 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @S3C2410_SDICON, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %79, %26
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @local_irq_restore(i64 %88)
  %90 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %91 = call i32 @s3cmci_check_sdio_irq(%struct.s3cmci_host* %90)
  ret void
}

declare dso_local %struct.s3cmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @enable_imask(%struct.s3cmci_host*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_imask(%struct.s3cmci_host*, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @s3cmci_check_sdio_irq(%struct.s3cmci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
