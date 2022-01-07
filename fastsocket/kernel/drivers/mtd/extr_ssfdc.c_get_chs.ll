; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ssfdc.c_get_chs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ssfdc.c_get_chs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i16, i8, i8 }

@chs_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i16*, i8*, i8*)* @get_chs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chs(i64 %0, i16* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i16* %1, i16** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %30, %4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chs_table, align 8
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chs_table, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %20, %26
  br label %28

28:                                               ; preds = %19, %11
  %29 = phi i1 [ false, %11 ], [ %27, %19 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %11

33:                                               ; preds = %28
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chs_table, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %33
  %42 = load i16*, i16** %6, align 8
  %43 = icmp ne i16* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chs_table, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i16, i16* %49, align 8
  %51 = load i16*, i16** %6, align 8
  store i16 %50, i16* %51, align 2
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chs_table, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i8, i8* %60, align 2
  %62 = load i8*, i8** %7, align 8
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %55, %52
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chs_table, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %8, align 8
  store i8 %72, i8* %73, align 1
  br label %74

74:                                               ; preds = %66, %63
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %33
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
