; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*)* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"shutdown\0A\00", align 1
@SOCKET_INUSE = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@shutdown_delay = common dso_local global i32 0, align 4
@dead_socket = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"*** DANGER *** unable to remove socket power\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_socket*)* @socket_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_shutdown(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %5 = call i32 @cs_dbg(%struct.pcmcia_socket* %4, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %7 = call i32 @socket_remove_drivers(%struct.pcmcia_socket* %6)
  %8 = load i32, i32* @SOCKET_INUSE, align 4
  %9 = load i32, i32* @SOCKET_PRESENT, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @shutdown_delay, align 4
  %16 = mul nsw i32 %15, 10
  %17 = call i32 @msleep(i32 %16)
  %18 = load i32, i32* @SOCKET_INUSE, align 4
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @dead_socket, align 4
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %27 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %29, align 8
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %32 = call i32 %30(%struct.pcmcia_socket* %31)
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %34 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %36, align 8
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 6
  %41 = call i32 %37(%struct.pcmcia_socket* %38, i32* %40)
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %43 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %46 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %51 = call i32 @destroy_cis_cache(%struct.pcmcia_socket* %50)
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %53 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = call i32 @msleep(i32 100)
  %55 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %56 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %58, align 8
  %60 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %61 = call i32 %59(%struct.pcmcia_socket* %60, i32* %3)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SS_POWERON, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %1
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %69 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %68, i32 0, i32 1
  %70 = call i32 @dev_printk(i32 %67, i32* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %1
  %72 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %73 = call i32 @cs_socket_put(%struct.pcmcia_socket* %72)
  ret void
}

declare dso_local i32 @cs_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @socket_remove_drivers(%struct.pcmcia_socket*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @destroy_cis_cache(%struct.pcmcia_socket*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @cs_socket_put(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
