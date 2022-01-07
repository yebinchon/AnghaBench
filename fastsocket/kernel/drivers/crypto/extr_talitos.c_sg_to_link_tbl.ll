; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_sg_to_link_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_sg_to_link_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.talitos_ptr = type { i64, i8* }

@DESC_PTR_LNKTBL_RETURN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, %struct.talitos_ptr*)* @sg_to_link_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_to_link_tbl(%struct.scatterlist* %0, i32 %1, i32 %2, %struct.talitos_ptr* %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.talitos_ptr*, align 8
  %9 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.talitos_ptr* %3, %struct.talitos_ptr** %8, align 8
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %15, %4
  %12 = load i32, i32* %9, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %18 = call i32 @sg_dma_address(%struct.scatterlist* %17)
  %19 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %16, i32 %18)
  %20 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %21 = call i32 @sg_dma_len(%struct.scatterlist* %20)
  %22 = call i8* @cpu_to_be16(i32 %21)
  %23 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %24 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %26 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %28 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %27, i32 1
  store %struct.talitos_ptr* %28, %struct.talitos_ptr** %8, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %30 = call i32 @sg_dma_len(%struct.scatterlist* %29)
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %34 = call %struct.scatterlist* @scatterwalk_sg_next(%struct.scatterlist* %33)
  store %struct.scatterlist* %34, %struct.scatterlist** %5, align 8
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %37 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %36, i32 -1
  store %struct.talitos_ptr* %37, %struct.talitos_ptr** %8, align 8
  br label %38

38:                                               ; preds = %46, %35
  %39 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %40 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @be16_to_cpu(i8* %41)
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp sle i32 %42, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %38
  %47 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %48 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @be16_to_cpu(i8* %49)
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %54 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %53, i32 0, i32 1
  store i8* null, i8** %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %58 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %57, i32 -1
  store %struct.talitos_ptr* %58, %struct.talitos_ptr** %8, align 8
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %61 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @be16_to_cpu(i8* %62)
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i8* @cpu_to_be16(i32 %65)
  %67 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %68 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @DESC_PTR_LNKTBL_RETURN, align 8
  %70 = load %struct.talitos_ptr*, %struct.talitos_ptr** %8, align 8
  %71 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @to_talitos_ptr(%struct.talitos_ptr*, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @scatterwalk_sg_next(%struct.scatterlist*) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
