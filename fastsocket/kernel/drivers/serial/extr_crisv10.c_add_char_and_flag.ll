; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_add_char_and_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_add_char_and_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.etrax_recv_buffer = type { i32, i8, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e100_serial*, i8, i8)* @add_char_and_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_char_and_flag(%struct.e100_serial* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e100_serial*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.etrax_recv_buffer*, align 8
  %9 = alloca %struct.tty_struct*, align 8
  store %struct.e100_serial* %0, %struct.e100_serial** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %11 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = call %struct.etrax_recv_buffer* @alloc_recv_buffer(i32 4)
  store %struct.etrax_recv_buffer* %15, %struct.etrax_recv_buffer** %8, align 8
  %16 = icmp ne %struct.etrax_recv_buffer* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %52

18:                                               ; preds = %14
  %19 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %8, align 8
  %20 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i8, i8* %7, align 1
  %22 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %8, align 8
  %23 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %22, i32 0, i32 1
  store i8 %21, i8* %23, align 4
  %24 = load i8, i8* %6, align 1
  %25 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %8, align 8
  %26 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %24, i8* %28, align 1
  %29 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %30 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %8, align 8
  %31 = call i32 @append_recv_buffer(%struct.e100_serial* %29, %struct.etrax_recv_buffer* %30)
  %32 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %33 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %51

37:                                               ; preds = %3
  %38 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %39 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.tty_struct*, %struct.tty_struct** %40, align 8
  store %struct.tty_struct* %41, %struct.tty_struct** %9, align 8
  %42 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %43 = load i8, i8* %6, align 1
  %44 = load i8, i8* %7, align 1
  %45 = call i32 @tty_insert_flip_char(%struct.tty_struct* %42, i8 zeroext %43, i8 zeroext %44)
  %46 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %47 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %37, %18
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.etrax_recv_buffer* @alloc_recv_buffer(i32) #1

declare dso_local i32 @append_recv_buffer(%struct.e100_serial*, %struct.etrax_recv_buffer*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
