; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-div.c_mpi_fdiv_qr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-div.c_mpi_fdiv_qr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_fdiv_qr(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %11, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %17 = icmp eq %struct.TYPE_18__* %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %21 = icmp eq %struct.TYPE_18__* %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18, %4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %24 = call i64 @mpi_copy(%struct.TYPE_18__** %11, %struct.TYPE_18__* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %77

29:                                               ; preds = %22
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %9, align 8
  br label %31

31:                                               ; preds = %29, %18
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = call i64 @mpi_tdiv_qr(%struct.TYPE_18__* %32, %struct.TYPE_18__* %33, %struct.TYPE_18__* %34, %struct.TYPE_18__* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %72

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %39
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = call i64 @mpi_sub_ui(%struct.TYPE_18__* %52, %struct.TYPE_18__* %53, i32 1)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %72

57:                                               ; preds = %51
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %61 = call i64 @mpi_add(%struct.TYPE_18__* %58, %struct.TYPE_18__* %59, %struct.TYPE_18__* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %72

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %46, %39
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %67 = icmp ne %struct.TYPE_18__* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %70 = call i32 @mpi_free(%struct.TYPE_18__* %69)
  br label %71

71:                                               ; preds = %68, %65
  store i32 0, i32* %5, align 4
  br label %77

72:                                               ; preds = %63, %56, %38
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %74 = call i32 @mpi_free(%struct.TYPE_18__* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %71, %26
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @mpi_copy(%struct.TYPE_18__**, %struct.TYPE_18__*) #1

declare dso_local i64 @mpi_tdiv_qr(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @mpi_sub_ui(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @mpi_add(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mpi_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
