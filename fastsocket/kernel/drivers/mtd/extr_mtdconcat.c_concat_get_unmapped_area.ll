; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, {}* }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mtd_info*, i64, i64, i64)* @concat_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @concat_get_unmapped_area(%struct.mtd_info* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtd_concat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %14 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %13)
  store %struct.mtd_concat* %14, %struct.mtd_concat** %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %68, %4
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.mtd_concat*, %struct.mtd_concat** %10, align 8
  %18 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %15
  %22 = load %struct.mtd_concat*, %struct.mtd_concat** %10, align 8
  %23 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %22, i32 0, i32 1
  %24 = load %struct.mtd_info**, %struct.mtd_info*** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %24, i64 %26
  %28 = load %struct.mtd_info*, %struct.mtd_info** %27, align 8
  store %struct.mtd_info* %28, %struct.mtd_info** %12, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %68

40:                                               ; preds = %21
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %74

51:                                               ; preds = %40
  %52 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 1
  %54 = bitcast {}** %53 to i64 (%struct.mtd_info*, i64, i64, i64)**
  %55 = load i64 (%struct.mtd_info*, i64, i64, i64)*, i64 (%struct.mtd_info*, i64, i64, i64)** %54, align 8
  %56 = icmp ne i64 (%struct.mtd_info*, i64, i64, i64)* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 1
  %60 = bitcast {}** %59 to i64 (%struct.mtd_info*, i64, i64, i64)**
  %61 = load i64 (%struct.mtd_info*, i64, i64, i64)*, i64 (%struct.mtd_info*, i64, i64, i64)** %60, align 8
  %62 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i64 %61(%struct.mtd_info* %62, i64 %63, i64 %64, i64 %65)
  store i64 %66, i64* %5, align 8
  br label %74

67:                                               ; preds = %51
  br label %71

68:                                               ; preds = %34
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %15

71:                                               ; preds = %67, %15
  %72 = load i64, i64* @ENOSYS, align 8
  %73 = sub nsw i64 0, %72
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %71, %57, %48
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
