; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_q_vectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.ixgbevf_q_vector**, i32 }
%struct.ixgbevf_q_vector = type { i32, i32, %struct.ixgbevf_adapter* }

@NON_Q_VECTORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ixgbevf_poll = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_alloc_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_alloc_q_vectors(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbevf_q_vector*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %7 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NON_Q_VECTORS, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %43, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ixgbevf_q_vector* @kzalloc(i32 16, i32 %17)
  store %struct.ixgbevf_q_vector* %18, %struct.ixgbevf_q_vector** %6, align 8
  %19 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %20 = icmp ne %struct.ixgbevf_q_vector* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %47

22:                                               ; preds = %16
  %23 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %24 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %24, i32 0, i32 2
  store %struct.ixgbevf_adapter* %23, %struct.ixgbevf_adapter** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %32, i32 0, i32 1
  %34 = load i32, i32* @ixgbevf_poll, align 4
  %35 = call i32 @netif_napi_add(i32 %31, i32* %33, i32 %34, i32 64)
  %36 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %37 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %37, i32 0, i32 1
  %39 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %39, i64 %41
  store %struct.ixgbevf_q_vector* %36, %struct.ixgbevf_q_vector** %42, align 8
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %12

46:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %75

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %51, %47
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %4, align 4
  %54 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %54, i32 0, i32 1
  %56 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %56, i64 %58
  %60 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %59, align 8
  store %struct.ixgbevf_q_vector* %60, %struct.ixgbevf_q_vector** %6, align 8
  %61 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %62 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %61, i32 0, i32 1
  %63 = call i32 @netif_napi_del(i32* %62)
  %64 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %65 = call i32 @kfree(%struct.ixgbevf_q_vector* %64)
  %66 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %66, i32 0, i32 1
  %68 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %68, i64 %70
  store %struct.ixgbevf_q_vector* null, %struct.ixgbevf_q_vector** %71, align 8
  br label %48

72:                                               ; preds = %48
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %46
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ixgbevf_q_vector* @kzalloc(i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @kfree(%struct.ixgbevf_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
