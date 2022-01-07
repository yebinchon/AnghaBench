; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.mxser_port* }
%struct.mxser_port = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.file = type { i32 }

@MXSER_PORTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @mxser_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.mxser_port*, align 8
  %6 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  store %struct.mxser_port* %9, %struct.mxser_port** %5, align 8
  %10 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %11 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %6, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MXSER_PORTS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = call i64 @tty_port_close_start(%struct.tty_port* %19, %struct.tty_struct* %20, %struct.file* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %36

25:                                               ; preds = %18
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %27 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %28 = call i32 @mxser_close_port(%struct.tty_struct* %26, %struct.tty_port* %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = call i32 @mxser_flush_buffer(%struct.tty_struct* %29)
  %31 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = call i32 @tty_port_close_end(%struct.tty_port* %31, %struct.tty_struct* %32)
  %34 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %35 = call i32 @tty_port_tty_set(%struct.tty_port* %34, i32* null)
  br label %36

36:                                               ; preds = %25, %24, %17
  ret void
}

declare dso_local i64 @tty_port_close_start(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @mxser_close_port(%struct.tty_struct*, %struct.tty_port*) #1

declare dso_local i32 @mxser_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_close_end(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
