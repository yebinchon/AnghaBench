; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_pm3386.c_pm3386_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_pm3386.c_pm3386_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm3386_get_stats(i32 %0, %struct.net_device_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device_stats*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.net_device_stats* %1, %struct.net_device_stats** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pm3386_port_reg_write(i32 %5, i32 1280, i32 256, i32 1)
  br label %7

7:                                                ; preds = %12, %2
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @pm3386_port_reg_read(i32 %8, i32 1280, i32 256)
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %7

13:                                               ; preds = %7
  %14 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %15 = call i32 @memset(%struct.net_device_stats* %14, i32 0, i32 32)
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @pm3386_get_stat(i32 %16, i32 1296)
  %18 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %19 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @pm3386_get_stat(i32 %20, i32 1424)
  %22 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %23 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i8* @pm3386_get_stat(i32 %24, i32 1300)
  %26 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %27 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @pm3386_get_stat(i32 %28, i32 1428)
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  ret void
}

declare dso_local i32 @pm3386_port_reg_write(i32, i32, i32, i32) #1

declare dso_local i32 @pm3386_port_reg_read(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.net_device_stats*, i32, i32) #1

declare dso_local i8* @pm3386_get_stat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
