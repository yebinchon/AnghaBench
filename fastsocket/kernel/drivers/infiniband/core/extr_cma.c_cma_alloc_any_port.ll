; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_alloc_any_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_alloc_any_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.rdma_id_private = type { i32 }

@cma_alloc_any_port.last_used_port = internal global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, %struct.rdma_id_private*)* @cma_alloc_any_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_alloc_any_port(%struct.idr* %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idr*, align 8
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %5, align 8
  %11 = call i32 @inet_get_local_port_range(i32* %6, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = call i32 (...) @net_random()
  %17 = load i32, i32* %8, align 4
  %18 = srem i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %64, %2
  %22 = load i32, i32* @cma_alloc_any_port.last_used_port, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.idr*, %struct.idr** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = trunc i32 %27 to i16
  %29 = call i32 @idr_find(%struct.idr* %26, i16 zeroext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %25
  %32 = load %struct.idr*, %struct.idr** %4, align 8
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cma_alloc_port(%struct.idr* %32, %struct.rdma_id_private* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* @cma_alloc_any_port.last_used_port, align 4
  br label %40

40:                                               ; preds = %38, %31
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @EADDRNOTAVAIL, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %68

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %25, %21
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %52
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %58
  br label %21

65:                                               ; preds = %48
  %66 = load i32, i32* @EADDRNOTAVAIL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %45
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @inet_get_local_port_range(i32*, i32*) #1

declare dso_local i32 @net_random(...) #1

declare dso_local i32 @idr_find(%struct.idr*, i16 zeroext) #1

declare dso_local i32 @cma_alloc_port(%struct.idr*, %struct.rdma_id_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
