; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_driver = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@pcmcia_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"registering driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_register_driver(%struct.pcmcia_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmcia_driver* %0, %struct.pcmcia_driver** %3, align 8
  %5 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %6 = icmp ne %struct.pcmcia_driver* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %12 = call i32 @pcmcia_check_driver(%struct.pcmcia_driver* %11)
  %13 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32* @pcmcia_bus_type, i32** %15, align 8
  %16 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %17 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ds_dbg(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %35, i32 0, i32 0
  %37 = call i32 @driver_register(%struct.TYPE_5__* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %10
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %53

42:                                               ; preds = %10
  %43 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %44 = call i32 @pcmcia_create_newid_file(%struct.pcmcia_driver* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %48, i32 0, i32 0
  %50 = call i32 @driver_unregister(%struct.TYPE_5__* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %40, %7
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @pcmcia_check_driver(%struct.pcmcia_driver*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ds_dbg(i32, i8*, i32) #1

declare dso_local i32 @driver_register(%struct.TYPE_5__*) #1

declare dso_local i32 @pcmcia_create_newid_file(%struct.pcmcia_driver*) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
