; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_smem_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_smem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc*, i8*, i32, i32)* @bfa_nw_ioc_smem_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_nw_ioc_smem_read(%struct.bfa_ioc* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfa_ioc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %15, align 8
  %18 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @PSS_SMEM_PGNUM(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @PSS_SMEM_PGOFF(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %27 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @bfa_nw_ioc_sem_get(i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %107

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %36 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writel(i32 %34, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %83, %33
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %52 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %50, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @readl(i32 %56)
  %58 = call i32 @swab32(i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
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

73:                                               ; preds = %48
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %78 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @writel(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %73, %48
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %44

86:                                               ; preds = %44
  %87 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %88 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @PSS_SMEM_PGNUM(i32 %90, i32 0)
  %92 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %93 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @writel(i32 %91, i32 %95)
  %97 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %98 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @readl(i32 %100)
  %102 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %103 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @writel(i32 1, i32 %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %86, %32
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @PSS_SMEM_PGNUM(i32, i32) #1

declare dso_local i32 @PSS_SMEM_PGOFF(i32) #1

declare dso_local i64 @bfa_nw_ioc_sem_get(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
