; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hso_serial* }
%struct.hso_serial = type { i64, %struct.TYPE_2__*, i32, i32, i32, %struct.tty_struct* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Closing serial port\00", align 1
@hso_serial_ref_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @hso_serial_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_serial_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.hso_serial*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  store %struct.hso_serial* %9, %struct.hso_serial** %5, align 8
  %10 = call i32 @D1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %12 = icmp eq %struct.hso_serial* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %103

14:                                               ; preds = %2
  %15 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %16 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %21 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %14
  %28 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %29 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_autopm_get_interface(i32 %32)
  br label %34

34:                                               ; preds = %27, %14
  %35 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %36 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %40 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %34
  %44 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %45 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %47 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %46, i32 0, i32 4
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %50 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %49, i32 0, i32 5
  %51 = load %struct.tty_struct*, %struct.tty_struct** %50, align 8
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = icmp eq %struct.tty_struct* %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %56 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %55, i32 0, i32 5
  %57 = load %struct.tty_struct*, %struct.tty_struct** %56, align 8
  %58 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %57, i32 0, i32 0
  store %struct.hso_serial* null, %struct.hso_serial** %58, align 8
  %59 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %60 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %59, i32 0, i32 5
  store %struct.tty_struct* null, %struct.tty_struct** %60, align 8
  %61 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %62 = call i32 @tty_kref_put(%struct.tty_struct* %61)
  br label %63

63:                                               ; preds = %54, %43
  %64 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %65 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %64, i32 0, i32 4
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %71 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = call i32 @hso_stop_serial_device(%struct.TYPE_2__* %72)
  br label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %76 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %75, i32 0, i32 3
  %77 = call i32 @tasklet_kill(i32* %76)
  %78 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %79 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %78, i32 0, i32 2
  %80 = call i32 @cancel_work_sync(i32* %79)
  br label %81

81:                                               ; preds = %74, %34
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %86 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @usb_autopm_put_interface(i32 %89)
  br label %91

91:                                               ; preds = %84, %81
  %92 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %93 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %98 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* @hso_serial_ref_free, align 4
  %102 = call i32 @kref_put(i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %91, %13
  ret void
}

declare dso_local i32 @D1(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hso_stop_serial_device(%struct.TYPE_2__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
