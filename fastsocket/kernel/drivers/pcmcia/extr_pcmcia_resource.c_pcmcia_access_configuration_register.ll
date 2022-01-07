; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_access_configuration_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_access_configuration_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_4__*, %struct.pcmcia_socket* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pcmcia_socket = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_access_configuration_register(%struct.pcmcia_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %11 = icmp ne %struct.pcmcia_device* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %12
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 1
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %22, align 8
  store %struct.pcmcia_socket* %23, %struct.pcmcia_socket** %6, align 8
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CONFIG_LOCKED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %20
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %62 [
    i32 129, label %48
    i32 128, label %55
  ]

48:                                               ; preds = %36
  %49 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @pcmcia_read_cis_mem(%struct.pcmcia_socket* %49, i32 1, i32 %50, i32 1, i32* %9)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %65

55:                                               ; preds = %36
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %59, i32 1, i32 %60, i32 1, i32* %9)
  br label %65

62:                                               ; preds = %36
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %55, %48
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62, %33, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @pcmcia_read_cis_mem(%struct.pcmcia_socket*, i32, i32, i32, i32*) #1

declare dso_local i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
