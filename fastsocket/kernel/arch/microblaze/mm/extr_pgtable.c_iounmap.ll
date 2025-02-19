; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/mm/extr_pgtable.c_iounmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/mm/extr_pgtable.c_iounmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@high_memory = common dso_local global i8* null, align 8
@ioremap_bot = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iounmap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** @high_memory, align 8
  %5 = icmp ugt i8* %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* @ioremap_bot, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load i64, i64* @PAGE_MASK, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %12, %14
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @vfree(i8* %16)
  br label %18

18:                                               ; preds = %11, %6, %1
  ret void
}

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
