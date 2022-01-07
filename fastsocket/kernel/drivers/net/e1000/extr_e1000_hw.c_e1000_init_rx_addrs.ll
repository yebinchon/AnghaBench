; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_init_rx_addrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_init_rx_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"e1000_init_rx_addrs\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Programming MAC Address into RAR[0]\0A\00", align 1
@E1000_RAR_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Clearing RAR[1-15]\0A\00", align 1
@RA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_init_rx_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_init_rx_addrs(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @e1000_rar_set(%struct.e1000_hw* %7, i32 %10, i32 0)
  %12 = load i32, i32* @E1000_RAR_ENTRIES, align 4
  store i32 %12, i32* %4, align 4
  %13 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %32, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = load i32, i32* @RA, align 4
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 %21, 1
  %23 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %19, i32 %20, i32 %22, i32 0)
  %24 = call i32 (...) @E1000_WRITE_FLUSH()
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = load i32, i32* @RA, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 %27, 1
  %29 = add nsw i32 %28, 1
  %30 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %25, i32 %26, i32 %29, i32 0)
  %31 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %14

35:                                               ; preds = %14
  ret void
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_rar_set(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
