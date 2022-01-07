; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_flash_cycle_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_flash_cycle_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%union.ich8_hws_flash_ctrl = type { i8* }
%union.ich8_hws_flash_status = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64)* @e1000_flash_cycle_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.ich8_hws_flash_ctrl, align 8
  %7 = alloca %union.ich8_hws_flash_status, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %10 = call i8* @er16flash(i32 %9)
  %11 = bitcast %union.ich8_hws_flash_ctrl* %6 to i8**
  store i8* %10, i8** %11, align 8
  %12 = bitcast %union.ich8_hws_flash_ctrl* %6 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %15 = bitcast %union.ich8_hws_flash_ctrl* %6 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @ew16flash(i32 %14, i8* %16)
  br label %18

18:                                               ; preds = %29, %2
  %19 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %20 = call i8* @er16flash(i32 %19)
  %21 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %20, i8** %21, align 8
  %22 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %34

27:                                               ; preds = %18
  %28 = call i32 @udelay(i32 1)
  br label %29

29:                                               ; preds = %27
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %18, label %34

34:                                               ; preds = %29, %26
  %35 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %39, %34
  %46 = load i32, i32* @E1000_ERR_NVM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %44
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i8* @er16flash(i32) #1

declare dso_local i32 @ew16flash(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
