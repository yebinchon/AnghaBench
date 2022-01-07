; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_do_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_do_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32)* @do_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bounce_buffer(%struct.scatterlist* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %75, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i64 %21
  %23 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i64 %27
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %24, %30
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %79

36:                                               ; preds = %18
  br label %74

37:                                               ; preds = %15
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %43, i64 %45
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %79

52:                                               ; preds = %42
  br label %73

53:                                               ; preds = %37
  %54 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i64 %56
  %58 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %53
  %63 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i64 %65
  %67 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62, %53
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %79

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %36
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %11

78:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %70, %50, %34, %9
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
