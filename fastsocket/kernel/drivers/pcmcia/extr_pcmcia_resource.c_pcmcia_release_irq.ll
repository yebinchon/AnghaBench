; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_release_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, %struct.TYPE_9__*, %struct.pcmcia_socket* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pcmcia_socket = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"IRQ attributes must match assigned ones\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"IRQ must match assigned one\0A\00", align 1
@CONFIG_IRQ_REQ = common dso_local global i32 0, align 4
@IRQ_HANDLE_PRESENT = common dso_local global i32 0, align 4
@pcmcia_used_irq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_8__*)* @pcmcia_release_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_release_irq(%struct.pcmcia_device* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 2
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %9, align 8
  store %struct.pcmcia_socket* %10, %struct.pcmcia_socket** %6, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CONFIG_LOCKED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %94

33:                                               ; preds = %21
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %44 = call i32 @ds_dbg(%struct.pcmcia_socket* %43, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %94

47:                                               ; preds = %33
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %58 = call i32 @ds_dbg(%struct.pcmcia_socket* %57, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %94

61:                                               ; preds = %47
  %62 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %63 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i32, i32* @CONFIG_IRQ_REQ, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %76 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %68, %61
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IRQ_HANDLE_PRESENT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @free_irq(i64 %88, i32 %91)
  br label %93

93:                                               ; preds = %85, %78
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %56, %42, %30, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @ds_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @free_irq(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
