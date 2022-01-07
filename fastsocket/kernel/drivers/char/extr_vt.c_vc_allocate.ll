; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_vc_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_vc_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vc_data*, i32 }
%struct.vc_data = type { i32, i32, i32, i32, i32* }
%struct.vt_notifier_param = type { %struct.vc_data* }

@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_NR_USER_CONSOLES = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc_SAK = common dso_local global i32 0, align 4
@vt_notifier_list = common dso_local global i32 0, align 4
@VT_ALLOCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_allocate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.vt_notifier_param, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %102

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %20 = icmp ne %struct.vc_data* %19, null
  br i1 %20, label %101, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MAX_NR_USER_CONSOLES, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %102

32:                                               ; preds = %25, %21
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.vc_data* @kzalloc(i32 24, i32 %33)
  store %struct.vc_data* %34, %struct.vc_data** %4, align 8
  %35 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %5, i32 0, i32 0
  store %struct.vc_data* %34, %struct.vc_data** %35, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %37 = icmp ne %struct.vc_data* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %102

41:                                               ; preds = %32
  %42 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.vc_data* %42, %struct.vc_data** %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* @vc_SAK, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @visual_init(%struct.vc_data* %55, i32 %56, i32 1)
  %58 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %41
  %64 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %65 = call i32 @con_set_default_unimap(%struct.vc_data* %64)
  br label %66

66:                                               ; preds = %63, %41
  %67 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32 @kmalloc(i32 %69, i32 %70)
  %72 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %73 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %75 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %66
  %79 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %80 = call i32 @kfree(%struct.vc_data* %79)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %82 = load i32, i32* %3, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store %struct.vc_data* null, %struct.vc_data** %85, align 8
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %102

88:                                               ; preds = %66
  %89 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %90 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %94 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @vc_init(%struct.vc_data* %89, i32 %92, i32 %95, i32 1)
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @vcs_make_sysfs(i32 %97)
  %99 = load i32, i32* @VT_ALLOCATE, align 4
  %100 = call i32 @atomic_notifier_call_chain(i32* @vt_notifier_list, i32 %99, %struct.vt_notifier_param* %5)
  br label %101

101:                                              ; preds = %88, %13
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %78, %38, %29, %10
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.vc_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @visual_init(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @con_set_default_unimap(%struct.vc_data*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.vc_data*) #1

declare dso_local i32 @vc_init(%struct.vc_data*, i32, i32, i32) #1

declare dso_local i32 @vcs_make_sysfs(i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.vt_notifier_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
