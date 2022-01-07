; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_pmi.c_pmi_unregister_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_pmi.c_pmi_unregister_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pmi_handler = type { i32 }

@data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"pmi: unregistering handler %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmi_unregister_handler(%struct.pmi_handler* %0) #0 {
  %2 = alloca %struct.pmi_handler*, align 8
  store %struct.pmi_handler* %0, %struct.pmi_handler** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  %7 = load %struct.pmi_handler*, %struct.pmi_handler** %2, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.pmi_handler* %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.pmi_handler*, %struct.pmi_handler** %2, align 8
  %13 = getelementptr inbounds %struct.pmi_handler, %struct.pmi_handler* %12, i32 0, i32 0
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  br label %18

18:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.pmi_handler*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
