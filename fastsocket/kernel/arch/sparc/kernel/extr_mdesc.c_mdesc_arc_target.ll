; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_mdesc.c_mdesc_arc_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_mdesc.c_mdesc_arc_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { i32 }
%struct.mdesc_elem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdesc_arc_target(%struct.mdesc_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.mdesc_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdesc_elem*, align 8
  %6 = alloca %struct.mdesc_elem*, align 8
  store %struct.mdesc_handle* %0, %struct.mdesc_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mdesc_handle*, %struct.mdesc_handle** %3, align 8
  %8 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %7, i32 0, i32 0
  %9 = call %struct.mdesc_elem* @node_block(i32* %8)
  store %struct.mdesc_elem* %9, %struct.mdesc_elem** %6, align 8
  %10 = load %struct.mdesc_elem*, %struct.mdesc_elem** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %10, i64 %12
  store %struct.mdesc_elem* %13, %struct.mdesc_elem** %5, align 8
  %14 = load %struct.mdesc_elem*, %struct.mdesc_elem** %5, align 8
  %15 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

declare dso_local %struct.mdesc_elem* @node_block(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
