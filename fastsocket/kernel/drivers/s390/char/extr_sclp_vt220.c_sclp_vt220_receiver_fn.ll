; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_receiver_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_receiver_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuf_header = type { i32 }

@sclp_vt220_tty = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuf_header*)* @sclp_vt220_receiver_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_vt220_receiver_fn(%struct.evbuf_header* %0) #0 {
  %2 = alloca %struct.evbuf_header*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.evbuf_header* %0, %struct.evbuf_header** %2, align 8
  %5 = load i32*, i32** @sclp_vt220_tty, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %10 = ptrtoint %struct.evbuf_header* %9 to i64
  %11 = add i64 %10, 4
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %3, align 8
  %13 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %14 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %34 [
    i32 129, label %22
    i32 128, label %22
    i32 130, label %23
  ]

22:                                               ; preds = %8, %8
  br label %34

23:                                               ; preds = %8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = load i32*, i32** @sclp_vt220_tty, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @tty_insert_flip_string(i32* %28, i8* %29, i32 %30)
  %32 = load i32*, i32** @sclp_vt220_tty, align 8
  %33 = call i32 @tty_flip_buffer_push(i32* %32)
  br label %34

34:                                               ; preds = %7, %8, %23, %22
  ret void
}

declare dso_local i32 @tty_insert_flip_string(i32*, i8*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
