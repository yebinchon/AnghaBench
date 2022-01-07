; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_alloc_tc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_alloc_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.tc = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vpecontrol = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc* (i32)* @alloc_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc* @alloc_tc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.tc* @kzalloc(i32 12, i32 %4)
  store %struct.tc* %5, %struct.tc** %3, align 8
  %6 = icmp eq %struct.tc* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.tc*, %struct.tc** %3, align 8
  %10 = getelementptr inbounds %struct.tc, %struct.tc* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.tc*, %struct.tc** %3, align 8
  %14 = getelementptr inbounds %struct.tc, %struct.tc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpecontrol, i32 0, i32 0))
  %16 = load %struct.tc*, %struct.tc** %3, align 8
  %17 = getelementptr inbounds %struct.tc, %struct.tc* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpecontrol, i32 0, i32 1))
  %19 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpecontrol, i32 0, i32 0))
  br label %20

20:                                               ; preds = %8, %7
  %21 = load %struct.tc*, %struct.tc** %3, align 8
  ret %struct.tc* %21
}

declare dso_local %struct.tc* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
