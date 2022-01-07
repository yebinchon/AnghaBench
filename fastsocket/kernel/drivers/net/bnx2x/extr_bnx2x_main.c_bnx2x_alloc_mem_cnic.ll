; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_alloc_mem_cnic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_alloc_mem_cnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@SRC_T2_SZ = common dso_local global i32 0, align 4
@ILT_MEMOP_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_alloc_mem_cnic(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %5 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 4
  %14 = call i32 @BNX2X_PCI_ALLOC(i32 %11, i32* %13, i32 4)
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 4
  %22 = call i32 @BNX2X_PCI_ALLOC(i32 %19, i32* %21, i32 4)
  br label %23

23:                                               ; preds = %15, %7
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = call i64 @CONFIGURE_NIC_MODE(%struct.bnx2x* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 2
  %38 = load i32, i32* @SRC_T2_SZ, align 4
  %39 = call i32 @BNX2X_PCI_ALLOC(i32 %35, i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %27, %23
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = load i32, i32* @ILT_MEMOP_ALLOC, align 4
  %50 = call i64 @bnx2x_ilt_mem_op_cnic(%struct.bnx2x* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %54

53:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %60

54:                                               ; preds = %52
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = call i32 @bnx2x_free_mem_cnic(%struct.bnx2x* %55)
  %57 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %53
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_PCI_ALLOC(i32, i32*, i32) #1

declare dso_local i64 @CONFIGURE_NIC_MODE(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_ilt_mem_op_cnic(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_free_mem_cnic(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
