; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_hca.c_map_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_hca.c_map_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32 }

@IB_MTU_256 = common dso_local global i32 0, align 4
@IB_MTU_512 = common dso_local global i32 0, align 4
@IB_MTU_1024 = common dso_local global i32 0, align 4
@IB_MTU_2048 = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown MTU size: %x.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_shca*, i32)* @map_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_mtu(%struct.ehca_shca* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehca_shca*, align 8
  %5 = alloca i32, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 4, label %13
    i32 5, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @IB_MTU_256, align 4
  store i32 %8, i32* %3, align 4
  br label %22

9:                                                ; preds = %2
  %10 = load i32, i32* @IB_MTU_512, align 4
  store i32 %10, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @IB_MTU_1024, align 4
  store i32 %12, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @IB_MTU_2048, align 4
  store i32 %14, i32* %3, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @IB_MTU_4096, align 4
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %19 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ehca_err(i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %15, %13, %11, %9, %7
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @ehca_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
