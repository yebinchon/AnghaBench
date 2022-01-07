; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_butterfly.c_butterfly_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_butterfly.c_butterfly_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.butterfly = type { %struct.TYPE_2__, i32, %struct.parport* }
%struct.TYPE_2__ = type { i32 }
%struct.parport = type { i32 }

@butterfly = common dso_local global %struct.butterfly* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @butterfly_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @butterfly_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.butterfly*, align 8
  %4 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  %5 = load %struct.butterfly*, %struct.butterfly** @butterfly, align 8
  %6 = icmp ne %struct.butterfly* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.butterfly*, %struct.butterfly** @butterfly, align 8
  %9 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %8, i32 0, i32 2
  %10 = load %struct.parport*, %struct.parport** %9, align 8
  %11 = load %struct.parport*, %struct.parport** %2, align 8
  %12 = icmp ne %struct.parport* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  br label %37

14:                                               ; preds = %7
  %15 = load %struct.butterfly*, %struct.butterfly** @butterfly, align 8
  store %struct.butterfly* %15, %struct.butterfly** %3, align 8
  store %struct.butterfly* null, %struct.butterfly** @butterfly, align 8
  %16 = load %struct.butterfly*, %struct.butterfly** %3, align 8
  %17 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %16, i32 0, i32 0
  %18 = call i32 @spi_bitbang_stop(%struct.TYPE_2__* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.butterfly*, %struct.butterfly** %3, align 8
  %20 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %19, i32 0, i32 2
  %21 = load %struct.parport*, %struct.parport** %20, align 8
  %22 = call i32 @parport_write_data(%struct.parport* %21, i32 0)
  %23 = call i32 @msleep(i32 10)
  %24 = load %struct.butterfly*, %struct.butterfly** %3, align 8
  %25 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @parport_release(i32 %26)
  %28 = load %struct.butterfly*, %struct.butterfly** %3, align 8
  %29 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @parport_unregister_device(i32 %30)
  %32 = load %struct.butterfly*, %struct.butterfly** %3, align 8
  %33 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @spi_master_put(i32 %35)
  br label %37

37:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @spi_bitbang_stop(%struct.TYPE_2__*) #1

declare dso_local i32 @parport_write_data(%struct.parport*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @parport_release(i32) #1

declare dso_local i32 @parport_unregister_device(i32) #1

declare dso_local i32 @spi_master_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
