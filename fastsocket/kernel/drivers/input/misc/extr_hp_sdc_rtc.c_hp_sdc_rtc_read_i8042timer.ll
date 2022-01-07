; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_read_i8042timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_read_i8042timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@HP_SDC_ACT_PRECMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_POSTCMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAIN = common dso_local global i32 0, align 4
@HP_SDC_CMD_READ_T1 = common dso_local global i32 0, align 4
@HP_SDC_CMD_READ_T2 = common dso_local global i32 0, align 4
@HP_SDC_CMD_READ_T3 = common dso_local global i32 0, align 4
@HP_SDC_CMD_READ_T4 = common dso_local global i32 0, align 4
@HP_SDC_CMD_READ_T5 = common dso_local global i32 0, align 4
@HP_SDC_ACT_SEMAPHORE = common dso_local global i32 0, align 4
@i8042tregs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hp_sdc_rtc_read_i8042timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_read_i8042timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca [26 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* @HP_SDC_ACT_PRECMD, align 4
  %10 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* @HP_SDC_CMD_READ_T1, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %22 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds i32, i32* %20, i64 1
  %25 = load i32, i32* @HP_SDC_CMD_READ_T2, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 2, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %31 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds i32, i32* %29, i64 1
  %34 = load i32, i32* @HP_SDC_CMD_READ_T3, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 2, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %40 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds i32, i32* %38, i64 1
  %43 = load i32, i32* @HP_SDC_CMD_READ_T4, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 2, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %49 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %47, align 4
  %51 = getelementptr inbounds i32, i32* %47, i64 1
  %52 = load i32, i32* @HP_SDC_CMD_READ_T5, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 2, i32* %53, align 4
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %56, 5
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @HP_SDC_ACT_SEMAPHORE, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %61
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32* %69, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32* @i8042tregs, i32** %72, align 8
  %73 = call i32 @down_interruptible(i32* @i8042tregs)
  %74 = call i64 @hp_sdc_enqueue_transaction(%struct.TYPE_5__* %6)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %98

77:                                               ; preds = %2
  %78 = call i32 @down_interruptible(i32* @i8042tregs)
  %79 = call i32 @up(i32* @i8042tregs)
  %80 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 5
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 10
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %83, 8
  %85 = or i32 %81, %84
  %86 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 15
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 16
  %89 = or i32 %85, %88
  %90 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 20
  %91 = load i32, i32* %90, align 16
  %92 = shl i32 %91, 24
  %93 = or i32 %89, %92
  %94 = getelementptr inbounds [26 x i32], [26 x i32]* %7, i64 0, i64 25
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 32
  %97 = or i32 %93, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %77, %76
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i64 @hp_sdc_enqueue_transaction(%struct.TYPE_5__*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
