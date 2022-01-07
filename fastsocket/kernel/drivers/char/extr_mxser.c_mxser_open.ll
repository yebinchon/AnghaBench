; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.mxser_port* }
%struct.mxser_port = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tty_struct = type { i32, %struct.mxser_port* }
%struct.file = type { i32 }

@MXSER_PORTS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mxser_boards = common dso_local global %struct.TYPE_5__* null, align 8
@MXSER_PORTS_PER_BOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @mxser_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @MXSER_PORTS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MXSER_PORTS, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %88

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mxser_boards, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MXSER_PORTS_PER_BOARD, align 4
  %31 = sdiv i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.mxser_port*, %struct.mxser_port** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MXSER_PORTS_PER_BOARD, align 4
  %38 = srem i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %35, i64 %39
  store %struct.mxser_port* %40, %struct.mxser_port** %6, align 8
  %41 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %42 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %27
  %49 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %50 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 1
  store %struct.mxser_port* %49, %struct.mxser_port** %51, align 8
  %52 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %53 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %52, i32 0, i32 0
  %54 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %55 = call i32 @tty_port_tty_set(%struct.TYPE_4__* %53, %struct.tty_struct* %54)
  %56 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %57 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %62 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %67 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %72 = call i32 @mxser_startup(%struct.tty_struct* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %48
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %88

77:                                               ; preds = %48
  %78 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %79 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %78, i32 0, i32 0
  %80 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = call i32 @tty_port_block_til_ready(%struct.TYPE_4__* %79, %struct.tty_struct* %80, %struct.file* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %85, %75, %45, %24, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_4__*, %struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mxser_startup(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_block_til_ready(%struct.TYPE_4__*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
