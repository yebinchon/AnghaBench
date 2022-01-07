; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_string.c_strcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_string.c_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call { i32, i32, i8*, i8* } asm sideeffect "0: clst $2,$3\0A   jo   0b\0A   je   1f\0A   ic   $0,0($2)\0A   ic   $1,0($3)\0A   sr   $0,$1\0A1:", "={dx},={ax},={ax},={ax},0,1,2,3,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %7, i32 %8, i8* %9, i8* %10) #1, !srcloc !2
  %12 = extractvalue { i32, i32, i8*, i8* } %11, 0
  %13 = extractvalue { i32, i32, i8*, i8* } %11, 1
  %14 = extractvalue { i32, i32, i8*, i8* } %11, 2
  %15 = extractvalue { i32, i32, i8*, i8* } %11, 3
  store i32 %12, i32* %6, align 4
  store i32 %13, i32* %5, align 4
  store i8* %14, i8** %3, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 239, i32 266, i32 289, i32 312, i32 341, i32 370, i32 396}
