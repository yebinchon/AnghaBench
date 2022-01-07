; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, {}* }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64)* @concat_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_unlock(%struct.mtd_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mtd_concat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %13)
  store %struct.mtd_concat* %14, %struct.mtd_concat** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %94

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %89, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %29 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %26
  %33 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %34 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %33, i32 0, i32 1
  %35 = load %struct.mtd_info**, %struct.mtd_info*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %35, i64 %37
  %39 = load %struct.mtd_info*, %struct.mtd_info** %38, align 8
  store %struct.mtd_info* %39, %struct.mtd_info** %11, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %32
  store i64 0, i64* %12, align 8
  %46 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %89

51:                                               ; preds = %32
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = sub nsw i64 %62, %63
  store i64 %64, i64* %12, align 8
  br label %67

65:                                               ; preds = %51
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %65, %59
  %68 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 1
  %70 = bitcast {}** %69 to i32 (%struct.mtd_info*, i64, i64)**
  %71 = load i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)** %70, align 8
  %72 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 %71(%struct.mtd_info* %72, i64 %73, i64 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %92

79:                                               ; preds = %67
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %7, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  store i64 0, i64* %6, align 8
  br label %89

89:                                               ; preds = %86, %45
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %26

92:                                               ; preds = %85, %78, %26
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %22
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
