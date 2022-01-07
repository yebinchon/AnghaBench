; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_free_mem_cnic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_free_mem_cnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ILT_MEMOP_FREE = common dso_local global i32 0, align 4
@SRC_T2_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_free_mem_cnic(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = load i32, i32* @ILT_MEMOP_FREE, align 4
  %5 = call i32 @bnx2x_ilt_mem_op_cnic(%struct.bnx2x* %3, i32 %4)
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BNX2X_PCI_FREE(i32 %13, i32 %16, i32 4)
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BNX2X_PCI_FREE(i32 %22, i32 %25, i32 4)
  br label %27

27:                                               ; preds = %18, %9
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SRC_T2_SZ, align 4
  %35 = call i32 @BNX2X_PCI_FREE(i32 %30, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @bnx2x_ilt_mem_op_cnic(%struct.bnx2x*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_PCI_FREE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
