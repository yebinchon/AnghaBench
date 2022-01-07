; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_iucv_path_severed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_iucv_path_severed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.mon_private* }
%struct.mon_private = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"z/VM *MONITOR system service disconnected with rc=%i\0A\00", align 1
@mon_conn_wait_queue = common dso_local global i32 0, align 4
@mon_read_wait_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_path*, i32*)* @mon_iucv_path_severed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_iucv_path_severed(%struct.iucv_path* %0, i32* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mon_private*, align 8
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %7 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %6, i32 0, i32 0
  %8 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  store %struct.mon_private* %8, %struct.mon_private** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %14 = call i32 @iucv_path_sever(%struct.iucv_path* %13, i32* null)
  %15 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %16 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %15, i32 0, i32 0
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  %18 = call i32 @wake_up(i32* @mon_conn_wait_queue)
  %19 = call i32 @wake_up_interruptible(i32* @mon_read_wait_queue)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @iucv_path_sever(%struct.iucv_path*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
