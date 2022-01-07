; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.alauda* }
%struct.alauda = type { i32 }

@EUCLEAN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* @alauda_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.alauda*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i32], align 16
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 1
  %19 = load %struct.alauda*, %struct.alauda** %18, align 8
  store %struct.alauda* %19, %struct.alauda** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.alauda*, %struct.alauda** %12, align 8
  %22 = getelementptr inbounds %struct.alauda, %struct.alauda* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.alauda*, %struct.alauda** %12, align 8
  %29 = getelementptr inbounds %struct.alauda, %struct.alauda* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %27, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26, %5
  %35 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @alauda_bounce_read(%struct.mtd_info* %35, i32 %36, i64 %37, i64* %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %89

41:                                               ; preds = %26
  %42 = load i64, i64* %9, align 8
  %43 = load i64*, i64** %10, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %57, %41
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %44
  %48 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %52 = call i32 @alauda_read_page(%struct.mtd_info* %48, i32 %49, i32* %50, i32* %51, i32* %14, i32* %15)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %89

57:                                               ; preds = %47
  %58 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 %60
  store i32* %62, i32** %11, align 8
  %63 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %9, align 8
  br label %44

75:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @EUCLEAN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @EBADMSG, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %55, %34
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @alauda_bounce_read(%struct.mtd_info*, i32, i64, i64*, i32*) #1

declare dso_local i32 @alauda_read_page(%struct.mtd_info*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
