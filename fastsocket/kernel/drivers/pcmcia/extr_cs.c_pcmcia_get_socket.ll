; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pcmcia_get_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pcmcia_get_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcmcia_socket* @pcmcia_get_socket(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %6 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 0
  %7 = call %struct.device* @get_device(i32* %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.pcmcia_socket* null, %struct.pcmcia_socket** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.pcmcia_socket* @dev_get_drvdata(%struct.device* %12)
  store %struct.pcmcia_socket* %13, %struct.pcmcia_socket** %3, align 8
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @try_module_get(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 0
  %22 = call i32 @put_device(i32* %21)
  store %struct.pcmcia_socket* null, %struct.pcmcia_socket** %2, align 8
  br label %25

23:                                               ; preds = %11
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  store %struct.pcmcia_socket* %24, %struct.pcmcia_socket** %2, align 8
  br label %25

25:                                               ; preds = %23, %19, %10
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  ret %struct.pcmcia_socket* %26
}

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local %struct.pcmcia_socket* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
