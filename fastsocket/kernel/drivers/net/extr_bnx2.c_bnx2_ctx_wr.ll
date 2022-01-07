; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_ctx_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_ctx_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_CTX_CTX_DATA = common dso_local global i32 0, align 4
@BNX2_CTX_CTX_CTRL = common dso_local global i32 0, align 4
@BNX2_CTX_CTX_CTRL_WRITE_REQ = common dso_local global i32 0, align 4
@BNX2_CTX_DATA_ADR = common dso_local global i32 0, align 4
@BNX2_CTX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, i32, i32, i32)* @bnx2_ctx_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_ctx_wr(%struct.bnx2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %17 = call i64 @BNX2_CHIP(%struct.bnx2* %16)
  %18 = load i64, i64* @BNX2_CHIP_5709, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %22 = load i32, i32* @BNX2_CTX_CTX_DATA, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @BNX2_WR(%struct.bnx2* %21, i32 %22, i32 %23)
  %25 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %26 = load i32, i32* @BNX2_CTX_CTX_CTRL, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BNX2_CTX_CTX_CTRL_WRITE_REQ, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @BNX2_WR(%struct.bnx2* %25, i32 %26, i32 %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %45, %20
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %36 = load i32, i32* @BNX2_CTX_CTX_CTRL, align 4
  %37 = call i32 @BNX2_RD(%struct.bnx2* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BNX2_CTX_CTX_CTRL_WRITE_REQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %48

43:                                               ; preds = %34
  %44 = call i32 @udelay(i32 5)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %31

48:                                               ; preds = %42, %31
  br label %58

49:                                               ; preds = %4
  %50 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %51 = load i32, i32* @BNX2_CTX_DATA_ADR, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @BNX2_WR(%struct.bnx2* %50, i32 %51, i32 %52)
  %54 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %55 = load i32, i32* @BNX2_CTX_DATA, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @BNX2_WR(%struct.bnx2* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %48
  %59 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_bh(i32* %60)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
