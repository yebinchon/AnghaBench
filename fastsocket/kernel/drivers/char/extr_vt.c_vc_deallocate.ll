; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_vc_deallocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_vc_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { %struct.vc_data*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.vc_data*)* }
%struct.vt_notifier_param = type { %struct.vc_data* }

@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@vt_notifier_list = common dso_local global i32 0, align 4
@VT_DEALLOCATE = common dso_local global i32 0, align 4
@MIN_NR_CONSOLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_deallocate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.vt_notifier_param, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @vc_cons_allocated(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.vc_data*, %struct.vc_data** %14, align 8
  store %struct.vc_data* %15, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %4, i32 0, i32 0
  %17 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  store %struct.vc_data* %17, %struct.vc_data** %16, align 8
  %18 = load i32, i32* @VT_DEALLOCATE, align 4
  %19 = call i32 @atomic_notifier_call_chain(i32* @vt_notifier_list, i32 %18, %struct.vt_notifier_param* %4)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @vcs_remove_sysfs(i32 %20)
  %22 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %25, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = call i32 %26(%struct.vc_data* %27)
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @put_pid(i32 %31)
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @module_put(i32 %37)
  %39 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 0
  %41 = load %struct.vc_data*, %struct.vc_data** %40, align 8
  %42 = call i32 @kfree(%struct.vc_data* %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @MIN_NR_CONSOLES, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %9
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = call i32 @kfree(%struct.vc_data* %47)
  br label %49

49:                                               ; preds = %46, %9
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %51 = load i32, i32* %2, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.vc_data* null, %struct.vc_data** %54, align 8
  br label %55

55:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i64 @vc_cons_allocated(i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.vt_notifier_param*) #1

declare dso_local i32 @vcs_remove_sysfs(i32) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
