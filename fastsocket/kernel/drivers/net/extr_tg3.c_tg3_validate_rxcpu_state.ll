; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_validate_rxcpu_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_validate_rxcpu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@RX_CPU_HWBKPT = common dso_local global i32 0, align 4
@TG3_SBROM_IN_SERVICE_LOOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Boot code not ready for service patches\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TG3_57766_FW_HANDSHAKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Other patches exist. Not downloading EEE patch\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_validate_rxcpu_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_validate_rxcpu_state(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 1000, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i32, i32* @RX_CPU_HWBKPT, align 4
  %12 = call i64 @tr32(i32 %11)
  %13 = load i64, i64* @TG3_SBROM_IN_SERVICE_LOOP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %21

16:                                               ; preds = %10
  %17 = call i32 @udelay(i32 10)
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %7

21:                                               ; preds = %15, %7
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 1000
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.tg3*, %struct.tg3** %3, align 8
  %26 = getelementptr inbounds %struct.tg3, %struct.tg3* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netdev_err(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %21
  %32 = load %struct.tg3*, %struct.tg3** %3, align 8
  %33 = load i32, i32* @TG3_57766_FW_HANDSHAKE, align 4
  %34 = call i32 @tg3_read_indirect_reg32(%struct.tg3* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 255
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = getelementptr inbounds %struct.tg3, %struct.tg3* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netdev_warn(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EEXIST, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %38, %24
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @tr32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @tg3_read_indirect_reg32(%struct.tg3*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
