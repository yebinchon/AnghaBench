; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_alloc_buffer_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_alloc_buffer_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_buff_pool = type { i32*, i32, i32*, i32*, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmveth_buff_pool*)* @ibmveth_alloc_buffer_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_alloc_buffer_pool(%struct.ibmveth_buff_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmveth_buff_pool*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmveth_buff_pool* %0, %struct.ibmveth_buff_pool** %3, align 8
  %5 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %6 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 %10, i32 %11)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %15 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %17 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %119

21:                                               ; preds = %1
  %22 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %23 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kmalloc(i32 %27, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %32 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %34 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %21
  %38 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %39 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %43 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  store i32 -1, i32* %2, align 4
  br label %119

44:                                               ; preds = %21
  %45 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %46 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 8, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kmalloc(i32 %50, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %55 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %57 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %44
  %61 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %62 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %66 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %68 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %72 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  store i32 -1, i32* %2, align 4
  br label %119

73:                                               ; preds = %44
  %74 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %75 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %78 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 8, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memset(i32* %76, i32 0, i32 %82)
  %84 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %85 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %88 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(i32* %86, i32 0, i32 %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %108, %73
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %97 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %103 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %94

111:                                              ; preds = %94
  %112 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %113 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %112, i32 0, i32 6
  %114 = call i32 @atomic_set(i32* %113, i32 0)
  %115 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %116 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %115, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %118 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %60, %37, %20
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
