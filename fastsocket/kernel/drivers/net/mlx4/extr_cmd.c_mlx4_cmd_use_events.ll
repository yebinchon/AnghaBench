; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_cmd_use_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_cmd_use_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_cmd_use_events(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %7)
  store %struct.mlx4_priv* %8, %struct.mlx4_priv** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_4__* @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 7
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 7
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %122

29:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %57, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %38, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %48, i32* %56, align 4
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %62 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 7
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %66 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 4
  %73 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %74 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  store i64 0, i64* %75, align 8
  %76 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %77 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %80 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sema_init(i32* %78, i32 %82)
  %84 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %85 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %89 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %102, %60
  %92 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %93 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %97 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %104 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %91

108:                                              ; preds = %91
  %109 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %110 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %115 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = call i32 @down(i32* %116)
  %118 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %119 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %108, %26
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local %struct.TYPE_4__* @kmalloc(i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @down(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
