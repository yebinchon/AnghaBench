; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdcore.c_default_mtd_writev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdcore.c_default_mtd_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 (%struct.mtd_info*, i64, i64, i64*, i32)* }
%struct.kvec = type { i64, i32 }

@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_mtd_writev(%struct.mtd_info* %0, %struct.kvec* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load i32 (%struct.mtd_info*, i64, i64, i64*, i32)*, i32 (%struct.mtd_info*, i64, i64, i64*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.mtd_info*, i64, i64, i64*, i32)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EROFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  br label %78

22:                                               ; preds = %5
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %74, %22
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %23
  %28 = load %struct.kvec*, %struct.kvec** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %28, i64 %29
  %31 = getelementptr inbounds %struct.kvec, %struct.kvec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %74

35:                                               ; preds = %27
  %36 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 0
  %38 = load i32 (%struct.mtd_info*, i64, i64, i64*, i32)*, i32 (%struct.mtd_info*, i64, i64, i64*, i32)** %37, align 8
  %39 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.kvec*, %struct.kvec** %7, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i64 %42
  %44 = getelementptr inbounds %struct.kvec, %struct.kvec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.kvec*, %struct.kvec** %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %46, i64 %47
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %38(%struct.mtd_info* %39, i64 %40, i64 %45, i64* %13, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %12, align 8
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %35
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.kvec*, %struct.kvec** %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i64 %60
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %35
  br label %77

66:                                               ; preds = %57
  %67 = load %struct.kvec*, %struct.kvec** %7, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i64 %68
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %66, %34
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %23

77:                                               ; preds = %65, %23
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i64*, i64** %10, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* %12, align 8
  %83 = load i64*, i64** %10, align 8
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %14, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
