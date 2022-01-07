; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_hw_iowrite32_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_hw_iowrite32_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }

@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"0x%X 0x%X\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i8*, i64)* @carl9170_debugfs_hw_iowrite32_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_debugfs_hw_iowrite32_write(%struct.ar9170* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 22, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @E2BIG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %68

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %57

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = icmp sle i32 %33, 1048576
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp sge i32 %36, 2621440
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @EADDRNOTAVAIL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %57

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %57

48:                                               ; preds = %41
  %49 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @carl9170_write_reg(%struct.ar9170* %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %55, %45, %38, %29
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  br label %65

63:                                               ; preds = %57
  %64 = load i64, i64* %7, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i64 [ %62, %60 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %21, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @carl9170_write_reg(%struct.ar9170*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
