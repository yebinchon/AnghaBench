; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_initialize_tty_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_initialize_tty_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i32, %struct.tty_driver*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.tty_driver = type { i32 }

@TTY_MAGIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@do_tty_hangup = common dso_local global i32 0, align 4
@do_SAK_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_tty_struct(%struct.tty_struct* %0, %struct.tty_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.tty_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.tty_driver* %1, %struct.tty_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = call i32 @memset(%struct.tty_struct* %7, i32 0, i32 128)
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 22
  %11 = call i32 @kref_init(i32* %10)
  %12 = load i32, i32* @TTY_MAGIC, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 21
  store i32 %12, i32* %14, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = call i32 @tty_ldisc_init(%struct.tty_struct* %15)
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 20
  store i32* null, i32** %18, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 19
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @jiffies, align 4
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 18
  store i32 %21, i32* %23, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 17
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 17
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = call i32 @tty_buffer_init(%struct.tty_struct* %30)
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 16
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 15
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 14
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 13
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 12
  %46 = load i32, i32* @do_tty_hangup, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 11
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 10
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 9
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %58 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %57, i32 0, i32 8
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %61 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %60, i32 0, i32 7
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 6
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 5
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 4
  %71 = load i32, i32* @do_SAK_work, align 4
  %72 = call i32 @INIT_WORK(i32* %70, i32 %71)
  %73 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %74 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %75 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %74, i32 0, i32 3
  store %struct.tty_driver* %73, %struct.tty_driver** %75, align 8
  %76 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %77 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %80 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %83 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %87 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @tty_line_name(%struct.tty_driver* %84, i32 %85, i32 %88)
  ret void
}

declare dso_local i32 @memset(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @tty_ldisc_init(%struct.tty_struct*) #1

declare dso_local i32 @tty_buffer_init(%struct.tty_struct*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tty_line_name(%struct.tty_driver*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
