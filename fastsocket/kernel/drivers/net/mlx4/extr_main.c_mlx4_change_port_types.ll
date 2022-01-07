; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_change_port_types.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_change_port_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"Failed to set port %d, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_change_port_types(%struct.mlx4_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %20, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %36
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %41 = call i32 @mlx4_unregister_device(%struct.mlx4_dev* %40)
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %76, %39
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %43, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %42
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mlx4_CLOSE_PORT(%struct.mlx4_dev* %50, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %58, i32* %65, align 4
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @mlx4_SET_PORT(%struct.mlx4_dev* %66, i32 %67, i32 -1)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %49
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @mlx4_err(%struct.mlx4_dev* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %85

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %42

79:                                               ; preds = %42
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = call i32 @mlx4_set_port_mask(%struct.mlx4_dev* %80)
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %83 = call i32 @mlx4_register_device(%struct.mlx4_dev* %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %36
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @mlx4_unregister_device(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_CLOSE_PORT(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_SET_PORT(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_set_port_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_register_device(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
