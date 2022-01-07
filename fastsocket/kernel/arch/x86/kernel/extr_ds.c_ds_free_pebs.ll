; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_free_pebs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_free_pebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pebs_tracer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pebs_tracer*, %struct.task_struct* }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pebs_tracer*)* @ds_free_pebs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_free_pebs(%struct.pebs_tracer* %0) #0 {
  %2 = alloca %struct.pebs_tracer*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.pebs_tracer* %0, %struct.pebs_tracer** %2, align 8
  %4 = load %struct.pebs_tracer*, %struct.pebs_tracer** %2, align 8
  %5 = getelementptr inbounds %struct.pebs_tracer, %struct.pebs_tracer* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  store %struct.task_struct* %9, %struct.task_struct** %3, align 8
  %10 = load %struct.pebs_tracer*, %struct.pebs_tracer** %2, align 8
  %11 = getelementptr inbounds %struct.pebs_tracer, %struct.pebs_tracer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.pebs_tracer*, %struct.pebs_tracer** %14, align 8
  %16 = load %struct.pebs_tracer*, %struct.pebs_tracer** %2, align 8
  %17 = icmp ne %struct.pebs_tracer* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.pebs_tracer*, %struct.pebs_tracer** %2, align 8
  %21 = getelementptr inbounds %struct.pebs_tracer, %struct.pebs_tracer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.pebs_tracer* null, %struct.pebs_tracer** %24, align 8
  %25 = load %struct.pebs_tracer*, %struct.pebs_tracer** %2, align 8
  %26 = getelementptr inbounds %struct.pebs_tracer, %struct.pebs_tracer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @ds_put_context(%struct.TYPE_4__* %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = call i32 @put_tracer(%struct.task_struct* %30)
  %32 = load %struct.pebs_tracer*, %struct.pebs_tracer** %2, align 8
  %33 = call i32 @kfree(%struct.pebs_tracer* %32)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ds_put_context(%struct.TYPE_4__*) #1

declare dso_local i32 @put_tracer(%struct.task_struct*) #1

declare dso_local i32 @kfree(%struct.pebs_tracer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
