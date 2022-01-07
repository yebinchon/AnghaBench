; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_unicode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vc_data = type { i32 }

@diacr = common dso_local global i32 0, align 4
@dead_key_next = common dso_local global i64 0, align 8
@kbd = common dso_local global %struct.TYPE_2__* null, align 8
@VC_UNICODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i8)* @k_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_unicode(%struct.vc_data* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load i8, i8* %6, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %43

11:                                               ; preds = %3
  %12 = load i32, i32* @diacr, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @handle_diacr(%struct.vc_data* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i64, i64* @dead_key_next, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  store i64 0, i64* @dead_key_next, align 8
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* @diacr, align 4
  br label %43

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbd, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VC_UNICODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @to_utf8(%struct.vc_data* %30, i32 %31)
  br label %43

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @conv_uni_to_8bit(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @put_queue(%struct.vc_data* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %10, %21, %42, %29
  ret void
}

declare dso_local i32 @handle_diacr(%struct.vc_data*, i32) #1

declare dso_local i32 @to_utf8(%struct.vc_data*, i32) #1

declare dso_local i32 @conv_uni_to_8bit(i32) #1

declare dso_local i32 @put_queue(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
