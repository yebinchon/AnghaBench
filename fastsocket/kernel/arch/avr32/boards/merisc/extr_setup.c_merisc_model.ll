; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/boards/merisc/extr_setup.c_merisc_model.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/boards/merisc/extr_setup.c_merisc_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@merisc_board_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"500-01\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"BT\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @merisc_model() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @merisc_board_id, align 4
  switch i32 %2, label %5 [
    i32 0, label %3
    i32 1, label %3
    i32 2, label %4
  ]

3:                                                ; preds = %0, %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %6

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %6

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %6

6:                                                ; preds = %5, %4, %3
  %7 = load i8*, i8** %1, align 8
  ret i8* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
