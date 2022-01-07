; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serport.c_serport_serio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serport.c_serport_serio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.serport* }
%struct.serport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @serport_serio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serport_serio_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.serport*, align 8
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.serio*, %struct.serio** %3, align 8
  %7 = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 0
  %8 = load %struct.serport*, %struct.serport** %7, align 8
  store %struct.serport* %8, %struct.serport** %5, align 8
  %9 = load %struct.serport*, %struct.serport** %5, align 8
  %10 = getelementptr inbounds %struct.serport, %struct.serport* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_4__*, i8*, i32)*, i32 (%struct.TYPE_4__*, i8*, i32)** %14, align 8
  %16 = load %struct.serport*, %struct.serport** %5, align 8
  %17 = getelementptr inbounds %struct.serport, %struct.serport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 %15(%struct.TYPE_4__* %18, i8* %4, i32 1)
  %20 = icmp ne i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = sub nsw i32 0, %21
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
