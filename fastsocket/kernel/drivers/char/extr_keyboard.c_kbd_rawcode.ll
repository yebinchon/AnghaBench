; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_kbd_rawcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_kbd_rawcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i32 }
%struct.TYPE_5__ = type { i64 }

@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@fg_console = common dso_local global i64 0, align 8
@kbd_table = common dso_local global %struct.TYPE_5__* null, align 8
@kbd = common dso_local global %struct.TYPE_5__* null, align 8
@VC_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @kbd_rawcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kbd_rawcode(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.vc_data*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %5 = load i64, i64* @fg_console, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  store %struct.vc_data* %8, %struct.vc_data** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kbd_table, align 8
  %10 = load i64, i64* @fg_console, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %10
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** @kbd, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kbd, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VC_RAW, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = load i8, i8* %2, align 1
  %20 = call i32 @put_queue(%struct.vc_data* %18, i8 zeroext %19)
  br label %21

21:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @put_queue(%struct.vc_data*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
