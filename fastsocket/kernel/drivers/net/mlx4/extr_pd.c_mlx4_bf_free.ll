; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_pd.c_mlx4_bf_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_pd.c_mlx4_bf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_bf = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.mlx4_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_bf_free(%struct.mlx4_dev* %0, %struct.mlx4_bf* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_bf*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_bf* %1, %struct.mlx4_bf** %4, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %7)
  store %struct.mlx4_priv* %8, %struct.mlx4_priv** %5, align 8
  %9 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %2
  br label %109

21:                                               ; preds = %13
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %29 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %27, %32
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %33, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %41
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %49 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %89, label %54

54:                                               ; preds = %21
  %55 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = call i64 @list_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = call i32 @list_del(i32* %65)
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @io_mapping_unmap(i32 %72)
  %74 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %75 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @iounmap(i32 %78)
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %82 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = call i32 @mlx4_uar_free(%struct.mlx4_dev* %80, %struct.TYPE_5__* %83)
  %85 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %86 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = call i32 @kfree(%struct.TYPE_5__* %87)
  br label %105

89:                                               ; preds = %21
  %90 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %91 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = call i64 @list_empty(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.mlx4_bf*, %struct.mlx4_bf** %4, align 8
  %98 = getelementptr inbounds %struct.mlx4_bf, %struct.mlx4_bf* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %102 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %101, i32 0, i32 1
  %103 = call i32 @list_add(i32* %100, i32* %102)
  br label %104

104:                                              ; preds = %96, %89
  br label %105

105:                                              ; preds = %104, %67
  %106 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %107 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  br label %109

109:                                              ; preds = %105, %20
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @io_mapping_unmap(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mlx4_uar_free(%struct.mlx4_dev*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
