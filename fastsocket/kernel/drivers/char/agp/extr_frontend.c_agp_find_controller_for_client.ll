; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_find_controller_for_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_find_controller_for_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.agp_controller* }
%struct.agp_controller = type { %struct.agp_controller* }

@agp_fe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_controller* (i32)* @agp_find_controller_for_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_controller* @agp_find_controller_for_client(i32 %0) #0 {
  %2 = alloca %struct.agp_controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_controller*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.agp_controller*, %struct.agp_controller** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0), align 8
  store %struct.agp_controller* %5, %struct.agp_controller** %4, align 8
  br label %6

6:                                                ; preds = %16, %1
  %7 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %8 = icmp ne %struct.agp_controller* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @agp_find_client_in_controller(%struct.agp_controller* %10, i32 %11)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  store %struct.agp_controller* %15, %struct.agp_controller** %2, align 8
  br label %21

16:                                               ; preds = %9
  %17 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %18 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %17, i32 0, i32 0
  %19 = load %struct.agp_controller*, %struct.agp_controller** %18, align 8
  store %struct.agp_controller* %19, %struct.agp_controller** %4, align 8
  br label %6

20:                                               ; preds = %6
  store %struct.agp_controller* null, %struct.agp_controller** %2, align 8
  br label %21

21:                                               ; preds = %20, %14
  %22 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  ret %struct.agp_controller* %22
}

declare dso_local i32* @agp_find_client_in_controller(%struct.agp_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
