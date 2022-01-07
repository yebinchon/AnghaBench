; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_cq.c_ehca_cq_assign_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_cq.c_ehca_cq_assign_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_cq = type { i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ehca_qp = type { i32, i32 }

@QP_HASHTAB_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cq_num=%x real_qp_num=%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_cq_assign_qp(%struct.ehca_cq* %0, %struct.ehca_qp* %1) #0 {
  %3 = alloca %struct.ehca_cq*, align 8
  %4 = alloca %struct.ehca_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ehca_cq* %0, %struct.ehca_cq** %3, align 8
  store %struct.ehca_qp* %1, %struct.ehca_qp** %4, align 8
  %8 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %9 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @QP_HASHTAB_LEN, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %16 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %15, i32 0, i32 2
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ehca_qp*, %struct.ehca_qp** %4, align 8
  %20 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %19, i32 0, i32 1
  %21 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %22 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @hlist_add_head(i32* %20, i32* %26)
  %28 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %29 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %28, i32 0, i32 2
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %33 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %37 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ehca_dbg(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ehca_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
