; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_eq_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_eq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i64 }

@DB_EQ_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_EQ_RING_ID_EXT_MASK = common dso_local global i32 0, align 4
@DB_EQ_RING_ID_EXT_MASK_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_REARM_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_CLR_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_EVNT_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_NUM_POPPED_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, i32, i32, i32, i32)* @be_eq_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_eq_notify(%struct.be_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DB_EQ_RING_ID_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %11, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DB_EQ_RING_ID_EXT_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @DB_EQ_RING_ID_EXT_MASK_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %62

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @DB_EQ_REARM_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @DB_EQ_CLR_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @DB_EQ_EVNT_SHIFT, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @DB_EQ_NUM_POPPED_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DB_EQ_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @iowrite32(i32 %55, i64 %60)
  br label %62

62:                                               ; preds = %45, %28
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
