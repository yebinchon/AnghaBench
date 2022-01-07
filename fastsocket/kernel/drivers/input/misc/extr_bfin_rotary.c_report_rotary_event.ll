; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_bfin_rotary.c_report_rotary_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_bfin_rotary.c_report_rotary_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfin_rot = type { i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfin_rot*, i32)* @report_rotary_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_rotary_event(%struct.bfin_rot* %0, i32 %1) #0 {
  %3 = alloca %struct.bfin_rot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  store %struct.bfin_rot* %0, %struct.bfin_rot** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfin_rot*, %struct.bfin_rot** %3, align 8
  %7 = getelementptr inbounds %struct.bfin_rot, %struct.bfin_rot* %6, i32 0, i32 3
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load %struct.bfin_rot*, %struct.bfin_rot** %3, align 8
  %10 = getelementptr inbounds %struct.bfin_rot, %struct.bfin_rot* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.bfin_rot*, %struct.bfin_rot** %3, align 8
  %19 = getelementptr inbounds %struct.bfin_rot, %struct.bfin_rot* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.bfin_rot*, %struct.bfin_rot** %3, align 8
  %23 = getelementptr inbounds %struct.bfin_rot, %struct.bfin_rot* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  %27 = call i32 @report_key_event(%struct.input_dev* %14, i32 %26)
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = load %struct.bfin_rot*, %struct.bfin_rot** %3, align 8
  %31 = getelementptr inbounds %struct.bfin_rot, %struct.bfin_rot* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @input_report_rel(%struct.input_dev* %29, i32 %32, i32 %33)
  %35 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %36 = call i32 @input_sync(%struct.input_dev* %35)
  br label %37

37:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @report_key_event(%struct.input_dev*, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
