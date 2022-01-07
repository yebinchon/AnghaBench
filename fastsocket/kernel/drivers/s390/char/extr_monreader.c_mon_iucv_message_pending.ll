; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_iucv_message_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_iucv_message_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.mon_private* }
%struct.mon_private = type { i64, i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iucv_message = type { i32 }

@MON_MSGLIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"The read queue for monitor data is full\0A\00", align 1
@mon_read_wait_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_path*, %struct.iucv_message*)* @mon_iucv_message_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_iucv_message_pending(%struct.iucv_path* %0, %struct.iucv_message* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca %struct.iucv_message*, align 8
  %5 = alloca %struct.mon_private*, align 8
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %4, align 8
  %6 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %7 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %6, i32 0, i32 0
  %8 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  store %struct.mon_private* %8, %struct.mon_private** %5, align 8
  %9 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %10 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %13 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %19 = call i32 @memcpy(i32* %17, %struct.iucv_message* %18, i32 4)
  %20 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %21 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %20, i32 0, i32 3
  %22 = call i32 @atomic_inc_return(i32* %21)
  %23 = load i32, i32* @MON_MSGLIM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = call i32 @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %28 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %31 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %2
  %37 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %38 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  %41 = load i32, i32* @MON_MSGLIM, align 4
  %42 = sext i32 %41 to i64
  %43 = urem i64 %40, %42
  %44 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %45 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %47 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %46, i32 0, i32 1
  %48 = call i32 @atomic_inc(i32* %47)
  %49 = call i32 @wake_up_interruptible(i32* @mon_read_wait_queue)
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.iucv_message*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
