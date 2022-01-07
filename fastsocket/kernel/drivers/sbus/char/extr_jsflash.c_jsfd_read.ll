; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_jsflash.c_jsfd_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_jsflash.c_jsfd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.byte4 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @jsfd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsfd_read(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.byte4, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %11, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp uge i64 %9, 4
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %12, 4
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @jsf_inl(i64 %14)
  %16 = bitcast %union.byte4* %7 to i32*
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast %union.byte4* %7 to [4 x i8]*
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %20 = call i32 @memcpy(i8* %17, i8* %19, i32 4)
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 4
  store i64 %22, i64* %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %24, i8** %4, align 8
  br label %8

25:                                               ; preds = %8
  ret void
}

declare dso_local i32 @jsf_inl(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
