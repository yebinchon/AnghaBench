; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_epca.c_pc_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_epca.c_pc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.file = type { i32 }
%struct.channel = type { i64, %struct.tty_port }
%struct.tty_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @pc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.channel*, align 8
  %6 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = call %struct.channel* @verifyChannel(%struct.tty_struct* %7)
  store %struct.channel* %8, %struct.channel** %5, align 8
  %9 = load %struct.channel*, %struct.channel** %5, align 8
  %10 = icmp eq %struct.channel* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.channel*, %struct.channel** %5, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 1
  store %struct.tty_port* %14, %struct.tty_port** %6, align 8
  %15 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call i64 @tty_port_close_start(%struct.tty_port* %15, %struct.tty_struct* %16, %struct.file* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %34

21:                                               ; preds = %12
  %22 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %23 = call i32 @pc_flush_buffer(%struct.tty_struct* %22)
  %24 = load %struct.channel*, %struct.channel** %5, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = call i32 @shutdown(%struct.channel* %24, %struct.tty_struct* %25)
  %27 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = call i32 @tty_port_close_end(%struct.tty_port* %27, %struct.tty_struct* %28)
  %30 = load %struct.channel*, %struct.channel** %5, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %33 = call i32 @tty_port_tty_set(%struct.tty_port* %32, i32* null)
  br label %34

34:                                               ; preds = %21, %20, %11
  ret void
}

declare dso_local %struct.channel* @verifyChannel(%struct.tty_struct*) #1

declare dso_local i64 @tty_port_close_start(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @pc_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @shutdown(%struct.channel*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_close_end(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
