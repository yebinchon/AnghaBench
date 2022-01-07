; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_ehca_create_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_ehca_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_qp_init_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ehca_qp = type { %struct.ib_qp }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @ehca_create_qp(%struct.ib_pd* %0, %struct.ib_qp_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.ehca_qp*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %9 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %10 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %11 = call %struct.ehca_qp* @internal_create_qp(%struct.ib_pd* %8, %struct.ib_qp_init_attr* %9, i32* null, %struct.ib_udata* %10, i32 0)
  store %struct.ehca_qp* %11, %struct.ehca_qp** %7, align 8
  %12 = load %struct.ehca_qp*, %struct.ehca_qp** %7, align 8
  %13 = call i64 @IS_ERR(%struct.ehca_qp* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.ehca_qp*, %struct.ehca_qp** %7, align 8
  %17 = bitcast %struct.ehca_qp* %16 to %struct.ib_qp*
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.ehca_qp*, %struct.ehca_qp** %7, align 8
  %20 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %19, i32 0, i32 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi %struct.ib_qp* [ %17, %15 ], [ %20, %18 ]
  ret %struct.ib_qp* %22
}

declare dso_local %struct.ehca_qp* @internal_create_qp(%struct.ib_pd*, %struct.ib_qp_init_attr*, i32*, %struct.ib_udata*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ehca_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
