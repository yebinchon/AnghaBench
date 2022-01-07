; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt_ioctl.c_reset_vc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt_ioctl.c_reset_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vc_data = type { i64, i32, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }

@KD_TEXT = common dso_local global i32 0, align 4
@default_utf8 = common dso_local global i64 0, align 8
@VC_UNICODE = common dso_local global i32 0, align 4
@VC_XLATE = common dso_local global i32 0, align 4
@kbd_table = common dso_local global %struct.TYPE_4__* null, align 8
@VT_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_vc(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load i32, i32* @KD_TEXT, align 4
  %4 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 8
  %6 = load i64, i64* @default_utf8, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @VC_UNICODE, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @VC_XLATE, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kbd_table, align 8
  %15 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %13, i32* %19, align 4
  %20 = load i32, i32* @VT_AUTO, align 4
  %21 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @put_pid(i32* %38)
  %40 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 8
  %44 = call i32 (...) @in_interrupt()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %12
  %47 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %48 = call i32 @reset_palette(%struct.vc_data* %47)
  br label %49

49:                                               ; preds = %46, %12
  ret void
}

declare dso_local i32 @put_pid(i32*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @reset_palette(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
