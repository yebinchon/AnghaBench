; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_eeprom_read(%struct.ipath_devdata* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %11 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock_interruptible(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ipath_eeprom_internal_read(%struct.ipath_devdata* %16, i32 %17, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %22 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  br label %24

24:                                               ; preds = %15, %4
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @ipath_eeprom_internal_read(%struct.ipath_devdata*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
