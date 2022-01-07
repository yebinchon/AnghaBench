; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ipath_mr = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ipath_mr** }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca %struct.ib_mr*, align 8
  %3 = alloca %struct.ipath_mr*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %2, align 8
  %5 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %6 = call %struct.ipath_mr* @to_imr(%struct.ib_mr* %5)
  store %struct.ipath_mr* %6, %struct.ipath_mr** %3, align 8
  %7 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %8 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_4__* @to_idev(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %13 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ipath_free_lkey(i32* %11, i32 %14)
  %16 = load %struct.ipath_mr*, %struct.ipath_mr** %3, align 8
  %17 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %23, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = load %struct.ipath_mr*, %struct.ipath_mr** %3, align 8
  %27 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.ipath_mr**, %struct.ipath_mr*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ipath_mr*, %struct.ipath_mr** %29, i64 %31
  %33 = load %struct.ipath_mr*, %struct.ipath_mr** %32, align 8
  %34 = call i32 @kfree(%struct.ipath_mr* %33)
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.ipath_mr*, %struct.ipath_mr** %3, align 8
  %37 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.ipath_mr*, %struct.ipath_mr** %3, align 8
  %42 = getelementptr inbounds %struct.ipath_mr, %struct.ipath_mr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ib_umem_release(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.ipath_mr*, %struct.ipath_mr** %3, align 8
  %47 = call i32 @kfree(%struct.ipath_mr* %46)
  ret i32 0
}

declare dso_local %struct.ipath_mr* @to_imr(%struct.ib_mr*) #1

declare dso_local i32 @ipath_free_lkey(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @to_idev(i32) #1

declare dso_local i32 @kfree(%struct.ipath_mr*) #1

declare dso_local i32 @ib_umem_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
