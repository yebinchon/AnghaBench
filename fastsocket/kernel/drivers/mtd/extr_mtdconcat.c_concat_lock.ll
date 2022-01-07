; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, {}* }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64)* @concat_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_lock(%struct.mtd_info* %0, i64 %1, i64 %2) #0 {
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
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %96

27:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %91, %27
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %31 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %28
  %35 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %36 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %35, i32 0, i32 1
  %37 = load %struct.mtd_info**, %struct.mtd_info*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %37, i64 %39
  %41 = load %struct.mtd_info*, %struct.mtd_info** %40, align 8
  store %struct.mtd_info* %41, %struct.mtd_info** %11, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  store i64 0, i64* %12, align 8
  %48 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %91

53:                                               ; preds = %34
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %12, align 8
  br label %69

67:                                               ; preds = %53
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %67, %61
  %70 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 1
  %72 = bitcast {}** %71 to i32 (%struct.mtd_info*, i64, i64)**
  %73 = load i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)** %72, align 8
  %74 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 %73(%struct.mtd_info* %74, i64 %75, i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %94

81:                                               ; preds = %69
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %7, align 8
  %84 = sub nsw i64 %83, %82
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  store i64 0, i64* %6, align 8
  br label %91

91:                                               ; preds = %88, %47
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %28

94:                                               ; preds = %87, %80, %28
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %24
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
