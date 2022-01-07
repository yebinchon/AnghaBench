; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_brlcommit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_brlcommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@k_brlcommit.chords = internal global i64 0, align 8
@k_brlcommit.committed = internal global i32 0, align 4
@brl_nbchords = common dso_local global i64 0, align 8
@BRL_UC_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i8)* @k_brlcommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_brlcommit(%struct.vc_data* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %7 = load i64, i64* @brl_nbchords, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %11 = load i32, i32* @BRL_UC_ROW, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %11, %12
  %14 = load i8, i8* %6, align 1
  %15 = call i32 @k_deadunicode(%struct.vc_data* %10, i32 %13, i8 signext %14)
  br label %33

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @k_brlcommit.committed, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @k_brlcommit.committed, align 4
  %20 = load i64, i64* @k_brlcommit.chords, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* @k_brlcommit.chords, align 8
  %22 = load i64, i64* @k_brlcommit.chords, align 8
  %23 = load i64, i64* @brl_nbchords, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %27 = load i32, i32* @BRL_UC_ROW, align 4
  %28 = load i32, i32* @k_brlcommit.committed, align 4
  %29 = or i32 %27, %28
  %30 = load i8, i8* %6, align 1
  %31 = call i32 @k_unicode(%struct.vc_data* %26, i32 %29, i8 signext %30)
  store i64 0, i64* @k_brlcommit.chords, align 8
  store i32 0, i32* @k_brlcommit.committed, align 4
  br label %32

32:                                               ; preds = %25, %16
  br label %33

33:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @k_deadunicode(%struct.vc_data*, i32, i8 signext) #1

declare dso_local i32 @k_unicode(%struct.vc_data*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
