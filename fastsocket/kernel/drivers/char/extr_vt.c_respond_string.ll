; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_respond_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_respond_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.tty_struct*)* @respond_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @respond_string(i8* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i32 @tty_insert_flip_char(%struct.tty_struct* %10, i8 signext %12, i32 0)
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %5

16:                                               ; preds = %5
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = call i32 @con_schedule_flip(%struct.tty_struct* %17)
  ret void
}

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 signext, i32) #1

declare dso_local i32 @con_schedule_flip(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
