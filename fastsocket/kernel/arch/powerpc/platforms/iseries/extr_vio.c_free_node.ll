; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_free_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_free_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, i32, %struct.property* }
%struct.property = type { %struct.property* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @free_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.property*, align 8
  %4 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = getelementptr inbounds %struct.device_node, %struct.device_node* %5, i32 0, i32 2
  %7 = load %struct.property*, %struct.property** %6, align 8
  store %struct.property* %7, %struct.property** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.property*, %struct.property** %3, align 8
  %10 = icmp ne %struct.property* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.property*, %struct.property** %3, align 8
  store %struct.property* %12, %struct.property** %4, align 8
  %13 = load %struct.property*, %struct.property** %4, align 8
  %14 = getelementptr inbounds %struct.property, %struct.property* %13, i32 0, i32 0
  %15 = load %struct.property*, %struct.property** %14, align 8
  store %struct.property* %15, %struct.property** %3, align 8
  %16 = load %struct.property*, %struct.property** %4, align 8
  %17 = call i32 @free_property(%struct.property* %16)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.device_node*, %struct.device_node** %2, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @of_node_put(i32 %21)
  %23 = load %struct.device_node*, %struct.device_node** %2, align 8
  %24 = getelementptr inbounds %struct.device_node, %struct.device_node* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  %26 = call i32 @kfree(%struct.device_node* %25)
  %27 = load %struct.device_node*, %struct.device_node** %2, align 8
  %28 = call i32 @kfree(%struct.device_node* %27)
  ret void
}

declare dso_local i32 @free_property(%struct.property*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @kfree(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
