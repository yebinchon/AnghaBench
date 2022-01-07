; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_con_font_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_con_font_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.console_font_op = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @con_font_op(%struct.vc_data* %0, %struct.console_font_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.console_font_op*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.console_font_op* %1, %struct.console_font_op** %5, align 8
  %6 = load %struct.console_font_op*, %struct.console_font_op** %5, align 8
  %7 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 130, label %13
    i32 128, label %17
    i32 131, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %11 = load %struct.console_font_op*, %struct.console_font_op** %5, align 8
  %12 = call i32 @con_font_set(%struct.vc_data* %10, %struct.console_font_op* %11)
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %15 = load %struct.console_font_op*, %struct.console_font_op** %5, align 8
  %16 = call i32 @con_font_get(%struct.vc_data* %14, %struct.console_font_op* %15)
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %19 = load %struct.console_font_op*, %struct.console_font_op** %5, align 8
  %20 = call i32 @con_font_default(%struct.vc_data* %18, %struct.console_font_op* %19)
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %23 = load %struct.console_font_op*, %struct.console_font_op** %5, align 8
  %24 = call i32 @con_font_copy(%struct.vc_data* %22, %struct.console_font_op* %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %21, %17, %13, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @con_font_set(%struct.vc_data*, %struct.console_font_op*) #1

declare dso_local i32 @con_font_get(%struct.vc_data*, %struct.console_font_op*) #1

declare dso_local i32 @con_font_default(%struct.vc_data*, %struct.console_font_op*) #1

declare dso_local i32 @con_font_copy(%struct.vc_data*, %struct.console_font_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
