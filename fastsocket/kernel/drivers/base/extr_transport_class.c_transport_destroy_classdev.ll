; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_transport_class.c_transport_destroy_classdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_transport_class.c_transport_destroy_classdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_container = type { i32 }
%struct.device = type { i32 }
%struct.transport_class = type { i64 }

@anon_transport_dummy_function = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attribute_container*, %struct.device*, %struct.device*)* @transport_destroy_classdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_destroy_classdev(%struct.attribute_container* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.transport_class*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %8 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %9 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.transport_class* @class_to_transport_class(i32 %10)
  store %struct.transport_class* %11, %struct.transport_class** %7, align 8
  %12 = load %struct.transport_class*, %struct.transport_class** %7, align 8
  %13 = getelementptr inbounds %struct.transport_class, %struct.transport_class* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @anon_transport_dummy_function, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @put_device(%struct.device* %18)
  br label %20

20:                                               ; preds = %17, %3
  ret void
}

declare dso_local %struct.transport_class* @class_to_transport_class(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
