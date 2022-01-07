; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_release_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_release_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcmcia_device = type { %struct.TYPE_2__*, %struct.pcmcia_device*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"releasing device\0A\00", align 1
@pcmcia_release_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @pcmcia_release_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmcia_release_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pcmcia_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.pcmcia_device* @to_pcmcia_dev(%struct.device* %4)
  store %struct.pcmcia_device* %5, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call i32 @ds_dev_dbg(i32 1, %struct.device* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pcmcia_put_socket(i32 %10)
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 1
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %13, align 8
  %15 = call i32 @kfree(%struct.pcmcia_device* %14)
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* @pcmcia_release_function, align 4
  %21 = call i32 @kref_put(i32* %19, i32 %20)
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = call i32 @kfree(%struct.pcmcia_device* %22)
  ret void
}

declare dso_local %struct.pcmcia_device* @to_pcmcia_dev(%struct.device*) #1

declare dso_local i32 @ds_dev_dbg(i32, %struct.device*, i8*) #1

declare dso_local i32 @pcmcia_put_socket(i32) #1

declare dso_local i32 @kfree(%struct.pcmcia_device*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
