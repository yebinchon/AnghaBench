; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/boot/lib/extr_zmem.c_zalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/boot/lib/extr_zmem.c_zalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avail_ram = common dso_local global i8* null, align 8
@end_avail = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i8*, i8** @avail_ram, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %5, 7
  %7 = and i32 %6, -8
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i8*, i8** @avail_ram, align 8
  %10 = zext i32 %8 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  store i8* %11, i8** @avail_ram, align 8
  %12 = load i8*, i8** @avail_ram, align 8
  %13 = load i8*, i8** @end_avail, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @exit() #2
  unreachable

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

; Function Attrs: noreturn
declare dso_local i32 @exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
