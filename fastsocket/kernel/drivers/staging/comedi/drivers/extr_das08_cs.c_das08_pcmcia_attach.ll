; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das08_cs.c_das08_pcmcia_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das08_cs.c_das08_pcmcia_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.local_info_t* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.local_info_t = type { %struct.pcmcia_device* }

@.str = private unnamed_addr constant [23 x i8] c"das08_pcmcia_attach()\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@cur_dev = common dso_local global %struct.pcmcia_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @das08_pcmcia_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das08_pcmcia_attach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.local_info_t*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.local_info_t* @kzalloc(i32 8, i32 %6)
  store %struct.local_info_t* %7, %struct.local_info_t** %4, align 8
  %8 = load %struct.local_info_t*, %struct.local_info_t** %4, align 8
  %9 = icmp ne %struct.local_info_t* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load %struct.local_info_t*, %struct.local_info_t** %4, align 8
  %16 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %15, i32 0, i32 0
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %16, align 8
  %17 = load %struct.local_info_t*, %struct.local_info_t** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 2
  store %struct.local_info_t* %17, %struct.local_info_t** %19, align 8
  %20 = load i32, i32* @IRQ_TYPE_EXCLUSIVE, align 4
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %26 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %29 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  store %struct.pcmcia_device* %38, %struct.pcmcia_device** @cur_dev, align 8
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %40 = call i32 @das08_pcmcia_config(%struct.pcmcia_device* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %13, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local %struct.local_info_t* @kzalloc(i32, i32) #1

declare dso_local i32 @das08_pcmcia_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
