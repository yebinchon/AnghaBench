; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_insert_file_private.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_insert_file_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.agp_file_private* }
%struct.agp_file_private = type { %struct.agp_file_private*, %struct.agp_file_private* }

@agp_fe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_file_private*)* @agp_insert_file_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_insert_file_private(%struct.agp_file_private* %0) #0 {
  %2 = alloca %struct.agp_file_private*, align 8
  %3 = alloca %struct.agp_file_private*, align 8
  store %struct.agp_file_private* %0, %struct.agp_file_private** %2, align 8
  %4 = load %struct.agp_file_private*, %struct.agp_file_private** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0), align 8
  store %struct.agp_file_private* %4, %struct.agp_file_private** %3, align 8
  %5 = load %struct.agp_file_private*, %struct.agp_file_private** %3, align 8
  %6 = icmp ne %struct.agp_file_private* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.agp_file_private*, %struct.agp_file_private** %2, align 8
  %9 = load %struct.agp_file_private*, %struct.agp_file_private** %3, align 8
  %10 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %9, i32 0, i32 1
  store %struct.agp_file_private* %8, %struct.agp_file_private** %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.agp_file_private*, %struct.agp_file_private** %3, align 8
  %13 = load %struct.agp_file_private*, %struct.agp_file_private** %2, align 8
  %14 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %13, i32 0, i32 0
  store %struct.agp_file_private* %12, %struct.agp_file_private** %14, align 8
  %15 = load %struct.agp_file_private*, %struct.agp_file_private** %2, align 8
  store %struct.agp_file_private* %15, %struct.agp_file_private** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
