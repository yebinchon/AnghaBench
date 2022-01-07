; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c___mlx4_qp_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c___mlx4_qp_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_qp_table }
%struct.mlx4_qp_table = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_qp_alloc_icm(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_priv*, align 8
  %7 = alloca %struct.mlx4_qp_table*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %10 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %6, align 8
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  store %struct.mlx4_qp_table* %12, %struct.mlx4_qp_table** %7, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mlx4_table_get(%struct.mlx4_dev* %13, i32* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %23 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %23, i32 0, i32 1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mlx4_table_get(%struct.mlx4_dev* %22, i32* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %76

30:                                               ; preds = %21
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %32 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %32, i32 0, i32 2
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mlx4_table_get(%struct.mlx4_dev* %31, i32* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %70

39:                                               ; preds = %30
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %41 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %41, i32 0, i32 3
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @mlx4_table_get(%struct.mlx4_dev* %40, i32* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %64

48:                                               ; preds = %39
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %50 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %50, i32 0, i32 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mlx4_table_get(%struct.mlx4_dev* %49, i32* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %58

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %84

58:                                               ; preds = %56
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %60 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %61 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %60, i32 0, i32 3
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @mlx4_table_put(%struct.mlx4_dev* %59, i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %47
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %66 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %67 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %66, i32 0, i32 2
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @mlx4_table_put(%struct.mlx4_dev* %65, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %38
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %72 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %73 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %72, i32 0, i32 1
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @mlx4_table_put(%struct.mlx4_dev* %71, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %29
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %78 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %79 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %78, i32 0, i32 0
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @mlx4_table_put(%struct.mlx4_dev* %77, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %20
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %57
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_table_get(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_table_put(%struct.mlx4_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
