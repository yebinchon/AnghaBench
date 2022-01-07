; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_iov_consume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_iov_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iovec*, i32, i32)* @iov_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iov_consume(%struct.iovec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %52, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = load %struct.iovec*, %struct.iovec** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i64 %16
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.iovec*, %struct.iovec** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i64 %25
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %13
  %30 = load i32, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i32 [ %28, %22 ], [ %30, %29 ]
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.iovec*, %struct.iovec** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %36
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, %33
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.iovec*, %struct.iovec** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %44
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %47, %41
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %9

55:                                               ; preds = %9
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
