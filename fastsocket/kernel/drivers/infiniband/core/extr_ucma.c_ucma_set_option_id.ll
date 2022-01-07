; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_set_option_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_set_option_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucma_context*, i32, i8*, i64)* @ucma_set_option_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_set_option_id(%struct.ucma_context* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.ucma_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ucma_context* %0, %struct.ucma_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %59 [
    i32 128, label %11
    i32 129, label %25
    i32 130, label %42
  ]

11:                                               ; preds = %4
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %62

17:                                               ; preds = %11
  %18 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %19 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rdma_set_service_type(i32 %20, i32 %23)
  br label %62

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %62

31:                                               ; preds = %25
  %32 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %33 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = call i32 @rdma_set_reuseaddr(i32 %34, i32 %40)
  store i32 %41, i32* %9, align 4
  br label %62

42:                                               ; preds = %4
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %62

48:                                               ; preds = %42
  %49 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %50 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = call i32 @rdma_set_afonly(i32 %51, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %62

59:                                               ; preds = %4
  %60 = load i32, i32* @ENOSYS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %48, %45, %31, %28, %17, %14
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @rdma_set_service_type(i32, i32) #1

declare dso_local i32 @rdma_set_reuseaddr(i32, i32) #1

declare dso_local i32 @rdma_set_afonly(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
