; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_try_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_try_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvcs_struct = type { i32, i32, i32*, %struct.tty_struct*, %struct.TYPE_2__* }
%struct.tty_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }

@HVCS_TRY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvcs_struct*)* @hvcs_try_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvcs_try_write(%struct.hvcs_struct* %0) #0 {
  %2 = alloca %struct.hvcs_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.hvcs_struct* %0, %struct.hvcs_struct** %2, align 8
  %6 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %7 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %12 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %11, i32 0, i32 3
  %13 = load %struct.tty_struct*, %struct.tty_struct** %12, align 8
  store %struct.tty_struct* %13, %struct.tty_struct** %4, align 8
  %14 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %15 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HVCS_TRY_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %23 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %27 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hvc_put_chars(i32 %21, i32* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %20
  %33 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %34 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @HVCS_TRY_WRITE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.hvcs_struct*, %struct.hvcs_struct** %2, align 8
  %38 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = icmp ne %struct.tty_struct* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = call i32 @tty_wakeup(%struct.tty_struct* %44)
  br label %46

46:                                               ; preds = %43, %32
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32 @hvc_put_chars(i32, i32*, i32) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
