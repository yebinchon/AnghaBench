; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_support.c_pnp_eisa_id_to_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_support.c_pnp_eisa_id_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnp_eisa_id_to_string(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @be32_to_cpu(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 26
  %9 = and i32 %8, 63
  %10 = add nsw i32 65, %9
  %11 = sub nsw i32 %10, 1
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %14, align 1
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 21
  %17 = and i32 %16, 31
  %18 = add nsw i32 65, %17
  %19 = sub nsw i32 %18, 1
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 31
  %26 = add nsw i32 65, %25
  %27 = sub nsw i32 %26, 1
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 8
  %33 = call signext i8 @hex_asc_hi(i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 8
  %38 = call signext i8 @hex_asc_lo(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %3, align 4
  %42 = call signext i8 @hex_asc_hi(i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %3, align 4
  %46 = call signext i8 @hex_asc_lo(i32 %45)
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  store i8 %46, i8* %48, align 1
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  store i8 0, i8* %50, align 1
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local signext i8 @hex_asc_hi(i32) #1

declare dso_local signext i8 @hex_asc_lo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
