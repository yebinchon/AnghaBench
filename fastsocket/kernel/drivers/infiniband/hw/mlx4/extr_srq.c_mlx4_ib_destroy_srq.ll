; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_srq.c_mlx4_ib_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_srq.c_mlx4_ib_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_srq = type { i32, i32, %struct.TYPE_4__, %struct.mlx4_ib_srq*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_destroy_srq(%struct.ib_srq* %0) #0 {
  %2 = alloca %struct.ib_srq*, align 8
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca %struct.mlx4_ib_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %2, align 8
  %5 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %6 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.mlx4_ib_dev* @to_mdev(i32 %7)
  store %struct.mlx4_ib_dev* %8, %struct.mlx4_ib_dev** %3, align 8
  %9 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %10 = call %struct.mlx4_ib_srq* @to_msrq(%struct.ib_srq* %9)
  store %struct.mlx4_ib_srq* %10, %struct.mlx4_ib_srq** %4, align 8
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %14, i32 0, i32 2
  %16 = call i32 @mlx4_srq_free(i32 %13, %struct.TYPE_4__* %15)
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %20, i32 0, i32 5
  %22 = call i32 @mlx4_mtt_cleanup(i32 %19, i32* %21)
  %23 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %24 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %1
  %28 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %29 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @to_mucontext(i32 %32)
  %34 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %34, i32 0, i32 0
  %36 = call i32 @mlx4_ib_db_unmap_user(i32 %33, i32* %35)
  %37 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ib_umem_release(i32 %39)
  br label %67

41:                                               ; preds = %1
  %42 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %42, i32 0, i32 3
  %44 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %43, align 8
  %45 = call i32 @kfree(%struct.mlx4_ib_srq* %44)
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %52, %56
  %58 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %58, i32 0, i32 1
  %60 = call i32 @mlx4_buf_free(i32 %48, i32 %57, i32* %59)
  %61 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %64, i32 0, i32 0
  %66 = call i32 @mlx4_db_free(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %41, %27
  %68 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %4, align 8
  %69 = call i32 @kfree(%struct.mlx4_ib_srq* %68)
  ret i32 0
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local i32 @mlx4_srq_free(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mlx4_mtt_cleanup(i32, i32*) #1

declare dso_local i32 @mlx4_ib_db_unmap_user(i32, i32*) #1

declare dso_local i32 @to_mucontext(i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_srq*) #1

declare dso_local i32 @mlx4_buf_free(i32, i32, i32*) #1

declare dso_local i32 @mlx4_db_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
