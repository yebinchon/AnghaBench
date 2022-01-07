; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_proc.c_nubus_proc_detach_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_proc.c_nubus_proc_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_dev = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@proc_bus_nubus_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nubus_proc_detach_device(%struct.nubus_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nubus_dev*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  store %struct.nubus_dev* %0, %struct.nubus_dev** %3, align 8
  %5 = load %struct.nubus_dev*, %struct.nubus_dev** %3, align 8
  %6 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %5, i32 0, i32 0
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  store %struct.proc_dir_entry* %7, %struct.proc_dir_entry** %4, align 8
  %8 = icmp ne %struct.proc_dir_entry* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %11 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %10, i32 0, i32 1
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %9
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %19 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @proc_bus_nubus_dir, align 4
  %22 = call i32 @remove_proc_entry(i32 %20, i32 %21)
  %23 = load %struct.nubus_dev*, %struct.nubus_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nubus_dev, %struct.nubus_dev* %23, i32 0, i32 0
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %24, align 8
  br label %25

25:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
