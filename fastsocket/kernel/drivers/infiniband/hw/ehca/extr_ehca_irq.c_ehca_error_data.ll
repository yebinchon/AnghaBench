; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_ehca_error_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_ehca_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate rblock memory.\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@H_R_STATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"No error data is available: %llx.\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@ERROR_DATA_LENGTH = common dso_local global i32 0, align 4
@EHCA_PAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Error data could not be fetched: %llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_error_data(%struct.ehca_shca* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ehca_shca*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i32* @ehca_alloc_fw_ctrlblock(i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %17 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @ehca_err(i32* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @ENOMEM, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %7, align 8
  br label %66

21:                                               ; preds = %3
  %22 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %23 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @hipz_h_error_data(i32 %24, i32 %25, i32* %26, i64* %9)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @H_R_STATE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %33 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32*, i8*, ...) @ehca_err(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %63

36:                                               ; preds = %21
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @H_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32, i32* @ERROR_DATA_LENGTH, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @EHCA_BMASK_GET(i32 %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @EHCA_PAGESIZE, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @EHCA_PAGESIZE, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @print_error_data(%struct.ehca_shca* %52, i8* %53, i32* %54, i32 %55)
  br label %62

57:                                               ; preds = %36
  %58 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %59 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %58, i32 0, i32 0
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32*, i8*, ...) @ehca_err(i32* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @ehca_free_fw_ctrlblock(i32* %64)
  br label %66

66:                                               ; preds = %63, %15
  %67 = load i64, i64* %7, align 8
  %68 = trunc i64 %67 to i32
  ret i32 %68
}

declare dso_local i32* @ehca_alloc_fw_ctrlblock(i32) #1

declare dso_local i32 @ehca_err(i32*, i8*, ...) #1

declare dso_local i64 @hipz_h_error_data(i32, i32, i32*, i64*) #1

declare dso_local i32 @EHCA_BMASK_GET(i32, i32) #1

declare dso_local i32 @print_error_data(%struct.ehca_shca*, i8*, i32*, i32) #1

declare dso_local i32 @ehca_free_fw_ctrlblock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
