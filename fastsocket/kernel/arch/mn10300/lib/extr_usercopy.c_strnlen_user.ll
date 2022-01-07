; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/lib/extr_usercopy.c_strnlen_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/lib/extr_usercopy.c_strnlen_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strnlen_user(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @__addr_ok(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %40

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call %struct.TYPE_4__* (...) @current_thread_info()
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %19, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %15, %12
  %26 = call %struct.TYPE_4__* (...) @current_thread_info()
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = sub nsw i64 %29, %31
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %25, %15
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call { i64, i64 } asm sideeffect "0:\09cmp $4,$0\0A\09beq 2f\0A1:\09movbu ($0,$3),$1\0A\09inc $0\0A\09cmp 0,$1\0A\09beq 3f\0A\09bra 0b\0A2:\09clr $0\0A3:\0A.section .fixup,\22ax\22\0A4:\09jmp 2b\0A.previous\0A.section __ex_table,\22a\22\0A\09.balign 4\0A\09.long 1b,4b\0A.previous\0A", "={dx},=&r,0,{ax},r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 0, i8* %34, i64 %35) #2, !srcloc !2
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  store i64 %37, i64* %6, align 8
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %33, %11
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i32 @__addr_ok(i8*) #1

declare dso_local %struct.TYPE_4__* @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 631, i32 651, i32 665, i32 691, i32 705, i32 721, i32 735, i32 749, i32 765, i32 774, i32 803, i32 819, i32 835, i32 867, i32 884, i32 903}
