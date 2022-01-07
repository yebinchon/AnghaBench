; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_link_sync_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_link_sync_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@VN_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_ATTN_0 = common dso_local global i64 0, align 8
@LINK_SYNC_ATTENTION_BIT_FUNC_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_link_sync_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_link_sync_notify(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load i32, i32* @VN_0, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = call i32 @BP_MAX_VN_NUM(%struct.bnx2x* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = call i32 @BP_VN(%struct.bnx2x* %13)
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %30

17:                                               ; preds = %11
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @func_by_vn(%struct.bnx2x* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_0, align 8
  %23 = load i32, i32* @LINK_SYNC_ATTENTION_BIT_FUNC_0, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %23, %24
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %22, %27
  %29 = call i32 @REG_WR(%struct.bnx2x* %21, i64 %28, i32 1)
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local i32 @BP_MAX_VN_NUM(%struct.bnx2x*) #1

declare dso_local i32 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @func_by_vn(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
