; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_free_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_free_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_mr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"HW2SW_MPT failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_free_mr(%struct.mthca_dev* %0, %struct.mthca_mr* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_mr*, align 8
  %5 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_mr* %1, %struct.mthca_mr** %4, align 8
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %8 = load %struct.mthca_mr*, %struct.mthca_mr** %4, align 8
  %9 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @key_to_hw_index(%struct.mthca_dev* %7, i32 %11)
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %12, %17
  %19 = call i32 @mthca_HW2SW_MPT(%struct.mthca_dev* %6, i32* null, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mthca_warn(%struct.mthca_dev* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %28 = load %struct.mthca_mr*, %struct.mthca_mr** %4, align 8
  %29 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mthca_free_region(%struct.mthca_dev* %27, i32 %31)
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %34 = load %struct.mthca_mr*, %struct.mthca_mr** %4, align 8
  %35 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mthca_free_mtt(%struct.mthca_dev* %33, i32 %36)
  ret void
}

declare dso_local i32 @mthca_HW2SW_MPT(%struct.mthca_dev*, i32*, i32) #1

declare dso_local i32 @key_to_hw_index(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @mthca_free_region(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_free_mtt(%struct.mthca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
