; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_walk_and_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_walk_and_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_sg = type { i32 }
%struct.scatterlist = type { i32 }
%struct.scatter_walk = type { i32 }

@SCATTERWALK_FROM_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg* %0, i32 %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nx_sg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatter_walk, align 4
  %12 = alloca %struct.nx_sg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.nx_sg* %0, %struct.nx_sg** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  store %struct.nx_sg* %17, %struct.nx_sg** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %15, align 4
  br label %19

19:                                               ; preds = %30, %5
  %20 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %21 = call i32 @scatterwalk_start(%struct.scatter_walk* %11, %struct.scatterlist* %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %25 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %38

30:                                               ; preds = %19
  %31 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %14, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %14, align 4
  %36 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %37 = call %struct.scatterlist* @scatterwalk_sg_next(%struct.scatterlist* %36)
  store %struct.scatterlist* %37, %struct.scatterlist** %8, align 8
  br label %19

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %14, align 4
  %41 = sub i32 %39, %40
  %42 = call i32 @scatterwalk_advance(%struct.scatter_walk* %11, i32 %41)
  br label %43

43:                                               ; preds = %63, %38
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  %48 = icmp ne %struct.nx_sg* %47, null
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  br i1 %50, label %51, label %82

51:                                               ; preds = %49
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %11, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.scatterlist* @sg_next(i32 %58)
  %60 = call i32 @scatterwalk_start(%struct.scatter_walk* %11, %struct.scatterlist* %59)
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %11, i32 %61)
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* @SCATTERWALK_FROM_SG, align 4
  %65 = call i8* @scatterwalk_map(%struct.scatter_walk* %11, i32 %64)
  store i8* %65, i8** %16, align 8
  %66 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call %struct.nx_sg* @nx_build_sg_list(%struct.nx_sg* %66, i8* %67, i32 %68, i32 %69)
  store %struct.nx_sg* %70, %struct.nx_sg** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load i8*, i8** %16, align 8
  %75 = load i32, i32* @SCATTERWALK_FROM_SG, align 4
  %76 = call i32 @scatterwalk_unmap(i8* %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @scatterwalk_advance(%struct.scatter_walk* %11, i32 %77)
  %79 = load i32, i32* @SCATTERWALK_FROM_SG, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @scatterwalk_done(%struct.scatter_walk* %11, i32 %79, i32 %80)
  br label %43

82:                                               ; preds = %49
  %83 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  ret %struct.nx_sg* %83
}

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, %struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @scatterwalk_sg_next(%struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_advance(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_clamp(%struct.scatter_walk*, i32) #1

declare dso_local %struct.scatterlist* @sg_next(i32) #1

declare dso_local i8* @scatterwalk_map(%struct.scatter_walk*, i32) #1

declare dso_local %struct.nx_sg* @nx_build_sg_list(%struct.nx_sg*, i8*, i32, i32) #1

declare dso_local i32 @scatterwalk_unmap(i8*, i32) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
