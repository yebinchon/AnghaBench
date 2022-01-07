; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_console.c_rs_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_console.c_rs_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.timeval = type { i32, i32 }

@timer_lock = common dso_local global i32 0, align 4
@SYS_select_one = common dso_local global i32 0, align 4
@XTISS_SELECT_ONE_READ = common dso_local global i64 0, align 8
@SYS_read = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@serial_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SERIAL_TIMER_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rs_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.tty_struct*
  store %struct.tty_struct* %8, %struct.tty_struct** %3, align 8
  %9 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %10 = call i32 @spin_lock(i32* @timer_lock)
  br label %11

11:                                               ; preds = %17, %1
  %12 = load i32, i32* @SYS_select_one, align 4
  %13 = load i64, i64* @XTISS_SELECT_ONE_READ, align 8
  %14 = ptrtoint %struct.timeval* %4 to i32
  %15 = call i64 @__simc(i32 %12, i32 0, i64 %13, i32 %14, i32 0, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load i32, i32* @SYS_read, align 4
  %19 = ptrtoint i8* %6 to i64
  %20 = call i64 @__simc(i32 %18, i32 0, i64 %19, i32 1, i32 0, i32 0)
  %21 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %22 = load i8, i8* %6, align 1
  %23 = load i32, i32* @TTY_NORMAL, align 4
  %24 = call i32 @tty_insert_flip_char(%struct.tty_struct* %21, i8 zeroext %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* @SERIAL_TIMER_VALUE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @mod_timer(i32* @serial_timer, i64 %36)
  %38 = call i32 @spin_unlock(i32* @timer_lock)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i64 @__simc(i32, i32, i64, i32, i32, i32) #2

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i32) #2

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

declare dso_local i32 @spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
