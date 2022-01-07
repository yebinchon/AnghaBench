; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_block_isbad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_block_isbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { {}*, i64 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64)* @concat_block_isbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_block_isbad(%struct.mtd_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtd_concat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %10)
  store %struct.mtd_concat* %11, %struct.mtd_concat** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %13 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %12, i32 0, i32 1
  %14 = load %struct.mtd_info**, %struct.mtd_info*** %13, align 8
  %15 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %14, i64 0
  %16 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.mtd_info*, i64)**
  %19 = load i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)** %18, align 8
  %20 = icmp ne i32 (%struct.mtd_info*, i64)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %71

32:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %66, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %36 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %41 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %40, i32 0, i32 1
  %42 = load %struct.mtd_info**, %struct.mtd_info*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %42, i64 %44
  %46 = load %struct.mtd_info*, %struct.mtd_info** %45, align 8
  store %struct.mtd_info* %46, %struct.mtd_info** %9, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %39
  %53 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %66

58:                                               ; preds = %39
  %59 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.mtd_info*, i64)**
  %62 = load i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)** %61, align 8
  %63 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 %62(%struct.mtd_info* %63, i64 %64)
  store i32 %65, i32* %8, align 4
  br label %69

66:                                               ; preds = %52
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %33

69:                                               ; preds = %58, %33
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %29, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
