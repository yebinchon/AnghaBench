; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_detach_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_detach_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.TYPE_2__*, %struct.property*, %struct.device_node* }
%struct.TYPE_2__ = type { i32 }
%struct.property = type { %struct.property*, i32 }

@pSeries_reconfig_chain = common dso_local global i32 0, align 4
@PSERIES_RECONFIG_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlpar_detach_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = getelementptr inbounds %struct.device_node, %struct.device_node* %5, i32 0, i32 2
  %7 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %7, %struct.device_node** %3, align 8
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = getelementptr inbounds %struct.device_node, %struct.device_node* %8, i32 0, i32 1
  %10 = load %struct.property*, %struct.property** %9, align 8
  store %struct.property* %10, %struct.property** %4, align 8
  %11 = load i32, i32* @PSERIES_RECONFIG_REMOVE, align 4
  %12 = load %struct.device_node*, %struct.device_node** %2, align 8
  %13 = call i32 @blocking_notifier_call_chain(i32* @pSeries_reconfig_chain, i32 %11, %struct.device_node* %12)
  %14 = load %struct.device_node*, %struct.device_node** %2, align 8
  %15 = call i32 @of_detach_node(%struct.device_node* %14)
  %16 = load %struct.device_node*, %struct.device_node** %2, align 8
  %17 = call i32 @of_node_put(%struct.device_node* %16)
  ret i32 0
}

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.device_node*) #1

declare dso_local i32 @of_detach_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
