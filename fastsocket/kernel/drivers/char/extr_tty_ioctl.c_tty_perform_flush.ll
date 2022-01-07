; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_tty_perform_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_tty_perform_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_perform_flush(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tty_ldisc*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = call i32 @tty_check_change(%struct.tty_struct* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* %15)
  store %struct.tty_ldisc* %16, %struct.tty_ldisc** %6, align 8
  %17 = load i64, i64* %5, align 8
  switch i64 %17, label %59 [
    i64 130, label %18
    i64 129, label %37
    i64 128, label %56
  ]

18:                                               ; preds = %14
  %19 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %20 = icmp ne %struct.tty_ldisc* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %23 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %25, align 8
  %27 = icmp ne i32 (%struct.tty_struct*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %30 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %32, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = call i32 %33(%struct.tty_struct* %34)
  br label %36

36:                                               ; preds = %28, %21, %18
  br label %64

37:                                               ; preds = %14
  %38 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %39 = icmp ne %struct.tty_ldisc* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %42 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %44, align 8
  %46 = icmp ne i32 (%struct.tty_struct*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %49 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %51, align 8
  %53 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %54 = call i32 %52(%struct.tty_struct* %53)
  br label %55

55:                                               ; preds = %47, %40, %37
  br label %56

56:                                               ; preds = %14, %55
  %57 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %58 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %57)
  br label %64

59:                                               ; preds = %14
  %60 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %61 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %56, %36
  %65 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %66 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %59, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @tty_check_change(%struct.tty_struct*) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
