; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_block2mtd_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_block2mtd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.block2mtd_dev* }
%struct.block2mtd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* @block2mtd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block2mtd_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.block2mtd_dev*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 1
  %19 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %18, align 8
  store %struct.block2mtd_dev* %19, %struct.block2mtd_dev** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %129

35:                                               ; preds = %5
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %39, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %45, %35
  %53 = load i64*, i64** %10, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i64*, i64** %10, align 8
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %121, %57
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %128

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %63, %64
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %16, align 4
  br label %76

73:                                               ; preds = %61
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %77, %79
  store i64 %80, i64* %9, align 8
  %81 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %12, align 8
  %82 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call %struct.page* @page_read(i32 %87, i32 %88)
  store %struct.page* %89, %struct.page** %13, align 8
  %90 = load %struct.page*, %struct.page** %13, align 8
  %91 = icmp ne %struct.page* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %76
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %129

95:                                               ; preds = %76
  %96 = load %struct.page*, %struct.page** %13, align 8
  %97 = call i64 @IS_ERR(%struct.page* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.page*, %struct.page** %13, align 8
  %101 = call i32 @PTR_ERR(%struct.page* %100)
  store i32 %101, i32* %6, align 4
  br label %129

102:                                              ; preds = %95
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.page*, %struct.page** %13, align 8
  %105 = call i64 @page_address(%struct.page* %104)
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @memcpy(i32* %103, i64 %108, i32 %109)
  %111 = load %struct.page*, %struct.page** %13, align 8
  %112 = call i32 @page_cache_release(%struct.page* %111)
  %113 = load i64*, i64** %10, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64*, i64** %10, align 8
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %117
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %115, %102
  %122 = load i32, i32* %16, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %58

128:                                              ; preds = %58
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %99, %92, %32
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local %struct.page* @page_read(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
