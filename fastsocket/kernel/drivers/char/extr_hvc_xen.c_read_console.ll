; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_xen.c_read_console.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_xen.c_read_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_interface = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @read_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_console(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xencons_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call %struct.xencons_interface* (...) @xencons_interface()
  store %struct.xencons_interface* %11, %struct.xencons_interface** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %13 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %16 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @mb()
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %22, 8
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  br label %26

26:                                               ; preds = %36, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  %37 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %38 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %43 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @MASK_XENCONS_IDX(i32 %40, i8* %44)
  %46 = getelementptr inbounds i8, i8* %39, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 %47, i8* %52, align 1
  br label %26

53:                                               ; preds = %34
  %54 = call i32 (...) @mb()
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.xencons_interface*, %struct.xencons_interface** %7, align 8
  %57 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = call i32 (...) @notify_daemon()
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local %struct.xencons_interface* @xencons_interface(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @MASK_XENCONS_IDX(i32, i8*) #1

declare dso_local i32 @notify_daemon(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
