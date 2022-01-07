; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_block_markbad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_block_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { {}*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64)* @concat_block_markbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_block_markbad(%struct.mtd_info* %0, i64 %1) #0 {
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
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %15 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %14, i32 0, i32 1
  %16 = load %struct.mtd_info**, %struct.mtd_info*** %15, align 8
  %17 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %16, i64 0
  %18 = load %struct.mtd_info*, %struct.mtd_info** %17, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.mtd_info*, i64)**
  %21 = load i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)** %20, align 8
  %22 = icmp ne i32 (%struct.mtd_info*, i64)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %81

33:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %76, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %37 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %34
  %41 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %42 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %41, i32 0, i32 1
  %43 = load %struct.mtd_info**, %struct.mtd_info*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %43, i64 %45
  %47 = load %struct.mtd_info*, %struct.mtd_info** %46, align 8
  store %struct.mtd_info* %47, %struct.mtd_info** %9, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %5, align 8
  br label %76

59:                                               ; preds = %40
  %60 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.mtd_info*, i64)**
  %63 = load i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)** %62, align 8
  %64 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 %63(%struct.mtd_info* %64, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %59
  %70 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %59
  br label %79

76:                                               ; preds = %53
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %34

79:                                               ; preds = %75, %34
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %30, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
