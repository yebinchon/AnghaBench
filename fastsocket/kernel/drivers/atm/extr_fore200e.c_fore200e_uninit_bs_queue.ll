; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_uninit_bs_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_uninit_bs_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 (%struct.fore200e*, %struct.chunk*)* }
%struct.chunk = type { i64 }
%struct.TYPE_3__ = type { %struct.chunk, %struct.chunk }

@BUFFER_SCHEME_NBR = common dso_local global i32 0, align 4
@BUFFER_MAGN_NBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fore200e*)* @fore200e_uninit_bs_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fore200e_uninit_bs_queue(%struct.fore200e* %0) #0 {
  %2 = alloca %struct.fore200e*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.chunk*, align 8
  %6 = alloca %struct.chunk*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %71, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BUFFER_SCHEME_NBR, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %74

11:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %67, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BUFFER_MAGN_NBR, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %18 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store %struct.chunk* %27, %struct.chunk** %5, align 8
  %28 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %29 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store %struct.chunk* %38, %struct.chunk** %6, align 8
  %39 = load %struct.chunk*, %struct.chunk** %5, align 8
  %40 = getelementptr inbounds %struct.chunk, %struct.chunk* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %16
  %44 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %45 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.fore200e*, %struct.chunk*)*, i32 (%struct.fore200e*, %struct.chunk*)** %47, align 8
  %49 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %50 = load %struct.chunk*, %struct.chunk** %5, align 8
  %51 = call i32 %48(%struct.fore200e* %49, %struct.chunk* %50)
  br label %52

52:                                               ; preds = %43, %16
  %53 = load %struct.chunk*, %struct.chunk** %6, align 8
  %54 = getelementptr inbounds %struct.chunk, %struct.chunk* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %59 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.fore200e*, %struct.chunk*)*, i32 (%struct.fore200e*, %struct.chunk*)** %61, align 8
  %63 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %64 = load %struct.chunk*, %struct.chunk** %6, align 8
  %65 = call i32 %62(%struct.fore200e* %63, %struct.chunk* %64)
  br label %66

66:                                               ; preds = %57, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %12

70:                                               ; preds = %12
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %7

74:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
