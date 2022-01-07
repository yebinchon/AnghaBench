; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_mmc_sdio_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_mmc_sdio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.sdio_func** }
%struct.sdio_func = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.TYPE_5__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_sdio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_resume(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca %struct.dev_pm_ops*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %8 = icmp ne %struct.mmc_host* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %20 = call i32 @mmc_claim_host(%struct.mmc_host* %19)
  %21 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %22 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @mmc_sdio_init_card(%struct.mmc_host* %21, i32 %24, %struct.TYPE_6__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %30 = call i32 @mmc_release_host(%struct.mmc_host* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %80, %1
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %35, %40
  br label %42

42:                                               ; preds = %34, %31
  %43 = phi i1 [ false, %31 ], [ %41, %34 ]
  br i1 %43, label %44, label %83

44:                                               ; preds = %42
  %45 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %46 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.sdio_func**, %struct.sdio_func*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sdio_func*, %struct.sdio_func** %49, i64 %51
  %53 = load %struct.sdio_func*, %struct.sdio_func** %52, align 8
  store %struct.sdio_func* %53, %struct.sdio_func** %5, align 8
  %54 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %55 = icmp ne %struct.sdio_func* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %44
  %57 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %58 = call i64 @sdio_func_present(%struct.sdio_func* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %62 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %68 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %71, align 8
  store %struct.dev_pm_ops* %72, %struct.dev_pm_ops** %6, align 8
  %73 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %74 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %74, align 8
  %76 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %77 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %76, i32 0, i32 0
  %78 = call i32 %75(%struct.TYPE_5__* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %66, %60, %56, %44
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %31

83:                                               ; preds = %42
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_sdio_init_card(%struct.mmc_host*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i64 @sdio_func_present(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
