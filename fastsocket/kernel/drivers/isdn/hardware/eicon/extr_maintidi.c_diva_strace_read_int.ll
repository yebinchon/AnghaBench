; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_diva_strace_read_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_diva_strace_read_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @diva_strace_read_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diva_strace_read_int(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = bitcast i64* %9 to i8*
  store i8* %10, i8** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8* %16, i8** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %33 [
    i32 1, label %20
    i32 2, label %24
    i32 4, label %29
  ]

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %7, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @GET_WORD(i8* %25)
  %27 = trunc i64 %26 to i16
  %28 = sext i16 %27 to i32
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @GET_DWORD(i8* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %34

33:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %37

34:                                               ; preds = %29, %24, %20
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @GET_WORD(i8*) #1

declare dso_local i64 @GET_DWORD(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
