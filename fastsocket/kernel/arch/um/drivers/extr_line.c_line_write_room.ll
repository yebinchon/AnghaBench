; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_write_room.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_write_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.line* }
%struct.line = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_write_room(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.line*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.line*, %struct.line** %7, align 8
  store %struct.line* %8, %struct.line** %3, align 8
  %9 = load %struct.line*, %struct.line** %3, align 8
  %10 = getelementptr inbounds %struct.line, %struct.line* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.line*, %struct.line** %3, align 8
  %14 = call i32 @write_room(%struct.line* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.line*, %struct.line** %3, align 8
  %16 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_room(%struct.line*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
