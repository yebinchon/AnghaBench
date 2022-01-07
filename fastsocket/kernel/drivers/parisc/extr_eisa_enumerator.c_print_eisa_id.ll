; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_eisa_enumerator.c_print_eisa_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_eisa_enumerator.c_print_eisa_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%s%02X%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @print_eisa_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_eisa_id(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 255
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  store i32 %15, i32* %4, align 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 3
  store i8 0, i8* %16, align 1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 31
  %19 = add nsw i32 64, %18
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 2
  store i8 %20, i8* %21, align 1
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 5
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 31
  %26 = add nsw i32 64, %25
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 1
  store i8 %27, i8* %28, align 1
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 5
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 31
  %33 = add nsw i32 64, %32
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  store i8 %34, i8* %35, align 1
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 5
  store i32 %37, i32* %4, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
