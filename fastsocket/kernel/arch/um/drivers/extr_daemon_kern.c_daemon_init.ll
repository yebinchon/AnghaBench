; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_daemon_kern.c_daemon_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_daemon_kern.c_daemon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.uml_net_private = type { i64 }
%struct.daemon_data = type { i32, i32, i32, i32, i32*, i32*, i32*, %struct.net_device* }
%struct.daemon_init = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"daemon backend (uml_switch version %d) - %s:%s\00", align 1
@SWITCH_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*)* @daemon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daemon_init(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uml_net_private*, align 8
  %6 = alloca %struct.daemon_data*, align 8
  %7 = alloca %struct.daemon_init*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.daemon_init*
  store %struct.daemon_init* %9, %struct.daemon_init** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.uml_net_private* @netdev_priv(%struct.net_device* %10)
  store %struct.uml_net_private* %11, %struct.uml_net_private** %5, align 8
  %12 = load %struct.uml_net_private*, %struct.uml_net_private** %5, align 8
  %13 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.daemon_data*
  store %struct.daemon_data* %15, %struct.daemon_data** %6, align 8
  %16 = load %struct.daemon_init*, %struct.daemon_init** %7, align 8
  %17 = getelementptr inbounds %struct.daemon_init, %struct.daemon_init* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %20 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.daemon_init*, %struct.daemon_init** %7, align 8
  %22 = getelementptr inbounds %struct.daemon_init, %struct.daemon_init* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %25 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %27 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %29 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %32 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %31, i32 0, i32 7
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %34 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %33, i32 0, i32 6
  store i32* null, i32** %34, align 8
  %35 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %36 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %38 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @SWITCH_VERSION, align 4
  %40 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %41 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.daemon_data*, %struct.daemon_data** %6, align 8
  %44 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.uml_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
