; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_tty3215_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_tty3215_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i64 }
%struct.file = type { i32 }
%struct.raw3215_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @tty3215_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3215_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.raw3215_info*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.raw3215_info*
  store %struct.raw3215_info* %9, %struct.raw3215_info** %5, align 8
  %10 = load %struct.raw3215_info*, %struct.raw3215_info** %5, align 8
  %11 = icmp eq %struct.raw3215_info* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  br label %30

18:                                               ; preds = %12
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.raw3215_info*, %struct.raw3215_info** %5, align 8
  %22 = call i32 @raw3215_shutdown(%struct.raw3215_info* %21)
  %23 = load %struct.raw3215_info*, %struct.raw3215_info** %5, align 8
  %24 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.raw3215_info*, %struct.raw3215_info** %5, align 8
  %26 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %25, i32 0, i32 0
  %27 = call i32 @tasklet_kill(i32* %26)
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @raw3215_shutdown(%struct.raw3215_info*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
