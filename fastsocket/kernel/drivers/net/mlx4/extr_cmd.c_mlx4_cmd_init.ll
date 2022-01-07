; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_cmd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32*, i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@MLX4_HCR_BASE = common dso_local global i64 0, align 8
@MLX4_HCR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't map command register.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't allocate VHCR.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mlx4_cmd\00", align 1
@MLX4_MAILBOX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_cmd_init(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %4, align 8
  %7 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %8 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 6
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = call i32 @sema_init(i32* %17, i32 1)
  %19 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %32 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %1
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i64 @pci_resource_start(%struct.TYPE_7__* %37, i32 0)
  %39 = load i64, i64* @MLX4_HCR_BASE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @MLX4_HCR_SIZE, align 4
  %42 = call i32* @ioremap(i64 %40, i32 %41)
  %43 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %47 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %34
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %53 = call i32 @mlx4_err(%struct.mlx4_dev* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %137

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %59 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32* @dma_alloc_coherent(i32* %65, i32 %66, i32* %69, i32 %70)
  %72 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %73 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  %75 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %61
  %81 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %82 = call i32 @mlx4_err(%struct.mlx4_dev* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %124

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* @MLX4_MAILBOX_SIZE, align 4
  %89 = load i32, i32* @MLX4_MAILBOX_SIZE, align 4
  %90 = call i32 @pci_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %87, i32 %88, i32 %89, i32 0)
  %91 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %92 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %95 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %84
  br label %101

100:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %137

101:                                              ; preds = %99
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %103 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %107 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %112 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %116 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dma_free_coherent(i32* %109, i32 %110, i32* %114, i32 %118)
  br label %120

120:                                              ; preds = %105, %101
  %121 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %122 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %120, %80
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %126 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %130 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @iounmap(i32* %132)
  br label %134

134:                                              ; preds = %128, %124
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %134, %100, %51
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i64 @pci_resource_start(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pci_pool_create(i8*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
