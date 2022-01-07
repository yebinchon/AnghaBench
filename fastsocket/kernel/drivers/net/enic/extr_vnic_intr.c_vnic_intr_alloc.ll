; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_intr.c_vnic_intr_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_intr.c_vnic_intr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.vnic_intr = type { i32, i32, %struct.vnic_dev* }

@RES_TYPE_INTR_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to hook INTR[%d].ctrl resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_intr_alloc(%struct.vnic_dev* %0, %struct.vnic_intr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnic_dev*, align 8
  %6 = alloca %struct.vnic_intr*, align 8
  %7 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %5, align 8
  store %struct.vnic_intr* %1, %struct.vnic_intr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vnic_intr*, %struct.vnic_intr** %6, align 8
  %10 = getelementptr inbounds %struct.vnic_intr, %struct.vnic_intr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %12 = load %struct.vnic_intr*, %struct.vnic_intr** %6, align 8
  %13 = getelementptr inbounds %struct.vnic_intr, %struct.vnic_intr* %12, i32 0, i32 2
  store %struct.vnic_dev* %11, %struct.vnic_dev** %13, align 8
  %14 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %15 = load i32, i32* @RES_TYPE_INTR_CTRL, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @vnic_dev_get_res(%struct.vnic_dev* %14, i32 %15, i32 %16)
  %18 = load %struct.vnic_intr*, %struct.vnic_intr** %6, align 8
  %19 = getelementptr inbounds %struct.vnic_intr, %struct.vnic_intr* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.vnic_intr*, %struct.vnic_intr** %6, align 8
  %21 = getelementptr inbounds %struct.vnic_intr, %struct.vnic_intr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @vnic_dev_get_res(%struct.vnic_dev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
