; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/sb1250/extr_bus_watcher.c_check_bus_watcher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/sb1250/extr_bus_watcher.c_check_bus_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@A_SCD_BUS_ERR_STATUS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Using last values reaped by bus watcher driver\0A\00", align 1
@bw_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@A_BUS_L2_ERRORS = common dso_local global i32 0, align 4
@A_BUS_MEM_IO_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Bus watcher indicates no error\0A\00", align 1
@A_SCD_BUS_ERR_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_bus_watcher() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @A_SCD_BUS_ERR_STATUS_DEBUG, align 4
  %5 = call i32 @IOADDR(i32 %4)
  %6 = call i32 @csr_in32(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = and i32 %7, 2147483647
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %0
  %11 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bw_stats, i32 0, i32 0), align 4
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bw_stats, i32 0, i32 1), align 4
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bw_stats, i32 0, i32 2), align 4
  store i32 %14, i32* %3, align 4
  br label %22

15:                                               ; preds = %0
  %16 = load i32, i32* @A_BUS_L2_ERRORS, align 4
  %17 = call i32 @IOADDR(i32 %16)
  %18 = call i32 @csr_in32(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @A_BUS_MEM_IO_ERRORS, align 4
  %20 = call i32 @IOADDR(i32 %19)
  %21 = call i32 @csr_in32(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %10
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, -2147483649
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @print_summary(i32 %28, i32 %29, i32 %30)
  br label %34

32:                                               ; preds = %22
  %33 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @csr_in32(i32) #1

declare dso_local i32 @IOADDR(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @print_summary(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
