; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_cq.c_vnic_cq_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_cq.c_vnic_cq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.vnic_cq = type { i32, i32, i32, %struct.vnic_dev* }

@RES_TYPE_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to hook CQ[%d] resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_cq_alloc(%struct.vnic_dev* %0, %struct.vnic_cq* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnic_dev*, align 8
  %8 = alloca %struct.vnic_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %7, align 8
  store %struct.vnic_cq* %1, %struct.vnic_cq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.vnic_cq*, %struct.vnic_cq** %8, align 8
  %15 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %17 = load %struct.vnic_cq*, %struct.vnic_cq** %8, align 8
  %18 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %17, i32 0, i32 3
  store %struct.vnic_dev* %16, %struct.vnic_dev** %18, align 8
  %19 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %20 = load i32, i32* @RES_TYPE_CQ, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @vnic_dev_get_res(%struct.vnic_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.vnic_cq*, %struct.vnic_cq** %8, align 8
  %24 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vnic_cq*, %struct.vnic_cq** %8, align 8
  %26 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %46

34:                                               ; preds = %5
  %35 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %36 = load %struct.vnic_cq*, %struct.vnic_cq** %8, align 8
  %37 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %36, i32 0, i32 1
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @vnic_dev_alloc_desc_ring(%struct.vnic_dev* %35, i32* %37, i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %46

45:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %43, %29
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @vnic_dev_get_res(%struct.vnic_dev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @vnic_dev_alloc_desc_ring(%struct.vnic_dev*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
