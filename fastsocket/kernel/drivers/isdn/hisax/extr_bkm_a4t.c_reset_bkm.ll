; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a4t.c_reset_bkm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_bkm_a4t.c_reset_bkm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@ISDN_CTYPE_BKM_A4T = common dso_local global i64 0, align 8
@sysRESET = common dso_local global i32 0, align 4
@sysCFG = common dso_local global i32 0, align 4
@guestWAIT_CFG = common dso_local global i32 0, align 4
@g_A4T_JADE_RES = common dso_local global i32 0, align 4
@g_A4T_ISAR_RES = common dso_local global i32 0, align 4
@g_A4T_ISAC_RES = common dso_local global i32 0, align 4
@g_A4T_JADE_BOOTR = common dso_local global i32 0, align 4
@g_A4T_ISAR_BOOTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @reset_bkm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_bkm(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ISDN_CTYPE_BKM_A4T, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %54

9:                                                ; preds = %1
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 255, i32* %17, align 4
  %18 = call i32 @mdelay(i32 10)
  %19 = load i32, i32* @sysRESET, align 4
  %20 = or i32 %19, 255
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = call i32 @mdelay(i32 10)
  %24 = load i32, i32* @sysRESET, align 4
  %25 = load i32, i32* @sysCFG, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @guestWAIT_CFG, align 4
  %30 = load i32, i32* @g_A4T_JADE_RES, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @g_A4T_ISAR_RES, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @g_A4T_ISAC_RES, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @g_A4T_JADE_BOOTR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @g_A4T_ISAR_BOOTR, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = call i32 @mdelay(i32 10)
  %43 = load i32, i32* @g_A4T_ISAC_RES, align 4
  %44 = load i32, i32* @g_A4T_JADE_RES, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @g_A4T_ISAR_RES, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = call i32 @mdelay(i32 10)
  br label %54

54:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
