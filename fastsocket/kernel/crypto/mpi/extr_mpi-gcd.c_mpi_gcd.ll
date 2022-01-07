; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-gcd.c_mpi_gcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-gcd.c_mpi_gcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_gcd(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = call i64 @mpi_copy(%struct.TYPE_14__** %8, %struct.TYPE_14__* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %64

14:                                               ; preds = %3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = call i64 @mpi_copy(%struct.TYPE_14__** %9, %struct.TYPE_14__* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %64

19:                                               ; preds = %14
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %47, %19
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = call i64 @mpi_cmp_ui(%struct.TYPE_14__* %25, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = call i64 @mpi_fdiv_r(%struct.TYPE_14__* %29, %struct.TYPE_14__* %30, %struct.TYPE_14__* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %64

35:                                               ; preds = %28
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = call i64 @mpi_set(%struct.TYPE_14__* %36, %struct.TYPE_14__* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %64

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = call i64 @mpi_set(%struct.TYPE_14__* %42, %struct.TYPE_14__* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %64

47:                                               ; preds = %41
  br label %24

48:                                               ; preds = %24
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = call i64 @mpi_set(%struct.TYPE_14__* %49, %struct.TYPE_14__* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %64

54:                                               ; preds = %48
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = call i32 @mpi_free(%struct.TYPE_14__* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = call i32 @mpi_free(%struct.TYPE_14__* %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = call i64 @mpi_cmp_ui(%struct.TYPE_14__* %59, i32 1)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %71

64:                                               ; preds = %53, %46, %40, %34, %18, %13
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = call i32 @mpi_free(%struct.TYPE_14__* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = call i32 @mpi_free(%struct.TYPE_14__* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %54
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @mpi_copy(%struct.TYPE_14__**, %struct.TYPE_14__*) #1

declare dso_local i64 @mpi_cmp_ui(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @mpi_fdiv_r(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i64 @mpi_set(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @mpi_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
