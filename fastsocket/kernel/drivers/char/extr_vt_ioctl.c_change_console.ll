; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt_ioctl.c_change_console.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt_ioctl.c_change_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@fg_console = common dso_local global i64 0, align 8
@vt_dont_switch = common dso_local global i64 0, align 8
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@VT_PROCESS = common dso_local global i64 0, align 8
@KD_GRAPHICS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_console(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %5 = icmp ne %struct.vc_data* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @fg_console, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = load i64, i64* @vt_dont_switch, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %6, %1
  br label %57

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %18 = load i64, i64* @fg_console, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.vc_data*, %struct.vc_data** %20, align 8
  store %struct.vc_data* %21, %struct.vc_data** %3, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VT_PROCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %16
  %29 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @kill_pid(i32 %36, i32 %40, i32 1)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %57

44:                                               ; preds = %28
  %45 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %46 = call i32 @reset_vc(%struct.vc_data* %45)
  br label %47

47:                                               ; preds = %44, %16
  %48 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @KD_GRAPHICS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %56 = call i32 @complete_change_console(%struct.vc_data* %55)
  br label %57

57:                                               ; preds = %54, %53, %43, %15
  ret void
}

declare dso_local i64 @kill_pid(i32, i32, i32) #1

declare dso_local i32 @reset_vc(%struct.vc_data*) #1

declare dso_local i32 @complete_change_console(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
