; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_dev_for_parity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_dev_for_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.raid_set = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@DM_RH_NOSYNC = common dso_local global i32 0, align 4
@DM_RH_RECOVERING = common dso_local global i32 0, align 4
@raid4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*, i32*)* @dev_for_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_for_parity(%struct.stripe* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stripe*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.raid_set*, align 8
  %7 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.stripe*, %struct.stripe** %4, align 8
  %9 = getelementptr inbounds %struct.stripe, %struct.stripe* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.raid_set* @RS(i32 %10)
  store %struct.raid_set* %11, %struct.raid_set** %6, align 8
  %12 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %13 = load %struct.stripe*, %struct.stripe** %4, align 8
  %14 = getelementptr inbounds %struct.stripe, %struct.stripe* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DM_RH_NOSYNC, align 4
  %17 = load i32, i32* @DM_RH_RECOVERING, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @region_state(%struct.raid_set* %12, i32 %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %29 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %35 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %27, %2
  %39 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %40 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @raid4, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %49 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %62

52:                                               ; preds = %38
  %53 = load %struct.stripe*, %struct.stripe** %4, align 8
  %54 = call i32 @StripeRecover(%struct.stripe* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load %struct.stripe*, %struct.stripe** %4, align 8
  %58 = getelementptr inbounds %struct.stripe, %struct.stripe* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %56, %47, %33
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i32 @region_state(%struct.raid_set*, i32, i32) #1

declare dso_local i32 @StripeRecover(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
