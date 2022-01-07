; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_ma_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_ma_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@MA_INT_CAUSE = common dso_local global i32 0, align 4
@MEM_PERR_INT_CAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MA parity error, parity status %#x\0A\00", align 1
@MA_PARITY_ERROR_STATUS = common dso_local global i32 0, align 4
@MEM_WRAP_INT_CAUSE = common dso_local global i32 0, align 4
@MA_INT_WRAP_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"MA address wrap-around error by client %u to address %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ma_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ma_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = load i32, i32* @MA_INT_CAUSE, align 4
  %7 = call i32 @t4_read_reg(%struct.adapter* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MEM_PERR_INT_CAUSE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* @MA_PARITY_ERROR_STATUS, align 4
  %18 = call i32 @t4_read_reg(%struct.adapter* %16, i32 %17)
  %19 = call i32 (i32, i8*, i32, ...) @dev_alert(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MEM_WRAP_INT_CAUSE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = load i32, i32* @MA_INT_WRAP_STATUS, align 4
  %28 = call i32 @t4_read_reg(%struct.adapter* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @MEM_WRAP_CLIENT_NUM_GET(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @MEM_WRAP_ADDRESS_GET(i32 %34)
  %36 = shl i32 %35, 4
  %37 = call i32 (i32, i8*, i32, ...) @dev_alert(i32 %31, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %25, %20
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = load i32, i32* @MA_INT_CAUSE, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @t4_write_reg(%struct.adapter* %39, i32 %40, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = call i32 @t4_fatal_err(%struct.adapter* %43)
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @dev_alert(i32, i8*, i32, ...) #1

declare dso_local i32 @MEM_WRAP_CLIENT_NUM_GET(i32) #1

declare dso_local i32 @MEM_WRAP_ADDRESS_GET(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
