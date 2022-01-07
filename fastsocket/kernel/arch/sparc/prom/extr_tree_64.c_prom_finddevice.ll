; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/prom/extr_tree_64.c_prom_finddevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/prom/extr_tree_64.c_prom_finddevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prom_finddev_name = common dso_local global i32 0, align 4
@P1275_ARG_IN_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_finddevice(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

7:                                                ; preds = %1
  %8 = load i32, i32* @prom_finddev_name, align 4
  %9 = load i32, i32* @P1275_ARG_IN_STRING, align 4
  %10 = call i32 @P1275_ARG(i32 0, i32 %9)
  %11 = call i32 @P1275_INOUT(i32 1, i32 1)
  %12 = or i32 %10, %11
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @p1275_cmd(i32 %8, i32 %12, i8* %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %7, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @p1275_cmd(i32, i32, i8*) #1

declare dso_local i32 @P1275_ARG(i32, i32) #1

declare dso_local i32 @P1275_INOUT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
