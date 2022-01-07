; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_get_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_get_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_cmnd* @scsi_get_command(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 0
  %10 = call i32 @get_device(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %3, align 8
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.scsi_cmnd* @__scsi_get_command(i32 %16, i32 %17)
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %6, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = icmp ne %struct.scsi_cmnd* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %13
  %25 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 2
  store %struct.scsi_device* %25, %struct.scsi_device** %27, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 1
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  %37 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 2
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 1
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %13
  %48 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 0
  %50 = call i32 @put_device(i32* %49)
  br label %51

51:                                               ; preds = %47, %24
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %52, %struct.scsi_cmnd** %3, align 8
  br label %53

53:                                               ; preds = %51, %12
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  ret %struct.scsi_cmnd* %54
}

declare dso_local i32 @get_device(i32*) #1

declare dso_local %struct.scsi_cmnd* @__scsi_get_command(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
