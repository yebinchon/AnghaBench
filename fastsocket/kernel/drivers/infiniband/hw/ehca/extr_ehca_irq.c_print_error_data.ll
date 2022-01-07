; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_print_error_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_print_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ehca_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ehca_cq = type { i32 }

@ERROR_DATA_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"QP 0x%x (resource=%llx) has errors.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"CQ 0x%x (resource=%llx) has errors.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown error type: %llx on %s.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Error data is available: %llx.\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"EHCA ----- error data begin ---------------------------------------------------\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"resource=%llx\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"EHCA ----- error data end ----------------------------------------------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_shca*, i8*, i32*, i32)* @print_error_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error_data(%struct.ehca_shca* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ehca_shca*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ehca_qp*, align 8
  %12 = alloca %struct.ehca_cq*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ERROR_DATA_TYPE, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @EHCA_BMASK_GET(i32 %13, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %49 [
    i32 1, label %22
    i32 4, label %39
  ]

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.ehca_qp*
  store %struct.ehca_qp* %24, %struct.ehca_qp** %11, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %73

30:                                               ; preds = %22
  %31 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %32 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %31, i32 0, i32 0
  %33 = load %struct.ehca_qp*, %struct.ehca_qp** %11, align 8
  %34 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (%struct.TYPE_4__*, i8*, ...) @ehca_err(%struct.TYPE_4__* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %58

39:                                               ; preds = %4
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to %struct.ehca_cq*
  store %struct.ehca_cq* %41, %struct.ehca_cq** %12, align 8
  %42 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %43 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %42, i32 0, i32 0
  %44 = load %struct.ehca_cq*, %struct.ehca_cq** %12, align 8
  %45 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (%struct.TYPE_4__*, i8*, ...) @ehca_err(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  br label %58

49:                                               ; preds = %4
  %50 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %51 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %54 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.TYPE_4__*, i8*, ...) @ehca_err(%struct.TYPE_4__* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %49, %39, %30
  %59 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %60 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %59, i32 0, i32 0
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (%struct.TYPE_4__*, i8*, ...) @ehca_err(%struct.TYPE_4__* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %64 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %63, i32 0, i32 0
  %65 = call i32 (%struct.TYPE_4__*, i8*, ...) @ehca_err(%struct.TYPE_4__* %64, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @ehca_dmp(i32* %66, i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %71 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %70, i32 0, i32 0
  %72 = call i32 (%struct.TYPE_4__*, i8*, ...) @ehca_err(%struct.TYPE_4__* %71, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %58, %29
  ret void
}

declare dso_local i32 @EHCA_BMASK_GET(i32, i32) #1

declare dso_local i32 @ehca_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @ehca_dmp(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
