; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_destroy_qp_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_destroy_qp_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_qp = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ehea_qp_init_attr }
%struct.TYPE_2__ = type { i32 }
%struct.ehea_qp_init_attr = type { i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ehea_qp*, i64)* @ehea_destroy_qp_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehea_destroy_qp_res(%struct.ehea_qp* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ehea_qp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ehea_qp_init_attr*, align 8
  store %struct.ehea_qp* %0, %struct.ehea_qp** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %9 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %8, i32 0, i32 6
  store %struct.ehea_qp_init_attr* %9, %struct.ehea_qp_init_attr** %7, align 8
  %10 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %11 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %16 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ehea_h_disable_and_get_hea(i32 %14, i32 %17)
  %19 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %20 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %25 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @ehea_h_free_resource(i32 %23, i32 %26, i64 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @H_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %3, align 8
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %36 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %35, i32 0, i32 3
  %37 = call i32 @hw_queue_dtor(i32* %36)
  %38 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %39 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %38, i32 0, i32 2
  %40 = call i32 @hw_queue_dtor(i32* %39)
  %41 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %47 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %46, i32 0, i32 1
  %48 = call i32 @hw_queue_dtor(i32* %47)
  br label %49

49:                                               ; preds = %45, %34
  %50 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %51 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %56 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %55, i32 0, i32 0
  %57 = call i32 @hw_queue_dtor(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  %60 = call i32 @kfree(%struct.ehea_qp* %59)
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %58, %32
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @ehea_h_disable_and_get_hea(i32, i32) #1

declare dso_local i64 @ehea_h_free_resource(i32, i32, i64) #1

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @kfree(%struct.ehea_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
