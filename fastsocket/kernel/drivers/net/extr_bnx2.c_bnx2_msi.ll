; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2_napi = type { i32, %struct.TYPE_2__, %struct.bnx2* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2 = type { i32 }

@BNX2_PCICFG_INT_ACK_CMD = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD_MASK_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bnx2_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_msi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bnx2_napi*, align 8
  %7 = alloca %struct.bnx2*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.bnx2_napi*
  store %struct.bnx2_napi* %9, %struct.bnx2_napi** %6, align 8
  %10 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %10, i32 0, i32 2
  %12 = load %struct.bnx2*, %struct.bnx2** %11, align 8
  store %struct.bnx2* %12, %struct.bnx2** %7, align 8
  %13 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %14 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @prefetch(i32 %16)
  %18 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %19 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %20 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM, align 4
  %21 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_MASK_INT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @BNX2_WR(%struct.bnx2* %18, i32 %19, i32 %22)
  %24 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %35 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %34, i32 0, i32 0
  %36 = call i32 @napi_schedule(i32* %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
