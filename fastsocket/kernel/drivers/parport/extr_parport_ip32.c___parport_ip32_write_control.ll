; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ip32.c___parport_ip32_write_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ip32.c___parport_ip32_write_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.parport_ip32_private* }
%struct.parport_ip32_private = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, i32)* @__parport_ip32_write_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__parport_ip32_write_control(%struct.parport* %0, i32 %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.parport_ip32_private*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = getelementptr inbounds %struct.parport, %struct.parport* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %9, align 8
  store %struct.parport_ip32_private* %10, %struct.parport_ip32_private** %5, align 8
  %11 = load %struct.parport*, %struct.parport** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %5, align 8
  %14 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CHECK_EXTRA_BITS(%struct.parport* %11, i32 %12, i32 %15)
  %17 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %5, align 8
  %18 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %5, align 8
  %24 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writeb(i32 %22, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %5, align 8
  %30 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @CHECK_EXTRA_BITS(%struct.parport*, i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
