; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_set_if_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_set_if_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFF_UP = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16)* @set_if_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_if_down(i8* %0, i16 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i8*, i8** %3, align 8
  %6 = load i16, i16* %4, align 2
  %7 = sext i16 %6 to i32
  %8 = load i16, i16* @IFF_UP, align 2
  %9 = sext i16 %8 to i32
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = trunc i32 %11 to i16
  %13 = call i32 @set_if_flags(i8* %5, i16 signext %12)
  ret i32 %13
}

declare dso_local i32 @set_if_flags(i8*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
