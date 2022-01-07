; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_return_init_enet_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_return_init_enet_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { i32 }

@ENET_INIT_PARAM_RISC_MASK = common dso_local global i32 0, align 4
@ENET_INIT_PARAM_SNUM_MASK = common dso_local global i32 0, align 4
@ENET_INIT_PARAM_SNUM_SHIFT = common dso_local global i32 0, align 4
@ENET_INIT_PARAM_PTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*, i32*, i64, i32, i32)* @return_init_enet_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_init_enet_entries(%struct.ucc_geth_private* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ucc_geth_private*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %51, %5
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @ENET_INIT_PARAM_RISC_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %19
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @ENET_INIT_PARAM_SNUM_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @ENET_INIT_PARAM_SNUM_SHIFT, align 4
  %32 = lshr i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @qe_put_snum(i64 %34)
  %36 = load i64, i64* %12, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38, %27
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @ENET_INIT_PARAM_PTR_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @qe_muram_free(i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %7, align 8
  store i32 0, i32* %48, align 4
  br label %50

50:                                               ; preds = %47, %19
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %15

54:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @qe_put_snum(i64) #1

declare dso_local i32 @qe_muram_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
