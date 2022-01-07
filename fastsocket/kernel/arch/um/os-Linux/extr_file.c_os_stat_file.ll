; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_file.c_os_stat_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_file.c_os_stat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uml_stat = type { i32 }
%struct.stat64 = type { i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_stat_file(i8* %0, %struct.uml_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uml_stat*, align 8
  %6 = alloca %struct.stat64, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.uml_stat* %1, %struct.uml_stat** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @stat64(i8* %8, %struct.stat64* %6)
  store i32 %9, i32* %7, align 4
  %10 = call i32 @CATCH_EINTR(i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.uml_stat*, %struct.uml_stat** %5, align 8
  %18 = icmp ne %struct.uml_stat* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.uml_stat*, %struct.uml_stat** %5, align 8
  %21 = call i32 @copy_stat(%struct.uml_stat* %20, %struct.stat64* %6)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @CATCH_EINTR(i32) #1

declare dso_local i32 @stat64(i8*, %struct.stat64*) #1

declare dso_local i32 @copy_stat(%struct.uml_stat*, %struct.stat64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
