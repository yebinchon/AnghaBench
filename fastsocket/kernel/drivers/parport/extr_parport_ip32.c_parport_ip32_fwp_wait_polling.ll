; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ip32.c_parport_ip32_fwp_wait_polling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ip32.c_parport_ip32_fwp_wait_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_2__*, %struct.parport*, %struct.parport_ip32_private* }
%struct.TYPE_2__ = type { i64 }
%struct.parport_ip32_private = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ECR_F_EMPTY = common dso_local global i32 0, align 4
@FIFO_POLLING_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @parport_ip32_fwp_wait_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ip32_fwp_wait_polling(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.parport_ip32_private*, align 8
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  %8 = load %struct.parport*, %struct.parport** %2, align 8
  %9 = getelementptr inbounds %struct.parport, %struct.parport* %8, i32 0, i32 1
  %10 = load %struct.parport*, %struct.parport** %9, align 8
  %11 = getelementptr inbounds %struct.parport, %struct.parport* %10, i32 0, i32 2
  %12 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %11, align 8
  store %struct.parport_ip32_private* %12, %struct.parport_ip32_private** %3, align 8
  %13 = load %struct.parport*, %struct.parport** %2, align 8
  %14 = getelementptr inbounds %struct.parport, %struct.parport* %13, i32 0, i32 1
  %15 = load %struct.parport*, %struct.parport** %14, align 8
  store %struct.parport* %15, %struct.parport** %4, align 8
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.parport*, %struct.parport** %4, align 8
  %18 = getelementptr inbounds %struct.parport, %struct.parport* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %16, %21
  store i64 %22, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %1, %40
  %24 = load %struct.parport*, %struct.parport** %2, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @parport_ip32_fifo_wait_break(%struct.parport* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %43

29:                                               ; preds = %23
  %30 = load %struct.parport*, %struct.parport** %2, align 8
  %31 = call i32 @parport_ip32_read_econtrol(%struct.parport* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ECR_F_EMPTY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %3, align 8
  %38 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @FIFO_POLLING_INTERVAL, align 4
  %42 = call i32 @udelay(i32 %41)
  br label %23

43:                                               ; preds = %36, %28
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @parport_ip32_fifo_wait_break(%struct.parport*, i64) #1

declare dso_local i32 @parport_ip32_read_econtrol(%struct.parport*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
