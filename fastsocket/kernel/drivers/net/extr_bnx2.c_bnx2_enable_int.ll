; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_enable_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_enable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, %struct.bnx2_napi* }
%struct.bnx2_napi = type { i32, i32 }

@BNX2_PCICFG_INT_ACK_CMD = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD_INDEX_VALID = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD_MASK_INT = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND_COAL_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_enable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_enable_int(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2_napi*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 2
  %14 = load %struct.bnx2_napi*, %struct.bnx2_napi** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %14, i64 %16
  store %struct.bnx2_napi* %17, %struct.bnx2_napi** %4, align 8
  %18 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %19 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %20 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_INDEX_VALID, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_MASK_INT, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %28 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = call i32 @BNX2_WR(%struct.bnx2* %18, i32 %19, i32 %30)
  %32 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %33 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %34 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_INDEX_VALID, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = call i32 @BNX2_WR(%struct.bnx2* %32, i32 %33, i32 %42)
  br label %44

44:                                               ; preds = %11
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %5
  %48 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %49 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %50 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %51 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BNX2_HC_COMMAND_COAL_NOW, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @BNX2_WR(%struct.bnx2* %48, i32 %49, i32 %54)
  ret void
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
