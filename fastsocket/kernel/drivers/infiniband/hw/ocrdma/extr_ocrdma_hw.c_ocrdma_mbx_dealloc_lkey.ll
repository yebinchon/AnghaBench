; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_dealloc_lkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_dealloc_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_dealloc_lkey = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_DEALLOC_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_dealloc_lkey(%struct.ocrdma_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_dealloc_lkey*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @OCRDMA_CMD_DEALLOC_LKEY, align 4
  %13 = call %struct.ocrdma_dealloc_lkey* @ocrdma_init_emb_mqe(i32 %12, i32 8)
  store %struct.ocrdma_dealloc_lkey* %13, %struct.ocrdma_dealloc_lkey** %9, align 8
  %14 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %15 = icmp ne %struct.ocrdma_dealloc_lkey* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %22 = getelementptr inbounds %struct.ocrdma_dealloc_lkey, %struct.ocrdma_dealloc_lkey* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %28 = getelementptr inbounds %struct.ocrdma_dealloc_lkey, %struct.ocrdma_dealloc_lkey* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %30 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %31 = bitcast %struct.ocrdma_dealloc_lkey* %30 to %struct.ocrdma_mqe*
  %32 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %29, %struct.ocrdma_mqe* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %37

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.ocrdma_dealloc_lkey*, %struct.ocrdma_dealloc_lkey** %9, align 8
  %39 = call i32 @kfree(%struct.ocrdma_dealloc_lkey* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.ocrdma_dealloc_lkey* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_dealloc_lkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
