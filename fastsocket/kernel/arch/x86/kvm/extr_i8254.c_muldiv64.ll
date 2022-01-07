; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_muldiv64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_muldiv64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @muldiv64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @muldiv64(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.anon, align 8
  %8 = alloca %union.anon, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = bitcast %union.anon* %7 to i32*
  store i32 %11, i32* %12, align 8
  %13 = bitcast %union.anon* %7 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = mul nsw i32 %16, %18
  store i32 %19, i32* %9, align 4
  %20 = bitcast %union.anon* %7 to %struct.anon*
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load i8*, i8** %5, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = mul nsw i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 32
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @div64_u64(i32 %31, i8* %32)
  %34 = bitcast %union.anon* %8 to %struct.anon*
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @mod_64(i32 %36, i8* %37)
  %39 = shl i32 %38, 32
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %39, %40
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @div64_u64(i32 %41, i8* %42)
  %44 = bitcast %union.anon* %8 to %struct.anon*
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = bitcast %union.anon* %8 to i32*
  %47 = load i32, i32* %46, align 8
  ret i32 %47
}

declare dso_local i8* @div64_u64(i32, i8*) #1

declare dso_local i32 @mod_64(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
