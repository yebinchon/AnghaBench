; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_ehca_tasklet_neq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_ehca_tasklet_neq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ehca_eqe = type { i32 }

@NEQE_COMPLETION_EVENT = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Can't clear notification events.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ehca_tasklet_neq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca %struct.ehca_eqe*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.ehca_shca*
  store %struct.ehca_shca* %7, %struct.ehca_shca** %3, align 8
  %8 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %9 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %10 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %9, i32 0, i32 1
  %11 = call %struct.ehca_eqe* @ehca_poll_eq(%struct.ehca_shca* %8, %struct.TYPE_2__* %10)
  store %struct.ehca_eqe* %11, %struct.ehca_eqe** %4, align 8
  br label %12

12:                                               ; preds = %28, %1
  %13 = load %struct.ehca_eqe*, %struct.ehca_eqe** %4, align 8
  %14 = icmp ne %struct.ehca_eqe* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32, i32* @NEQE_COMPLETION_EVENT, align 4
  %17 = load %struct.ehca_eqe*, %struct.ehca_eqe** %4, align 8
  %18 = getelementptr inbounds %struct.ehca_eqe, %struct.ehca_eqe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @EHCA_BMASK_GET(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %24 = load %struct.ehca_eqe*, %struct.ehca_eqe** %4, align 8
  %25 = getelementptr inbounds %struct.ehca_eqe, %struct.ehca_eqe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @parse_ec(%struct.ehca_shca* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %30 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %31 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %30, i32 0, i32 1
  %32 = call %struct.ehca_eqe* @ehca_poll_eq(%struct.ehca_shca* %29, %struct.TYPE_2__* %31)
  store %struct.ehca_eqe* %32, %struct.ehca_eqe** %4, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %35 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %38 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @hipz_h_reset_event(i32 %36, i32 %40, i32 -1)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @H_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %47 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %46, i32 0, i32 0
  %48 = call i32 @ehca_err(i32* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %33
  ret void
}

declare dso_local %struct.ehca_eqe* @ehca_poll_eq(%struct.ehca_shca*, %struct.TYPE_2__*) #1

declare dso_local i32 @EHCA_BMASK_GET(i32, i32) #1

declare dso_local i32 @parse_ec(%struct.ehca_shca*, i32) #1

declare dso_local i64 @hipz_h_reset_event(i32, i32, i32) #1

declare dso_local i32 @ehca_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
