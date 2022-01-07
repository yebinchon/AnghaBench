; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_ehca_add_to_err_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_ehca_add_to_err_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_qp = type { i64, %struct.list_head, %struct.TYPE_4__*, %struct.list_head, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.TYPE_3__ = type { %struct.list_head }

@EQPT_LLQP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ehca_add_to_err_list(%struct.ehca_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.ehca_qp* %0, %struct.ehca_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ehca_qp*, %struct.ehca_qp** %3, align 8
  %8 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EQPT_LLQP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %39

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.ehca_qp*, %struct.ehca_qp** %3, align 8
  %18 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.list_head* %20, %struct.list_head** %5, align 8
  %21 = load %struct.ehca_qp*, %struct.ehca_qp** %3, align 8
  %22 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %21, i32 0, i32 3
  store %struct.list_head* %22, %struct.list_head** %6, align 8
  br label %30

23:                                               ; preds = %13
  %24 = load %struct.ehca_qp*, %struct.ehca_qp** %3, align 8
  %25 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.list_head* %27, %struct.list_head** %5, align 8
  %28 = load %struct.ehca_qp*, %struct.ehca_qp** %3, align 8
  %29 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %28, i32 0, i32 1
  store %struct.list_head* %29, %struct.list_head** %6, align 8
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.list_head*, %struct.list_head** %6, align 8
  %32 = call i64 @list_empty(%struct.list_head* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.list_head*, %struct.list_head** %6, align 8
  %36 = load %struct.list_head*, %struct.list_head** %5, align 8
  %37 = call i32 @list_add_tail(%struct.list_head* %35, %struct.list_head* %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %12
  ret void
}

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
