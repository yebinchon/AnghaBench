; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_sort_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_sort_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_freq = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iw_freq*, i32)* @sort_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_channels(%struct.iw_freq* %0, i32 %1) #0 {
  %3 = alloca %struct.iw_freq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iw_freq, align 8
  store %struct.iw_freq* %0, %struct.iw_freq** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %89, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %92

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %85, %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %15
  %20 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %20, i64 %22
  %24 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %26, i64 %28
  %30 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %25, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %19
  %34 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %34, i64 %36
  %38 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %7, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %41, i64 %43
  %45 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %7, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %48, i64 %50
  %52 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %54, i64 %56
  %58 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %57, i32 0, i32 0
  store i64 %53, i64* %58, align 8
  %59 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %59, i64 %61
  %63 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %65, i64 %67
  %69 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 8
  %70 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %72, i64 %74
  %76 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %75, i32 0, i32 0
  store i64 %71, i64* %76, align 8
  %77 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %7, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %79, i64 %81
  %83 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 8
  br label %84

84:                                               ; preds = %33, %19
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %15

88:                                               ; preds = %15
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %8

92:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
