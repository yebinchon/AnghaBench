; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c___mlx4_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c___mlx4_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_cmd(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @pci_channel_offline(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %9
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %76

28:                                               ; preds = %9
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %30 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %19, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %32
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %37 = call i64 @mlx4_is_master(%struct.mlx4_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35, %28
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %41 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i64, i64* %18, align 8
  %55 = call i32 @mlx4_cmd_wait(%struct.mlx4_dev* %47, i32 %48, i32* %49, i32 %50, i32 %51, i32 %52, i32 %53, i64 %54)
  store i32 %55, i32* %10, align 4
  br label %76

56:                                               ; preds = %39
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i64, i64* %18, align 8
  %65 = call i32 @mlx4_cmd_poll(%struct.mlx4_dev* %57, i32 %58, i32* %59, i32 %60, i32 %61, i32 %62, i32 %63, i64 %64)
  store i32 %65, i32* %10, align 4
  br label %76

66:                                               ; preds = %35, %32
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i64, i64* %18, align 8
  %75 = call i32 @mlx4_slave_cmd(%struct.mlx4_dev* %67, i32 %68, i32* %69, i32 %70, i32 %71, i32 %72, i32 %73, i64 %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %66, %56, %46, %25
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_wait(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @mlx4_cmd_poll(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @mlx4_slave_cmd(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
