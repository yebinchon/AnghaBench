; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_spectrum_cs.c_spectrum_cs_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_spectrum_cs.c_spectrum_cs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.orinoco_private* }
%struct.orinoco_private = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i64*)*, i32 (i32*, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @spectrum_cs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spectrum_cs_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca i64, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 0
  %7 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  store %struct.orinoco_private* %7, %struct.orinoco_private** %3, align 8
  %8 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %9 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %12, align 8
  %14 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %15 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %14, i32 0, i32 1
  %16 = call i32 %13(i32* %15, i64* %4)
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %18 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %22 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %25, align 8
  %27 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %28 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %27, i32 0, i32 1
  %29 = call i32 %26(i32* %28, i64* %4)
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %31 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %30)
  %32 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %33 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %1
  %38 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %39 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ioport_unmap(i64 %41)
  br label %43

43:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @ioport_unmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
