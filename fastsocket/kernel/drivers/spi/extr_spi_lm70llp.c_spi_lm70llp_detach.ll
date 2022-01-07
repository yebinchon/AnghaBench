; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_lm70llp.c_spi_lm70llp_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_lm70llp.c_spi_lm70llp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_lm70llp = type { %struct.TYPE_2__, i32, %struct.parport* }
%struct.TYPE_2__ = type { i32 }
%struct.parport = type { i32 }

@lm70llp = common dso_local global %struct.spi_lm70llp* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @spi_lm70llp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_lm70llp_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.spi_lm70llp*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** @lm70llp, align 8
  %5 = icmp ne %struct.spi_lm70llp* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** @lm70llp, align 8
  %8 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %7, i32 0, i32 2
  %9 = load %struct.parport*, %struct.parport** %8, align 8
  %10 = load %struct.parport*, %struct.parport** %2, align 8
  %11 = icmp ne %struct.parport* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  br label %35

13:                                               ; preds = %6
  %14 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** @lm70llp, align 8
  store %struct.spi_lm70llp* %14, %struct.spi_lm70llp** %3, align 8
  %15 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %3, align 8
  %16 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %15, i32 0, i32 0
  %17 = call i32 @spi_bitbang_stop(%struct.TYPE_2__* %16)
  %18 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %3, align 8
  %19 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %18, i32 0, i32 2
  %20 = load %struct.parport*, %struct.parport** %19, align 8
  %21 = call i32 @parport_write_data(%struct.parport* %20, i32 0)
  %22 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %3, align 8
  %23 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @parport_release(i32 %24)
  %26 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %3, align 8
  %27 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @parport_unregister_device(i32 %28)
  %30 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %3, align 8
  %31 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @spi_master_put(i32 %33)
  store %struct.spi_lm70llp* null, %struct.spi_lm70llp** @lm70llp, align 8
  br label %35

35:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @spi_bitbang_stop(%struct.TYPE_2__*) #1

declare dso_local i32 @parport_write_data(%struct.parport*, i32) #1

declare dso_local i32 @parport_release(i32) #1

declare dso_local i32 @parport_unregister_device(i32) #1

declare dso_local i32 @spi_master_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
