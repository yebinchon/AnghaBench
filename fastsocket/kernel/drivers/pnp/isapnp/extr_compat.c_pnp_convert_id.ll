; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_compat.c_pnp_convert_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_compat.c_pnp_convert_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%c%c%c%x%x%x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i16, i16)* @pnp_convert_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_convert_id(i8* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load i8*, i8** %4, align 8
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 2
  %11 = and i32 %10, 63
  %12 = add nsw i32 65, %11
  %13 = sub nsw i32 %12, 1
  %14 = trunc i32 %13 to i8
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 3
  %18 = shl i32 %17, 3
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = ashr i32 %20, 13
  %22 = and i32 %21, 7
  %23 = or i32 %18, %22
  %24 = add nsw i32 65, %23
  %25 = sub nsw i32 %24, 1
  %26 = trunc i32 %25 to i8
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 31
  %31 = add nsw i32 65, %30
  %32 = sub nsw i32 %31, 1
  %33 = trunc i32 %32 to i8
  %34 = load i16, i16* %6, align 2
  %35 = zext i16 %34 to i32
  %36 = ashr i32 %35, 4
  %37 = and i32 %36, 15
  %38 = trunc i32 %37 to i16
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 15
  %42 = trunc i32 %41 to i16
  %43 = load i16, i16* %6, align 2
  %44 = zext i16 %43 to i32
  %45 = ashr i32 %44, 12
  %46 = and i32 %45, 15
  %47 = trunc i32 %46 to i16
  %48 = load i16, i16* %6, align 2
  %49 = zext i16 %48 to i32
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 15
  %52 = trunc i32 %51 to i16
  %53 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8 signext %14, i8 signext %26, i8 signext %33, i16 zeroext %38, i16 zeroext %42, i16 zeroext %47, i16 zeroext %52)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i8 signext, i8 signext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
