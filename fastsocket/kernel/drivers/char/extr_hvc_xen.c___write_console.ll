; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_xen.c___write_console.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_xen.c___write_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_interface = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @__write_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_console(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xencons_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call %struct.xencons_interface* (...) @xencons_interface()
  store %struct.xencons_interface* %9, %struct.xencons_interface** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.xencons_interface*, %struct.xencons_interface** %5, align 8
  %11 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.xencons_interface*, %struct.xencons_interface** %5, align 8
  %14 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = call i32 (...) @mb()
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 8
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  br label %24

24:                                               ; preds = %36, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 8
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi i1 [ false, %24 ], [ %33, %28 ]
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load %struct.xencons_interface*, %struct.xencons_interface** %5, align 8
  %44 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load %struct.xencons_interface*, %struct.xencons_interface** %5, align 8
  %49 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @MASK_XENCONS_IDX(i32 %46, i8* %50)
  %52 = getelementptr inbounds i8, i8* %45, i64 %51
  store i8 %42, i8* %52, align 1
  br label %24

53:                                               ; preds = %34
  %54 = call i32 (...) @wmb()
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.xencons_interface*, %struct.xencons_interface** %5, align 8
  %57 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 (...) @notify_daemon()
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.xencons_interface* @xencons_interface(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @MASK_XENCONS_IDX(i32, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @notify_daemon(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
