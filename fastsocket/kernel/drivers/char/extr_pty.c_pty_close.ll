; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_pty.c_pty_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_pty.c_pty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.tty_struct = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.file = type { i32 }

@PTY_TYPE_MASTER = common dso_local global i64 0, align 8
@TTY_OTHER_CLOSED = common dso_local global i32 0, align 4
@ptm_driver = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @pty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = icmp ne %struct.tty_struct* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %82

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %17
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 6
  %34 = call i32 @wake_up_interruptible(i32* %33)
  %35 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 5
  %37 = call i32 @wake_up_interruptible(i32* %36)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %31
  br label %82

45:                                               ; preds = %31
  %46 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @TTY_OTHER_CLOSED, align 4
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i32 @set_bit(i32 %50, i32* %54)
  %56 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @wake_up_interruptible(i32* %59)
  %61 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %62 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @wake_up_interruptible(i32* %64)
  %66 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %45
  %74 = load i32, i32* @TTY_OTHER_CLOSED, align 4
  %75 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %76 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %75, i32 0, i32 3
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  %78 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @tty_vhangup(%struct.TYPE_4__* %80)
  br label %82

82:                                               ; preds = %29, %44, %73, %45
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tty_vhangup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
