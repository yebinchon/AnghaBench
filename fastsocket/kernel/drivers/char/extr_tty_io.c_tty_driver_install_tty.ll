; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_driver_install_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_driver_install_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { %struct.tty_struct**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.tty_struct = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @tty_driver_install_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_driver_install_tty(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %11 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.tty_driver*, %struct.tty_struct*)**
  %15 = load i32 (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_driver*, %struct.tty_struct*)** %14, align 8
  %16 = icmp ne i32 (%struct.tty_driver*, %struct.tty_struct*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %19 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.tty_driver*, %struct.tty_struct*)**
  %23 = load i32 (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_driver*, %struct.tty_struct*)** %22, align 8
  %24 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %26 = call i32 %23(%struct.tty_driver* %24, %struct.tty_struct* %25)
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %29 = call i64 @tty_init_termios(%struct.tty_struct* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %33 = call i32 @tty_driver_kref_get(%struct.tty_driver* %32)
  %34 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %39 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %40 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %39, i32 0, i32 0
  %41 = load %struct.tty_struct**, %struct.tty_struct*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.tty_struct*, %struct.tty_struct** %41, i64 %43
  store %struct.tty_struct* %38, %struct.tty_struct** %44, align 8
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %27
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %31, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @tty_init_termios(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_kref_get(%struct.tty_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
