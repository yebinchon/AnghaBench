; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-mul.c_mpi_mul_2exp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-mul.c_mpi_mul_2exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64* }

@BITS_PER_MPI_LIMB = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_mul_2exp(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  store i32 0, i32* %4, align 4
  br label %102

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @BITS_PER_MPI_LIMB, align 8
  %31 = udiv i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %32, %33
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %9, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %28
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @mpi_resize(%struct.TYPE_5__* %42, i64 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %102

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  store i64* %53, i64** %11, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %9, align 8
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i64, i64* @BITS_PER_MPI_LIMB, align 8
  %59 = load i64, i64* %7, align 8
  %60 = urem i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %50
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @mpihelp_lshift(i64* %66, i64* %69, i64 %70, i64 %71)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load i64, i64* %12, align 8
  %77 = load i64*, i64** %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %75, %63
  br label %92

83:                                               ; preds = %50
  %84 = load i64*, i64** %11, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @MPN_COPY_DECR(i64* %86, i64* %89, i64 %90)
  br label %92

92:                                               ; preds = %83, %82
  %93 = load i64*, i64** %11, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @MPN_ZERO(i64* %93, i64 %94)
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %92, %46, %23
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @mpi_resize(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @mpihelp_lshift(i64*, i64*, i64, i64) #1

declare dso_local i32 @MPN_COPY_DECR(i64*, i64*, i64) #1

declare dso_local i32 @MPN_ZERO(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
