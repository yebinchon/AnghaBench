; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pcmcia_unregister_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pcmcia_unregister_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"pcmcia_unregister_socket(0x%p)\0A\00", align 1
@pcmcia_socket_list_rwsem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcmcia_unregister_socket(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %4 = icmp ne %struct.pcmcia_socket* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %34

6:                                                ; preds = %1
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @cs_dbg(%struct.pcmcia_socket* %7, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @kthread_stop(i64 %19)
  br label %21

21:                                               ; preds = %16, %6
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %23 = call i32 @release_cis_mem(%struct.pcmcia_socket* %22)
  %24 = call i32 @down_write(i32* @pcmcia_socket_list_rwsem)
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 1
  %27 = call i32 @list_del(i32* %26)
  %28 = call i32 @up_write(i32* @pcmcia_socket_list_rwsem)
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %30 = call i32 @release_resource_db(%struct.pcmcia_socket* %29)
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %32 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 0
  %33 = call i32 @wait_for_completion(i32* %32)
  br label %34

34:                                               ; preds = %21, %5
  ret void
}

declare dso_local i32 @cs_dbg(%struct.pcmcia_socket*, i32, i8*, i32) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @release_cis_mem(%struct.pcmcia_socket*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @release_resource_db(%struct.pcmcia_socket*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
