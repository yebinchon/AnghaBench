; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_iucv_private = type { i64, i64, i32, i64, %struct.iucv_path* }
%struct.iucv_path = type { i32 }

@IUCV_CONNECTED = common dso_local global i64 0, align 8
@IUCV_SEVERED = common dso_local global i64 0, align 8
@TTY_CLOSED = common dso_local global i64 0, align 8
@TTY_OPENED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvc_iucv_private*)* @hvc_iucv_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvc_iucv_hangup(%struct.hvc_iucv_private* %0) #0 {
  %2 = alloca %struct.hvc_iucv_private*, align 8
  %3 = alloca %struct.iucv_path*, align 8
  store %struct.hvc_iucv_private* %0, %struct.hvc_iucv_private** %2, align 8
  store %struct.iucv_path* null, %struct.iucv_path** %3, align 8
  %4 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %5 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %4, i32 0, i32 2
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %8 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IUCV_CONNECTED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %14 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %13, i32 0, i32 4
  %15 = load %struct.iucv_path*, %struct.iucv_path** %14, align 8
  store %struct.iucv_path* %15, %struct.iucv_path** %3, align 8
  %16 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %17 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %16, i32 0, i32 4
  store %struct.iucv_path* null, %struct.iucv_path** %17, align 8
  %18 = load i64, i64* @IUCV_SEVERED, align 8
  %19 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %20 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %22 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TTY_CLOSED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %28 = call i32 @hvc_iucv_cleanup(%struct.hvc_iucv_private* %27)
  br label %43

29:                                               ; preds = %12
  %30 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %31 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %36 = call i32 @hvc_iucv_cleanup(%struct.hvc_iucv_private* %35)
  %37 = load i64, i64* @TTY_OPENED, align 8
  %38 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %39 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %42

40:                                               ; preds = %29
  %41 = call i32 (...) @hvc_kick()
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %46 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %49 = icmp ne %struct.iucv_path* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %52 = call i32 @iucv_path_sever(%struct.iucv_path* %51, i32* null)
  %53 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %54 = call i32 @iucv_path_free(%struct.iucv_path* %53)
  br label %55

55:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hvc_iucv_cleanup(%struct.hvc_iucv_private*) #1

declare dso_local i32 @hvc_kick(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iucv_path_sever(%struct.iucv_path*, i32*) #1

declare dso_local i32 @iucv_path_free(%struct.iucv_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
