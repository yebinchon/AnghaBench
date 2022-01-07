; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_dev_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_dev_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcmcia_device* @pcmcia_dev_present(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store %struct.pcmcia_device* null, %struct.pcmcia_device** %5, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = call %struct.pcmcia_device* @pcmcia_get_dev(%struct.pcmcia_device* %6)
  store %struct.pcmcia_device* %7, %struct.pcmcia_device** %4, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %9 = icmp ne %struct.pcmcia_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.pcmcia_device* null, %struct.pcmcia_device** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %34

20:                                               ; preds = %11
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %34

26:                                               ; preds = %20
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %34

32:                                               ; preds = %26
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  store %struct.pcmcia_device* %33, %struct.pcmcia_device** %5, align 8
  br label %34

34:                                               ; preds = %32, %31, %25, %19
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %36 = call i32 @pcmcia_put_dev(%struct.pcmcia_device* %35)
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  store %struct.pcmcia_device* %37, %struct.pcmcia_device** %2, align 8
  br label %38

38:                                               ; preds = %34, %10
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  ret %struct.pcmcia_device* %39
}

declare dso_local %struct.pcmcia_device* @pcmcia_get_dev(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_put_dev(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
