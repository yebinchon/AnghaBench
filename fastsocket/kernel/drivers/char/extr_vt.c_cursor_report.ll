; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_cursor_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_cursor_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i64 }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"\1B[%d;%dR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.tty_struct*)* @cursor_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cursor_report(%struct.vc_data* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca [40 x i8], align 16
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %7 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ %18, %14 ], [ 1, %19 ]
  %22 = add nsw i32 %9, %21
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = call i32 @respond_string(i8* %28, %struct.tty_struct* %29)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @respond_string(i8*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
