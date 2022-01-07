; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_smem_clr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_smem_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BFA_FALSE = common dso_local global i64 0, align 8
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc_s*, i32, i32)* @bfa_ioc_smem_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_smem_clr(%struct.bfa_ioc_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @PSS_SMEM_PGNUM(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @PSS_SMEM_PGOFF(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @bfa_trc(%struct.bfa_ioc_s* %20, i32 %21)
  %23 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @bfa_trc(%struct.bfa_ioc_s* %23, i32 %24)
  %26 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @bfa_trc(%struct.bfa_ioc_s* %26, i32 %27)
  %29 = load i64, i64* @BFA_FALSE, align 8
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @bfa_ioc_sem_get(i32 %33)
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %38 = call i32 @bfa_trc(%struct.bfa_ioc_s* %37, i32 0)
  %39 = load i32, i32* @BFA_STATUS_FAILED, align 4
  store i32 %39, i32* %4, align 4
  br label %111

40:                                               ; preds = %3
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @writel(i32 %41, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @bfa_trc(%struct.bfa_ioc_s* %51, i32 %52)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %83, %40
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @bfa_mem_write(i32 %62, i32 %63, i32 0)
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @PSS_SMEM_PGOFF(i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %58
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %78 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @writel(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %73, %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %54

86:                                               ; preds = %54
  %87 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %88 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PSS_SMEM_PGNUM(i32 %90, i32 0)
  %92 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %93 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @writel(i32 %91, i32 %95)
  %97 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %98 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @readl(i32 %100)
  %102 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %103 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @writel(i32 1, i32 %105)
  %107 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @bfa_trc(%struct.bfa_ioc_s* %107, i32 %108)
  %110 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %86, %36
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @PSS_SMEM_PGNUM(i32, i32) #1

declare dso_local i32 @PSS_SMEM_PGOFF(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i64 @bfa_ioc_sem_get(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_mem_write(i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
