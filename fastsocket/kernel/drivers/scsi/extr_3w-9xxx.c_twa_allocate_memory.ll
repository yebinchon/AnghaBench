; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_allocate_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_allocate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64**, i32*, i32**, i32*, i32, i32 }

@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Memory allocation failed\00", align 1
@TW_ALIGNMENT_9000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to allocate correctly aligned memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @twa_allocate_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_allocate_memory(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %10, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TW_Q_LENGTH, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i64* @pci_alloc_consistent(i32 %13, i32 %16, i32* %8)
  store i64* %17, i64** %9, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TW_DRIVER, align 4
  %25 = call i32 @TW_PRINTK(i32 %23, i32 %24, i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %116

26:                                               ; preds = %3
  %27 = load i64*, i64** %9, align 8
  %28 = ptrtoint i64* %27 to i64
  %29 = load i64, i64* @TW_ALIGNMENT_9000, align 8
  %30 = urem i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TW_DRIVER, align 4
  %37 = call i32 @TW_PRINTK(i32 %35, i32 %36, i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @TW_Q_LENGTH, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i64*, i64** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @pci_free_consistent(i32 %40, i32 %43, i64* %44, i32 %45)
  br label %116

47:                                               ; preds = %26
  %48 = load i64*, i64** %9, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @TW_Q_LENGTH, align 4
  %51 = mul nsw i32 %49, %50
  %52 = call i32 @memset(i64* %48, i32 0, i32 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %112, %47
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TW_Q_LENGTH, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %115

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %111 [
    i32 0, label %59
    i32 1, label %85
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load i64*, i64** %9, align 8
  %72 = bitcast i64* %71 to i8*
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* %78, i32** %84, align 8
  br label %111

85:                                               ; preds = %57
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load i64*, i64** %9, align 8
  %98 = bitcast i64* %97 to i8*
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %5, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = bitcast i8* %103 to i64*
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64**, i64*** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64*, i64** %107, i64 %109
  store i64* %104, i64** %110, align 8
  br label %111

111:                                              ; preds = %57, %85, %59
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %53

115:                                              ; preds = %53
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %32, %20
  %117 = load i32, i32* %10, align 4
  ret i32 %117
}

declare dso_local i64* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @TW_PRINTK(i32, i32, i32, i8*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
