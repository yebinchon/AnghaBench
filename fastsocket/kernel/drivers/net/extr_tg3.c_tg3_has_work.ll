; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_has_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_has_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i64, i64*, i64, %struct.tg3_hw_status*, %struct.tg3* }
%struct.tg3_hw_status = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tg3 = type { i32 }

@USE_LINKCHG_REG = common dso_local global i32 0, align 4
@POLL_SERDES = common dso_local global i32 0, align 4
@SD_STATUS_LINK_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3_napi*)* @tg3_has_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_has_work(%struct.tg3_napi* %0) #0 {
  %2 = alloca %struct.tg3_napi*, align 8
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.tg3_hw_status*, align 8
  %5 = alloca i32, align 4
  store %struct.tg3_napi* %0, %struct.tg3_napi** %2, align 8
  %6 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %7 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %6, i32 0, i32 4
  %8 = load %struct.tg3*, %struct.tg3** %7, align 8
  store %struct.tg3* %8, %struct.tg3** %3, align 8
  %9 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %10 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %9, i32 0, i32 3
  %11 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %10, align 8
  store %struct.tg3_hw_status* %11, %struct.tg3_hw_status** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = load i32, i32* @USE_LINKCHG_REG, align 4
  %14 = call i64 @tg3_flag(%struct.tg3* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = load i32, i32* @POLL_SERDES, align 4
  %19 = call i64 @tg3_flag(%struct.tg3* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %4, align 8
  %23 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SD_STATUS_LINK_CHG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %21
  br label %30

30:                                               ; preds = %29, %16, %1
  %31 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %4, align 8
  %32 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %38 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %44 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %49 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %53 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %47, %42
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
