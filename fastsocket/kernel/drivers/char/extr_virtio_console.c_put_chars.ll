; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_put_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_put_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.scatterlist = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @put_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_chars(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port*, align 8
  %9 = alloca [1 x %struct.scatterlist], align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i64 @unlikely(i32 (i32, i8*, i32)* @early_put_chars)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @early_put_chars(i32 %13, i8* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.port* @find_port_by_vtermno(i32 %18)
  store %struct.port* %19, %struct.port** %8, align 8
  %20 = load %struct.port*, %struct.port** %8, align 8
  %21 = icmp ne %struct.port* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EPIPE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %17
  %26 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %9, i64 0, i64 0
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @sg_init_one(%struct.scatterlist* %26, i8* %27, i32 %28)
  %30 = load %struct.port*, %struct.port** %8, align 8
  %31 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %9, i64 0, i64 0
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @__send_to_port(%struct.port* %30, %struct.scatterlist* %31, i32 1, i32 %32, i8* %33, i32 0)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %25, %22, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @unlikely(i32 (i32, i8*, i32)*) #1

declare dso_local i32 @early_put_chars(i32, i8*, i32) #1

declare dso_local %struct.port* @find_port_by_vtermno(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @__send_to_port(%struct.port*, %struct.scatterlist*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
