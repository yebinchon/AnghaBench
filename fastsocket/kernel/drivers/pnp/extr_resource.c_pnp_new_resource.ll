; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_resource.c_pnp_new_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_resource.c_pnp_new_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_resource = type { i32 }
%struct.pnp_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnp_resource* (%struct.pnp_dev*)* @pnp_new_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_resource*, align 8
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pnp_resource* @kzalloc(i32 4, i32 %5)
  store %struct.pnp_resource* %6, %struct.pnp_resource** %4, align 8
  %7 = load %struct.pnp_resource*, %struct.pnp_resource** %4, align 8
  %8 = icmp ne %struct.pnp_resource* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.pnp_resource* null, %struct.pnp_resource** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.pnp_resource*, %struct.pnp_resource** %4, align 8
  %12 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %11, i32 0, i32 0
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 0
  %15 = call i32 @list_add_tail(i32* %12, i32* %14)
  %16 = load %struct.pnp_resource*, %struct.pnp_resource** %4, align 8
  store %struct.pnp_resource* %16, %struct.pnp_resource** %2, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.pnp_resource*, %struct.pnp_resource** %2, align 8
  ret %struct.pnp_resource* %18
}

declare dso_local %struct.pnp_resource* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
