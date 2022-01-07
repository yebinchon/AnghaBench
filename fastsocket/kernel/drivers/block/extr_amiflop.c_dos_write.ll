; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_dos_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_dos_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@raw_buf = common dso_local global i64 0, align 8
@unit = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dos_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dos_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @raw_buf, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to i64*
  store i64* %8, i64** %5, align 8
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 3
  store i32 %10, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %17, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 425
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %16, i64** %5, align 8
  store i64 2455016020, i64* %15, align 8
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %11

20:                                               ; preds = %11
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %37, %30
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 473
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %5, align 8
  store i64 2455016020, i64* %35, align 8
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %31

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %20
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %48, %41
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 20
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %5, align 8
  store i64 2455016020, i64* %46, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %42

51:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %58, %51
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 6
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64*, i64** %5, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %5, align 8
  store i64 2863311530, i64* %56, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %52

61:                                               ; preds = %52
  %62 = load i64*, i64** %5, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %5, align 8
  store i64 1378112036, i64* %62, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %5, align 8
  store i64 1378112850, i64* %64, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %72, %61
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 20
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i64*, i64** %5, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %5, align 8
  store i64 2455016020, i64* %70, align 8
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %66

75:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %101, %75
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %85, %93
  %95 = icmp slt i32 %77, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %76
  %97 = load i32, i32* %2, align 4
  %98 = load i64*, i64** %5, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i64* @ms_putsec(i32 %97, i64* %98, i32 %99)
  store i64* %100, i64** %5, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %76

104:                                              ; preds = %76
  %105 = load i64*, i64** %5, align 8
  %106 = bitcast i64* %105 to i32*
  store i32 43688, i32* %106, align 4
  ret void
}

declare dso_local i64* @ms_putsec(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
