; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_get_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_get_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }

@early_put_chars = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @get_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chars(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @early_put_chars, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.port* @find_port_by_vtermno(i32 %14)
  store %struct.port* %15, %struct.port** %8, align 8
  %16 = load %struct.port*, %struct.port** %8, align 8
  %17 = icmp ne %struct.port* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EPIPE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load %struct.port*, %struct.port** %8, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.port*, %struct.port** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @fill_readbuf(%struct.port* %29, i8* %30, i32 %31, i32 0)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %21, %18, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.port* @find_port_by_vtermno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fill_readbuf(%struct.port*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
