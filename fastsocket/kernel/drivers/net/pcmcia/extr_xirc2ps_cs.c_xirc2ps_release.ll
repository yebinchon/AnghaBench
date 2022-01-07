; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_xirc2ps_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_xirc2ps_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.net_device*, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"release(0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @xirc2ps_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xirc2ps_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %5)
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.TYPE_3__* @netdev_priv(%struct.net_device* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 2048
  %26 = call i32 @iounmap(i64 %25)
  br label %27

27:                                               ; preds = %21, %11
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %30 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %29)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, %struct.pcmcia_device*) #1

declare dso_local %struct.TYPE_3__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
