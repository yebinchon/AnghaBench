; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-add.c_mpi_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-add.c_mpi_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_sub(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %12 = icmp eq %struct.TYPE_11__* %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = call i64 @mpi_copy(%struct.TYPE_11__** %9, %struct.TYPE_11__* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = call i32 @mpi_add(%struct.TYPE_11__* %29, %struct.TYPE_11__* %30, %struct.TYPE_11__* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = call i32 @mpi_free(%struct.TYPE_11__* %33)
  br label %56

35:                                               ; preds = %3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = call i32 @mpi_add(%struct.TYPE_11__* %44, %struct.TYPE_11__* %45, %struct.TYPE_11__* %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %35, %20
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @mpi_copy(%struct.TYPE_11__**, %struct.TYPE_11__*) #1

declare dso_local i32 @mpi_add(%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @mpi_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
