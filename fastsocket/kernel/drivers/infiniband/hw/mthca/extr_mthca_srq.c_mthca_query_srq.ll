; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_query_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i64, i8* }
%struct.mthca_dev = type { i32 }
%struct.mthca_srq = type { i32, i64, i32 }
%struct.mthca_mailbox = type { %struct.mthca_tavor_srq_context* }
%struct.mthca_tavor_srq_context = type { i32 }
%struct.mthca_arbel_srq_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.mthca_srq*, align 8
  %8 = alloca %struct.mthca_mailbox*, align 8
  %9 = alloca %struct.mthca_arbel_srq_context*, align 8
  %10 = alloca %struct.mthca_tavor_srq_context*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %12 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %13 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mthca_dev* @to_mdev(i32 %14)
  store %struct.mthca_dev* %15, %struct.mthca_dev** %6, align 8
  %16 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %17 = call %struct.mthca_srq* @to_msrq(%struct.ib_srq* %16)
  store %struct.mthca_srq* %17, %struct.mthca_srq** %7, align 8
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %18, i32 %19)
  store %struct.mthca_mailbox* %20, %struct.mthca_mailbox** %8, align 8
  %21 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %22 = call i64 @IS_ERR(%struct.mthca_mailbox* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.mthca_mailbox* %25)
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %2
  %28 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %29 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %30 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %33 = call i32 @mthca_QUERY_SRQ(%struct.mthca_dev* %28, i32 %31, %struct.mthca_mailbox* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %74

37:                                               ; preds = %27
  %38 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %39 = call i64 @mthca_is_memfree(%struct.mthca_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %43 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %42, i32 0, i32 0
  %44 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %43, align 8
  %45 = bitcast %struct.mthca_tavor_srq_context* %44 to %struct.mthca_arbel_srq_context*
  store %struct.mthca_arbel_srq_context* %45, %struct.mthca_arbel_srq_context** %9, align 8
  %46 = load %struct.mthca_arbel_srq_context*, %struct.mthca_arbel_srq_context** %9, align 8
  %47 = getelementptr inbounds %struct.mthca_arbel_srq_context, %struct.mthca_arbel_srq_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @be16_to_cpu(i32 %48)
  %50 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %51 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %62

52:                                               ; preds = %37
  %53 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %54 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %53, i32 0, i32 0
  %55 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %54, align 8
  store %struct.mthca_tavor_srq_context* %55, %struct.mthca_tavor_srq_context** %10, align 8
  %56 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %10, align 8
  %57 = getelementptr inbounds %struct.mthca_tavor_srq_context, %struct.mthca_tavor_srq_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @be16_to_cpu(i32 %58)
  %60 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %61 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %52, %41
  %63 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %64 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  %67 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %68 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %70 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %73 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %62, %36
  %75 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %76 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %77 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %75, %struct.mthca_mailbox* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %24
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_QUERY_SRQ(%struct.mthca_dev*, i32, %struct.mthca_mailbox*) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
