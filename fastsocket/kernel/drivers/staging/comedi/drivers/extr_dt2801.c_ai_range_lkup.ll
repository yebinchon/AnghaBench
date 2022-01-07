; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2801.c_ai_range_lkup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2801.c_ai_range_lkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_lrange = type { i32 }

@range_dt2801_ai_pgl_unipolar = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_dt2801_ai_pgl_bipolar = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_unipolar10 = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_bipolar10 = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_unipolar5 = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_unknown = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_lrange* (i32, i32)* @ai_range_lkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_lrange* @ai_range_lkup(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_lrange*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %18 [
    i32 0, label %7
    i32 1, label %12
    i32 2, label %17
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, %struct.comedi_lrange* @range_dt2801_ai_pgl_unipolar, %struct.comedi_lrange* @range_dt2801_ai_pgl_bipolar
  store %struct.comedi_lrange* %11, %struct.comedi_lrange** %3, align 8
  br label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, %struct.comedi_lrange* @range_unipolar10, %struct.comedi_lrange* @range_bipolar10
  store %struct.comedi_lrange* %16, %struct.comedi_lrange** %3, align 8
  br label %19

17:                                               ; preds = %2
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %3, align 8
  br label %19

18:                                               ; preds = %2
  store %struct.comedi_lrange* @range_unknown, %struct.comedi_lrange** %3, align 8
  br label %19

19:                                               ; preds = %18, %17, %12, %7
  %20 = load %struct.comedi_lrange*, %struct.comedi_lrange** %3, align 8
  ret %struct.comedi_lrange* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
