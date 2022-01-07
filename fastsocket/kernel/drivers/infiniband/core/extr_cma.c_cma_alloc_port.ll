; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_alloc_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_alloc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.rdma_id_private = type { i32 }
%struct.rdma_bind_list = type { i16, %struct.idr* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, %struct.rdma_id_private*, i16)* @cma_alloc_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_alloc_port(%struct.idr* %0, %struct.rdma_id_private* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.rdma_bind_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %5, align 8
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %6, align 8
  store i16 %2, i16* %7, align 2
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rdma_bind_list* @kzalloc(i32 16, i32 %11)
  store %struct.rdma_bind_list* %12, %struct.rdma_bind_list** %8, align 8
  %13 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %14 = icmp ne %struct.rdma_bind_list* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %67

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %34, %18
  %20 = load %struct.idr*, %struct.idr** %5, align 8
  %21 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %22 = load i16, i16* %7, align 2
  %23 = call i32 @idr_get_new_above(%struct.idr* %20, %struct.rdma_bind_list* %21, i16 zeroext %22, i32* %9)
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.idr*, %struct.idr** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @idr_pre_get(%struct.idr* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  br i1 %35, label %19, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %63

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EADDRNOTAVAIL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %59

48:                                               ; preds = %40
  %49 = load %struct.idr*, %struct.idr** %5, align 8
  %50 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %51 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %50, i32 0, i32 1
  store %struct.idr* %49, %struct.idr** %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = trunc i32 %52 to i16
  %54 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %55 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %54, i32 0, i32 0
  store i16 %53, i16* %55, align 8
  %56 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %57 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %58 = call i32 @cma_bind_port(%struct.rdma_bind_list* %56, %struct.rdma_id_private* %57)
  store i32 0, i32* %4, align 4
  br label %67

59:                                               ; preds = %45
  %60 = load %struct.idr*, %struct.idr** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @idr_remove(%struct.idr* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %39
  %64 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %65 = call i32 @kfree(%struct.rdma_bind_list* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %48, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.rdma_bind_list* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_get_new_above(%struct.idr*, %struct.rdma_bind_list*, i16 zeroext, i32*) #1

declare dso_local i64 @idr_pre_get(%struct.idr*, i32) #1

declare dso_local i32 @cma_bind_port(%struct.rdma_bind_list*, %struct.rdma_id_private*) #1

declare dso_local i32 @idr_remove(%struct.idr*, i32) #1

declare dso_local i32 @kfree(%struct.rdma_bind_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
