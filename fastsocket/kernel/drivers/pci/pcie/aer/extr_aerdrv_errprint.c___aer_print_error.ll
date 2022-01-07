; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_errprint.c___aer_print_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_errprint.c___aer_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aer_err_info = type { i32, i32, i64, i32 }

@AER_CORRECTABLE = common dso_local global i64 0, align 8
@aer_correctable_error_string = common dso_local global i8** null, align 8
@aer_uncorrectable_error_string = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"   [%2d] %-22s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" (First)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"   [%2d] Unknown Error Bit%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.aer_err_info*)* @__aer_print_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__aer_print_error(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aer_err_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %4, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %9 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %12 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %89, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %92

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %89

26:                                               ; preds = %19
  %27 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %28 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AER_CORRECTABLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = load i8**, i8*** @aer_correctable_error_string, align 8
  %35 = call i32 @ARRAY_SIZE(i8** %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8**, i8*** @aer_correctable_error_string, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i8* [ %42, %37 ], [ null, %43 ]
  store i8* %45, i8** %7, align 8
  br label %60

46:                                               ; preds = %26
  %47 = load i32, i32* %5, align 4
  %48 = load i8**, i8*** @aer_uncorrectable_error_string, align 8
  %49 = call i32 @ARRAY_SIZE(i8** %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i8**, i8*** @aer_uncorrectable_error_string, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  br label %58

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i8* [ %56, %51 ], [ null, %57 ]
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %58, %44
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %5, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %69 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %75 = call i32 (i32*, i8*, i32, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %66, i8* %67, i8* %74)
  br label %88

76:                                               ; preds = %60
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %81 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %87 = call i32 (i32*, i8*, i32, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %79, i8* %86)
  br label %88

88:                                               ; preds = %76, %63
  br label %89

89:                                               ; preds = %88, %25
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %16

92:                                               ; preds = %16
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
