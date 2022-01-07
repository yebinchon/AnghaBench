; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_write_param_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_write_param_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ipu_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [48 x i8] c"write param mem - addr = 0x%08X, data = 0x%08X\0A\00", align 1
@IPU_IMA_ADDR = common dso_local global i32 0, align 4
@IPU_IMA_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64)* @ipu_write_param_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_write_param_mem(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %7

7:                                                ; preds = %35, %3
  %8 = load i64, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ipu_data, i32 0, i32 0), align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @IPU_IMA_ADDR, align 4
  %18 = call i32 @idmac_write_ipureg(%struct.TYPE_3__* @ipu_data, i64 %16, i32 %17)
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %5, align 8
  %21 = load i64, i64* %19, align 8
  %22 = load i32, i32* @IPU_IMA_DATA, align 4
  %23 = call i32 @idmac_write_ipureg(%struct.TYPE_3__* @ipu_data, i64 %21, i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = and i64 %26, 7
  %28 = icmp eq i64 %27, 5
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, -8
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %29, %10
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %6, align 8
  br label %7

38:                                               ; preds = %7
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @idmac_write_ipureg(%struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
