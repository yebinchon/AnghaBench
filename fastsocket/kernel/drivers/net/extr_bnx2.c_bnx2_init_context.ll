; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_init_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_CHIP_ID_5706_A0 = common dso_local global i64 0, align 8
@CTX_SIZE = common dso_local global i32 0, align 4
@PHY_CTX_SIZE = common dso_local global i32 0, align 4
@PHY_CTX_SHIFT = common dso_local global i32 0, align 4
@BNX2_CTX_VIRT_ADDR = common dso_local global i32 0, align 4
@BNX2_CTX_PAGE_TBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_init_context(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 96, i32* %3, align 4
  br label %9

9:                                                ; preds = %83, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %84

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %16 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %15)
  %17 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @GET_PCID_ADDR(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 240
  %28 = add nsw i32 96, %27
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 7
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %8, align 4
  br label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @GET_PCID_ADDR(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %41

37:                                               ; preds = %12
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @GET_CID_ADDR(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %34
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %80, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @CTX_SIZE, align 4
  %45 = load i32, i32* @PHY_CTX_SIZE, align 4
  %46 = sdiv i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @PHY_CTX_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PHY_CTX_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %60 = load i32, i32* @BNX2_CTX_VIRT_ADDR, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @BNX2_WR(%struct.bnx2* %59, i32 %60, i32 %61)
  %63 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %64 = load i32, i32* @BNX2_CTX_PAGE_TBL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @BNX2_WR(%struct.bnx2* %63, i32 %64, i32 %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %76, %48
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PHY_CTX_SIZE, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @bnx2_ctx_wr(%struct.bnx2* %72, i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %6, align 4
  br label %67

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %42

83:                                               ; preds = %42
  br label %9

84:                                               ; preds = %9
  ret void
}

declare dso_local i64 @BNX2_CHIP_ID(%struct.bnx2*) #1

declare dso_local i32 @GET_PCID_ADDR(i32) #1

declare dso_local i32 @GET_CID_ADDR(i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_ctx_wr(%struct.bnx2*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
