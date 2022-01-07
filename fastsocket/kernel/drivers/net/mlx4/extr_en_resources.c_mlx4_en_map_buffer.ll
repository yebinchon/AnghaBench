; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_resources.c_mlx4_en_map_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_resources.c_mlx4_en_map_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_buf = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_map_buffer(%struct.mlx4_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_buf*, align 8
  %4 = alloca %struct.page**, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_buf* %0, %struct.mlx4_buf** %3, align 8
  %6 = load i32, i32* @BITS_PER_LONG, align 4
  %7 = icmp eq i32 %6, 64
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %74

14:                                               ; preds = %8
  %15 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.page** @kmalloc(i32 %20, i32 %21)
  store %struct.page** %22, %struct.page*** %4, align 8
  %23 = load %struct.page**, %struct.page*** %4, align 8
  %24 = icmp ne %struct.page** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %74

28:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.page* @virt_to_page(i32 %43)
  %45 = load %struct.page**, %struct.page*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %47
  store %struct.page* %44, %struct.page** %48, align 8
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.page**, %struct.page*** %4, align 8
  %54 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %55 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @VM_MAP, align 4
  %58 = load i32, i32* @PAGE_KERNEL, align 4
  %59 = call i32 @vmap(%struct.page** %53, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %61 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.page**, %struct.page*** %4, align 8
  %64 = call i32 @kfree(%struct.page** %63)
  %65 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %66 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %52
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %70, %25, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
