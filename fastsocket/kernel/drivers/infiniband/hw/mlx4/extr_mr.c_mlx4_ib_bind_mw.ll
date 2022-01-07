; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_bind_mw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_bind_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_mw = type { i32 }
%struct.ib_mw_bind = type { i32, i32, i32 }
%struct.ib_send_wr = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.ib_mw* }

@IB_WR_BIND_MW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_bind_mw(%struct.ib_qp* %0, %struct.ib_mw* %1, %struct.ib_mw_bind* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_mw*, align 8
  %6 = alloca %struct.ib_mw_bind*, align 8
  %7 = alloca %struct.ib_send_wr, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_mw* %1, %struct.ib_mw** %5, align 8
  store %struct.ib_mw_bind* %2, %struct.ib_mw_bind** %6, align 8
  %10 = call i32 @memset(%struct.ib_send_wr* %7, i32 0, i32 32)
  %11 = load i32, i32* @IB_WR_BIND_MW, align 4
  %12 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %6, align 8
  %14 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %6, align 8
  %18 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load %struct.ib_mw*, %struct.ib_mw** %5, align 8
  %22 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store %struct.ib_mw* %21, %struct.ib_mw** %24, align 8
  %25 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %6, align 8
  %26 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.ib_mw*, %struct.ib_mw** %5, align 8
  %32 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ib_inc_rkey(i32 %33)
  %35 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %39 = call i32 @mlx4_ib_post_send(%struct.ib_qp* %38, %struct.ib_send_wr* %7, %struct.ib_send_wr** %8)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ib_mw*, %struct.ib_mw** %5, align 8
  %48 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %3
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.ib_send_wr*, i32, i32) #1

declare dso_local i32 @ib_inc_rkey(i32) #1

declare dso_local i32 @mlx4_ib_post_send(%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
