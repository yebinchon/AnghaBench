; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_alloc_vpe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_vpe.c_alloc_vpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vpe = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vpecontrol = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vpe* (i32)* @alloc_vpe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vpe* @alloc_vpe(i32 %0) #0 {
  %2 = alloca %struct.vpe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpe*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.vpe* @kzalloc(i32 16, i32 %5)
  store %struct.vpe* %6, %struct.vpe** %4, align 8
  %7 = icmp eq %struct.vpe* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.vpe* null, %struct.vpe** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.vpe*, %struct.vpe** %4, align 8
  %11 = getelementptr inbounds %struct.vpe, %struct.vpe* %10, i32 0, i32 3
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpecontrol, i32 0, i32 0))
  %14 = load %struct.vpe*, %struct.vpe** %4, align 8
  %15 = getelementptr inbounds %struct.vpe, %struct.vpe* %14, i32 0, i32 2
  %16 = call i32 @list_add_tail(i32* %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpecontrol, i32 0, i32 1))
  %17 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpecontrol, i32 0, i32 0))
  %18 = load %struct.vpe*, %struct.vpe** %4, align 8
  %19 = getelementptr inbounds %struct.vpe, %struct.vpe* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.vpe*, %struct.vpe** %4, align 8
  %23 = getelementptr inbounds %struct.vpe, %struct.vpe* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vpe*, %struct.vpe** %4, align 8
  store %struct.vpe* %24, %struct.vpe** %2, align 8
  br label %25

25:                                               ; preds = %9, %8
  %26 = load %struct.vpe*, %struct.vpe** %2, align 8
  ret %struct.vpe* %26
}

declare dso_local %struct.vpe* @kzalloc(i32, i32) #1

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
