; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_i596_scp_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_i596_scp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i596_private = type { %struct.TYPE_2__, %struct.TYPE_2__, i32*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i8*, i8*, i64 }

@I596_NULL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@PORT_RESET = common dso_local global i32 0, align 4
@PORT_ALTSCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: i82596 initialization timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @i596_scp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i596_scp_setup(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i596_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.i596_private* @netdev_priv(%struct.net_device* %6)
  store %struct.i596_private* %7, %struct.i596_private** %4, align 8
  %8 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %9 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 4456448, i32* %10, align 8
  %11 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %12 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %15 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %14, i32 0, i32 0
  %16 = call i8* @va_to_pa(%struct.TYPE_2__* %15)
  %17 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %18 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  store i8* %16, i8** %19, align 8
  %20 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %21 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %24 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %23, i32 0, i32 5
  %25 = call i8* @va_to_pa(%struct.TYPE_2__* %24)
  %26 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %27 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i8* %25, i8** %28, align 8
  %29 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %30 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %33 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @I596_NULL, align 4
  %36 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %37 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %41 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %43 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %45 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @PORT_RESET, align 4
  %47 = call i32 @PORT(i8* null, i32 %46)
  %48 = call i32 @udelay(i32 100)
  %49 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %50 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %49, i32 0, i32 1
  %51 = call i8* @va_to_pa(%struct.TYPE_2__* %50)
  %52 = load i32, i32* @PORT_ALTSCP, align 4
  %53 = call i32 @PORT(i8* %51, i32 %52)
  %54 = call i32 (...) @CA()
  store i32 100, i32* %5, align 4
  br label %55

55:                                               ; preds = %70, %1
  %56 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %57 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 1, i32* %2, align 4
  br label %74

70:                                               ; preds = %61
  %71 = call i32 @udelay(i32 5)
  %72 = call i32 (...) @barrier()
  br label %55

73:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @va_to_pa(%struct.TYPE_2__*) #1

declare dso_local i32 @PORT(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @CA(...) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
