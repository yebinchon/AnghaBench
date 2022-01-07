; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_error_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate rblock memory.\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@ERROR_DATA_TYPE = common dso_local global i32 0, align 4
@H_R_STATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"No error data available: %llX.\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Error data could not be fetched: %llX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehea_error_data(%struct.ehea_adapter* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ehea_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @get_zeroed_page(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %61

20:                                               ; preds = %4
  %21 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @ehea_h_error_data(i32 %23, i32 %24, i32* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @H_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %20
  %31 = load i32, i32* @ERROR_DATA_TYPE, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @EHEA_BMASK_GET(i32 %31, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 6
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 12
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @print_error_data(i32* %44)
  br label %57

46:                                               ; preds = %20
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @H_R_STATE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32*, i32** %10, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = call i32 @free_page(i64 %59)
  br label %61

61:                                               ; preds = %57, %18
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_error(i8*, ...) #1

declare dso_local i64 @ehea_h_error_data(i32, i32, i32*) #1

declare dso_local i32 @EHEA_BMASK_GET(i32, i32) #1

declare dso_local i32 @print_error_data(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
