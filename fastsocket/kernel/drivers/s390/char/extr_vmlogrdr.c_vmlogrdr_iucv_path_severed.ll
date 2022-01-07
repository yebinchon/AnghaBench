; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_iucv_path_severed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_iucv_path_severed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.vmlogrdr_priv_t* }
%struct.vmlogrdr_priv_t = type { i32, i32, i64, i32* }

@.str = private unnamed_addr constant [45 x i8] c"vmlogrdr: connection severed with reason %i\0A\00", align 1
@conn_wait_queue = common dso_local global i32 0, align 4
@read_wait_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_path*, i32*)* @vmlogrdr_iucv_path_severed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmlogrdr_iucv_path_severed(%struct.iucv_path* %0, i32* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vmlogrdr_priv_t*, align 8
  %6 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %8 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %7, i32 0, i32 0
  %9 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %8, align 8
  store %struct.vmlogrdr_priv_t* %9, %struct.vmlogrdr_priv_t** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %16 = call i32 @iucv_path_sever(%struct.iucv_path* %15, i32* null)
  %17 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %18 = call i32 @kfree(%struct.iucv_path* %17)
  %19 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %5, align 8
  %20 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %5, align 8
  %22 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %5, align 8
  %25 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %5, align 8
  %27 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %5, align 8
  %29 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = call i32 @wake_up(i32* @conn_wait_queue)
  %32 = call i32 @wake_up_interruptible(i32* @read_wait_queue)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @iucv_path_sever(%struct.iucv_path*, i32*) #1

declare dso_local i32 @kfree(%struct.iucv_path*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
