; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gs_port* }
%struct.gs_port = type { i32, i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gs_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.gs_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = call i32 (...) @func_enter()
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.gs_port*, %struct.gs_port** %9, align 8
  store %struct.gs_port* %10, %struct.gs_port** %6, align 8
  %11 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %12 = icmp ne %struct.gs_port* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %16 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %25 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %28 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %35 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %34, i32 0, i32 3
  %36 = call i32 @mutex_unlock(i32* %35)
  store i32 0, i32* %3, align 4
  br label %62

37:                                               ; preds = %23
  %38 = load i8, i8* %5, align 1
  %39 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %40 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %43 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  store i8 %38, i8* %47, align 1
  %48 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %51 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %55 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %59 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %58, i32 0, i32 3
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = call i32 (...) @func_exit()
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %37, %33, %22, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
